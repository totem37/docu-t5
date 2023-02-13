import spacy
from spacy.tokens import Doc
import coreferee
import json
from tqdm import tqdm
import os
import fcntl
import stanza
import argparse


nlp_tokenize = stanza.Pipeline('en', processors='tokenize', tokenize_pretokenized = False, use_gpu=False)
# nlp_pretokenize = stanza.Pipeline('en', processors='tokenize', tokenize_pretokenized = True,use_gpu=True)

class WhitespaceTokenizer:
    def __init__(self, vocab):
        self.vocab = vocab

    def __call__(self, text):
        words = text.split(" ")
        spaces = [True] * len(words)
        # Avoid zero-length tokens
        for i, word in enumerate(words):
            if word == "":
                words[i] = " "
                spaces[i] = False
        # Remove the final trailing space
        if words[-1] == " ":
            words = words[0:-1]
            spaces = spaces[0:-1]
        else:
            spaces[-1] = False

        return Doc(self.vocab, words=words, spaces=spaces)

def init_nlp():
    nlp = spacy.load('en_core_web_trf')
    nlp.tokenizer = WhitespaceTokenizer(nlp.vocab)
    nlp.add_pipe('coreferee')
    return nlp

def find_turn_idx(id, turn_list, len_text_list):
    total_length = 0
    for idx, length in enumerate(len_text_list):
        total_length += length
        if id < total_length and id >= total_length-length:
            return turn_list[idx], id-total_length+length
    return turn_list[0], id

def text_list2coref_json(dataset, output_path, mode, nlp):
    new_res=[]
    for idx, entry in tqdm(enumerate(dataset)):
        final_preprocessed_text_list = dataset[idx]
        text_list = " ".join([i for item in final_preprocessed_text_list for i in item[1]])
        turn_list = [item[0] for item in final_preprocessed_text_list]
        len_text_list = [item[2] for item in final_preprocessed_text_list]
        
        doc = nlp(text_list)
        coref_dict = {}
        for chain in doc._.coref_chains:
            key = chain.index
            used_turn = set()
            coref_dict[key] = {}
            coref_dict[key]["group"] = []
            for li in [list(_) for _ in chain]:
                new_list = []
                for idx in li:
                    item = find_turn_idx(idx, turn_list, len_text_list)
                    item_dict = {"turn": item[0], "position": item[1], "ori": idx}
                    used_turn.add(item[0])
                new_list.append(item_dict)
                coref_dict[key]["group"].append(new_list)
            coref_dict[key]["used_turn"] = list(used_turn)
        new_entry = {}
        new_entry["coref"] = coref_dict
        new_entry["text_list"] = text_list
        new_res.append(new_entry)
    with open(output_path,"w") as dump_f:
        json.dump(new_res,dump_f) 



def pipeline(entry: dict, db: dict, dataset_name: str, data_idx: int):
        entry["final_preprocessed_text_list"] = []
        if dataset_name in ["cosql", "sparc"]:
            entry =  multi_turn_pipeline(entry, db, dataset_name, data_idx)
        elif dataset_name in ["spider", "spider_dk"]:
            entry = single_turn_pipeline(entry, db, dataset_name, data_idx)
        return entry


def quote_normalization(dataset_name, data_idx, question):
    """ Normalize all usage of quotation marks into a separate \" """
    new_question, quotation_marks, change_marks = [], ["'", '"', '`', '鈥�', '鈥�', '鈥�', '鈥�', "鈥樷€�", "鈥欌€�"], ['``', "''"]
    idx = 0
    while idx < len(question):
        tok=question[idx]
        # if dataset_name == "cosql" and data_idx == 441 and tok=="''voluptatem":
        #     new_question.append(tok) 
        #     idx += 1
        #     new_question.append(question[idx])
        #     idx += 1
        #     continue
        if dataset_name == "sparc":
            tok = " ".join(tok.split("\ufeff")).strip()
        for mark in change_marks:
            tok = tok.replace(mark, "\"")
        if len(tok) > 2 and tok[0] in quotation_marks and tok[-1] in quotation_marks:
            new_question += [tok[0], tok[1:-1], tok[-1]]
        elif len(tok) > 2 and tok[0] in quotation_marks:
            new_question += [tok[0], tok[1:]]
        elif len(tok) > 2 and tok[-1] in quotation_marks:
            new_question += [tok[:-1], tok[-1]]
        elif tok in quotation_marks:
            new_question.append(tok)
        elif len(tok) == 2 and tok[0] in quotation_marks:
            # special case: the length of entity value is 1
            if idx + 1 < len(question) and question[idx + 1] in quotation_marks:
                new_question += [tok[0], tok[1]]
            else:
                new_question.append(tok)
        else:
            new_question.append(tok)
        idx += 1
    return new_question

def preprocess_question(entry: dict, db: dict, turn: str, dataset_name: str, data_idx: int):
    """ Tokenize, lemmatize, lowercase question"""
    if turn == "-1":
        if entry.get('question_toks'):
            question = " ".join(quote_normalization(dataset_name, data_idx, entry["question_toks"]))
        else:
            question = entry['question']
        entry["processed_text_list"] = [question]
    elif "#" in turn:
        parent_idx, son_idx = turn.split("#")
        question = entry["processed_text_list"][int(parent_idx)][int(son_idx)]
    else:
        question = entry["processed_text_list"][int(turn)][0]
    question = question.strip()
    if turn == "0":
        doc = nlp_tokenize(question)
        text = [w.text for s in doc.sentences for w in s.words]
    else:
        # doc = nlp_pretokenize(question)
        text = question.split(" ")
    # raw_toks = [w.text.lower() for s in doc.sentences for w in s.words]
    # toks = [w.lemma.lower() for s in doc.sentences for w in s.words]
    # entry[f'raw_question_toks_{turn}'] = raw_toks
    # entry[f'ori_toks_{turn}'] = [w.text for s in doc.sentences for w in s.words]
    # entry[f'processed_question_toks_{turn}'] = toks
    entry["final_preprocessed_text_list"].append([turn, text, len(text)])
    return entry

def init_dataset_path(data_base_dir, dataset_name, mode):
    db_dir = os.path.join(data_base_dir, "ori_dataset", dataset_name, "database")
    table_data_path=os.path.join(data_base_dir, "ori_dataset", dataset_name, "tables.json")
    table_out_path=os.path.join(data_base_dir, "preprocessed_dataset", dataset_name, "tables.bin")
    if mode == "train":
        if dataset_name == "spider":
            dataset_path=os.path.join(data_base_dir, "ori_dataset", dataset_name, "train_spider.json")
        elif dataset_name == "cosql":
            db_dir = os.path.join(data_base_dir, "ori_dataset", "cosql_dataset", "database")
            dataset_path=os.path.join(data_base_dir, "ori_dataset", "cosql_dataset/sql_state_tracking/", "cosql_train.json")
            table_data_path=os.path.join(data_base_dir, "ori_dataset", "cosql_dataset", "tables.json")
            
        elif dataset_name == "sparc":
            dataset_path=os.path.join(data_base_dir, "ori_dataset", dataset_name, "train.json")
        else:
            raise NotImplementedError
        # dataset_output_path_base=os.path.join(data_base_dir, "preprocessed_dataset", dataset_name, "train.bin")
    elif mode == "dev": 
        if dataset_name in ["spider", "sparc"] :
            dataset_path=os.path.join(data_base_dir, "ori_dataset", dataset_name, "dev.json")
        elif dataset_name == "cosql":
            db_dir = os.path.join(data_base_dir, "ori_dataset", "cosql_dataset", "database")
            dataset_path=os.path.join(data_base_dir, "ori_dataset", "cosql_dataset/sql_state_tracking/", "cosql_dev.json")
            table_data_path=os.path.join(data_base_dir, "ori_dataset", "cosql_dataset", "tables.json")
            
        elif dataset_name == "spider_dk":
            dataset_path = os.path.join(data_base_dir, "ori_dataset", dataset_name, "spider-DK.json")
        else:
            raise NotImplementedError
        # dataset_output_path=os.path.join(data_base_dir, "preprocessed_dataset", dataset_name, "dev.bin")
    else:
        raise NotImplementedError
    dataset_output_path_base=os.path.join(data_base_dir, "preprocessed_dataset", dataset_name)
    if not os.path.exists(os.path.join(data_base_dir, "preprocessed_dataset", dataset_name)):
        os.makedirs(os.path.join(data_base_dir, "preprocessed_dataset", dataset_name))
    return db_dir, table_data_path, table_out_path, dataset_path, dataset_output_path_base


def process_dataset(dataset, dataset_name, mode):
    text_list = []
    for idx, entry in tqdm(enumerate(dataset)):
        if dataset_name in ["spider", "spider_dk"]:
            entry = pipeline(entry, {}, dataset_name, idx)
        elif dataset_name in ["cosql", "sparc"]:
            entry = pipeline(entry, {}, dataset_name, idx)
        else:
            raise NotImplementedError
        text_list.append(entry['final_preprocessed_text_list'])
    return text_list

def multi_turn_pipeline(entry: dict, db: dict, dataset_name: str, data_idx: int):
    """ db should be preprocessed """
    entry["text_list"] = []
    question = entry['final']['utterance']
    entry["text_list"].append(question)
    entry["text_list"].extend([" ".join(quote_normalization(dataset_name, data_idx, entry["interaction"][turn]["utterance_toks"])) for turn in range(len(entry['interaction']))])
    entry["processed_text_list"] = []
    for q in entry["text_list"]:
        q = q.split("|")
        entry["processed_text_list"].append(q)
    for idx, turn_item in enumerate(entry['processed_text_list']):
        idx = str(idx)
        if len(turn_item) > 1:
            for i in range(len(turn_item)):
                multi_idx = idx + "#"+str(i)
                if i== 0 :
                    entry[multi_idx] = turn_item[1].count("|")+1
                entry = preprocess_question(entry, db, multi_idx, dataset_name, data_idx)
        else:
            entry = preprocess_question(entry, db,  idx, dataset_name, data_idx)
    return entry

def single_turn_pipeline(entry: dict, db: dict, dataset_name: str, data_idx: int):
    entry = preprocess_question(entry, db, "-1", dataset_name, data_idx)
    return entry

def getText(dataset_path, dataset_name, mode):
    _, _, _, dataset_path, _ = init_dataset_path(dataset_path, dataset_name, mode)
    
    with open(dataset_path, 'r') as load_f: 
        fcntl.flock(load_f.fileno(), fcntl.LOCK_EX)
        dataset = json.load(load_f)
    text_list = process_dataset(dataset, dataset_name, mode)
    return text_list

def text2assertSame(data_ori_dir, data_cur_dir, dataset_name, mode, text_list = []):
    with open(os.path.join(data_ori_dir,  "preprocessed_dataset", dataset_name, f"{mode}_text_list.txt"), 'r') as load_f:
       true_dataset = load_f.readlines()
    if len(text_list) == 0:
        with open(os.path.join(data_cur_dir,  "preprocessed_dataset", dataset_name, f"{mode}_text_list.txt"), 'r') as load_f:
            cur_dataset = load_f.readlines()
    else:
        cur_dataset = text_list
    for idx, line in enumerate(cur_dataset):
        assert line == eval(true_dataset[idx].strip()), f"{idx}:\n{line}\n{true_dataset[idx]}"

def coref2assertSame(data_ori_dir, data_cur_dir, dataset_name, mode):
    with open(os.path.join(data_ori_dir,  "preprocessed_dataset", dataset_name, f'{mode}_coref.json'), 'r') as load_f:
       true_dataset = json.load(load_f)
    with open(os.path.join(data_cur_dir,  "preprocessed_dataset", dataset_name, f'{mode}_coref.json'), 'r') as load_f:
       cur_dataset = json.load(load_f)  
    # true_dataset = sorted(true_dataset)
    # cur_dataset = sorted(cur_dataset)
    for idx in range(len(true_dataset)):
        ori = true_dataset[idx]['coref']
        cur = cur_dataset[idx]['coref']
        for key in ori.keys():
            ori[key]["group"] = [str(x) for x in ori[key]["group"]]
            ori[key]["group"] = sorted(ori[key]["group"])
            ori[key]["used_turn"] = sorted(ori[key]["used_turn"])
        for key in cur.keys():
            cur[key]["group"] = [str(x) for x in cur[key]["group"]]
            cur[key]["group"] = sorted(cur[key]["group"])
            cur[key]["used_turn"] = sorted(cur[key]["used_turn"])
                
        assert true_dataset[idx] == cur_dataset[idx], f"{idx}:\n{true_dataset[idx] }\n{ cur_dataset[idx]}"

def main():
    mode_list = ["dev", "train"]
    dataset_name_list = ["cosql", "spider", "sparc", "spider_dk"]
    data_base_dir = "dataset_files/"
    nlp = init_nlp()
    for dataset_name in dataset_name_list:
        for mode in mode_list:
            print(f"Process dataset {dataset_name} with mode {mode}")
            output_path = os.path.join(data_base_dir, "preprocessed_dataset", dataset_name)
            print("Preprocess text ...")
            text_list = getText(data_base_dir, dataset_name, mode)
            
            print("Generate coreference ...")
            text_list2coref_json(text_list, output_path, mode, nlp)
            

def get_coref_by_path(input_path, output_path, dataset_name, mode):
    nlp = init_nlp()
    print("Preprocess text ...")
    text_list = getText(input_path, dataset_name, mode)
    print("Generate coreference ...")
    text_list2coref_json(text_list, output_path, mode, nlp)



if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--input_path', type=str,
                        help='Storage path for original dataset file that needed to be preprocessed.')
    parser.add_argument('--output_path', type=str,
                        help='Output path for the generated coreference file.')
    parser.add_argument('--dataset_name', type=str, choices=['sparc', 'cosql', 'spider', 'spider_dk'],
                        help='Name of dataset being preprocessed')
    parser.add_argument('--mode', type=str, choices = ['train', 'dev'], help="Dataset mode.")
    args = parser.parse_args()

    get_coref_by_path(input_path = args.input_path, output_path = args.output_path, dataset_name = args.dataset_name, mode = args.mode)

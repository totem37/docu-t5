import json
import nltk
import numpy as np
import re
from datasets.arrow_dataset import Dataset
from num2words import num2words
from sacremoses import MosesDetokenizer
from seq2seq.utils.dataset import DataTrainingArguments, normalize, serialize_schema
from seq2seq.utils.trainer import Seq2SeqTrainer, EvalPrediction
from text2digits import text2digits
from transformers.tokenization_utils_base import PreTrainedTokenizerBase
from typing import Optional


def numbers_to_text(question, mode='all'):
    processed_words = []
    question_involves_year = any([bool(w in question) for w in ["year", "month", "date", "before", "after", "born", "birth", "recent", "chronological", "youngest", "younger", "oldest", "older", "newest", "newer", "in", "during", "between"]])
    tokenized_question = nltk.word_tokenize(question)
    for word in tokenized_question:
        try:
            num = float(word)
            if len(word) == 4 and question_involves_year and mode in ['all', 'year']:
                num_words = num2words(num, to='year')
            elif mode == 'all':
                num_words = num2words(num)
            processed_words.append(num_words)
        except:
            processed_words.append(word)
    processed_input = MosesDetokenizer().detokenize(processed_words, return_str=True)
    if processed_input != question:
        print(f"Changed {question} to {processed_input}")
    return processed_input

def numbers_to_text(question, mode='all'):
    nums = {
        '1': 'one',
        '2': 'two',
        '3': 'three',
        '4': 'four',
        '5': 'five',
        '6': 'six',
        '7': 'seven',
        '8': 'eight',
        '9': 'nine',
        '0': 'zero'
    }
    processed_question = ""
    for i, c in enumerate(question):
        if c in nums.keys():
            processed_question += nums[c]
            if i < len(question) - 1:
                if question[i+1] in nums.keys():
                    processed_question += '-'
        else:
            processed_question += c
    if processed_question != question:
        print(f"Changed {question} to {processed_question}")
    return processed_question


def text_to_numbers(query):
    t2d = text2digits.Text2Digits()
    forbidden_char = '&'
    processed_input = t2d.convert(query.replace('first', forbidden_char)).replace(forbidden_char, 'first')
    if processed_input != query:
        print(f"Changed {query} to {processed_input}")
    return processed_input


def text_to_numbers(query):
    nums = {
        'one': '1',
        'two': '2',
        'three': '3',
        'four': '4',
        'five': '5',
        'six': '6',
        'seven': '7',
        'eight': '8',
        'nine': '9',
        'zero': '0'
    }
    # Skip table aliases
    table_alias_end = 0
    table_alias_match = re.search(rf'(?s:.*)as \S*', query, flags=re.IGNORECASE)
    if table_alias_match:
        table_alias_end = table_alias_match.span()[1] + 1

    query_start = query[:table_alias_end]
    processed_query = query[table_alias_end:]
    for num in nums.keys():
        processed_query = re.sub(num+'-', nums[num], processed_query)
        processed_query = re.sub(num, nums[num], processed_query)
    processed_query = query_start + processed_query
    return processed_query


def spider_get_input(
    question: str,
    serialized_schema: str,
    prefix: str,
    convert_numbers_to_text: Optional[bool],
) -> str:
    question_text = question.strip()
    if convert_numbers_to_text:
        question_text = numbers_to_text(question_text, mode=convert_numbers_to_text)
    inp =  prefix + question_text + " " + serialized_schema.strip()
    return inp


def spider_get_target(
    query: str,
    db_id: str,
    normalize_query: bool,
    target_with_db_id: bool,
) -> str:
    _normalize = normalize if normalize_query else (lambda x: x)
    return f"{db_id} | {_normalize(query)}" if target_with_db_id else _normalize(query)


def spider_add_serialized_schema(ex: dict, data_training_args: DataTrainingArguments) -> dict:
    serialized_schema = serialize_schema(
        question=ex["question"],
        db_path=ex["db_path"],
        db_id=ex["db_id"],
        db_column_names=ex["db_column_names"],
        db_table_names=ex["db_table_names"],
        db_foreign_keys=ex['db_foreign_keys'],
        db_primary_keys=ex['db_primary_keys'],
        description=ex['db_description'],
        schema_serialization_type=data_training_args.schema_serialization_type,
        schema_serialization_randomized=data_training_args.schema_serialization_randomized,
        schema_serialization_with_db_id=data_training_args.schema_serialization_with_db_id,
        schema_serialization_with_db_content=data_training_args.schema_serialization_with_db_content,
        schema_serialization_with_foreign_keys=data_training_args.schema_serialization_with_foreign_keys,
        schema_serialization_with_db_description=data_training_args.schema_serialization_with_db_description,
        normalize_query=data_training_args.normalize_query,
    )
    return {"serialized_schema": serialized_schema}



def spider_pre_process_function(
    batch: dict,
    max_source_length: Optional[int],
    max_target_length: Optional[int],
    data_training_args: DataTrainingArguments,
    tokenizer: PreTrainedTokenizerBase,
) -> dict:
    prefix = data_training_args.source_prefix if data_training_args.source_prefix is not None else ""
    convert_numbers_to_text = data_training_args.convert_numbers_to_text

    inputs = [
        spider_get_input(question=question, serialized_schema=serialized_schema, prefix=prefix, convert_numbers_to_text=convert_numbers_to_text)
        for question, serialized_schema in zip(batch["question"], batch["serialized_schema"])
    ]

    model_inputs: dict = tokenizer(
        inputs,
        max_length=max_source_length,
        padding=False,
        truncation=True,
        return_overflowing_tokens=False,
    )

    targets = [
        spider_get_target(
            query=query,
            db_id=db_id,
            normalize_query=data_training_args.normalize_query,
            target_with_db_id=data_training_args.target_with_db_id,
        )
        for db_id, query in zip(batch["db_id"], batch["query"])
    ]

    # Setup the tokenizer for targets
    with tokenizer.as_target_tokenizer():
        labels = tokenizer(
            targets,
            max_length=max_target_length,
            padding=False,
            truncation=True,
            return_overflowing_tokens=False,
        )

    model_inputs["labels"] = labels["input_ids"]
    return model_inputs


class SpiderTrainer(Seq2SeqTrainer):
    def _post_process_function(
        self, examples: Dataset, features: Dataset, predictions: np.ndarray, stage: str
    ) -> EvalPrediction:
        inputs = self.tokenizer.batch_decode([f["input_ids"] for f in features], skip_special_tokens=True)
        label_ids = [f["labels"] for f in features]
        if self.ignore_pad_token_for_loss:
            # Replace -100 in the labels as we can't decode them.
            _label_ids = np.where(label_ids != -100, label_ids, self.tokenizer.pad_token_id)
        decoded_label_ids = self.tokenizer.batch_decode(_label_ids, skip_special_tokens=True)
        metas = [
            {
                "query": x["query"],
                "question": x["question"],
                "context": context,
                "label": label,
                "db_id": x["db_id"],
                "db_path": x["db_path"],
                "db_table_names": x["db_table_names"],
                "db_column_names": x["db_column_names"],
                "db_foreign_keys": x["db_foreign_keys"],
            }
            for x, context, label in zip(examples, inputs, decoded_label_ids)
        ]
        predictions = self.tokenizer.batch_decode(predictions, skip_special_tokens=True)
        assert len(metas) == len(predictions)
        if self.convert_numbers_to_text:
            predictions = [text_to_numbers(p) for p in predictions]
        with open(f"{self.args.output_dir}/predictions_{stage}.json", "w") as f:
            json.dump(
                [dict(**{"prediction": prediction}, **meta) for prediction, meta in zip(predictions, metas)],
                f,
                indent=4,
            )
        return EvalPrediction(predictions=predictions, label_ids=label_ids, metas=metas)

    def _compute_metrics(self, eval_prediction: EvalPrediction) -> dict:
        predictions, label_ids, metas = eval_prediction
        if self.target_with_db_id:
            # Remove database id from all predictions
            predictions = [pred.split("|", 1)[-1].strip() for pred in predictions]
        # TODO: using the decoded reference labels causes a crash in the spider evaluator
        # if self.ignore_pad_token_for_loss:
        #     # Replace -100 in the labels as we can't decode them.
        #     label_ids = np.where(label_ids != -100, label_ids, tokenizer.pad_token_id)
        # decoded_references = self.tokenizer.batch_decode(label_ids, skip_special_tokens=True)
        # references = [{**{"query": r}, **m} for r, m in zip(decoded_references, metas)]
        references = metas
        return self.metric.compute(predictions=predictions, references=references)

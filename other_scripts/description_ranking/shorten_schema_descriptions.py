from collections import OrderedDict
from copy import deepcopy
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
from tqdm import tqdm

import argparse
import json
import re
import os

# Need to first run:
# pip install nltk
# pip install -U sentence-transformers
# pip install sklearn
# pip install tqdm

import nltk
nltk.download('punkt')
nltk.download('stopwords')
stop_words = set(stopwords.words('english'))

def parse_descriptions(description):
    """
    Return a dictionary of table & column descriptions parsed from the given description string. For example:
    parsed_descriptions = {
        'table1': 'this is a table',
        'table1.col1': 'this is a column',
        ...
    }
    """
    description = description.strip()

    # Parse the first table description
    first_table_name_match = re.search(r'\S*:', description)
    if first_table_name_match:
        current_table_name = first_table_name_match.group().strip(':')
        first_table_description_match = re.compile(r'[;\.]').search(description, pos=first_table_name_match.span()[1])
        if first_table_description_match:
            first_table_description = current_table_name + ': ' + description[first_table_name_match.span()[1]:first_table_description_match.span()[0]].strip()
            parsed_descriptions = {current_table_name: first_table_description}
            current_position = first_table_description_match.span()[1]
        else:
            return {current_table_name: description[first_table_name_match.span()[1]:].strip()}
    else:
        return {}

    # Iteratively parse the remaining column & table descriptions
    while current_position < len(description):

        # Find the end boundary of the current description
        current_description_match = re.compile(r'[;\.]').search(description, pos=current_position)
        if current_description_match:
            current_description = description[current_position:current_description_match.span()[0]].strip()
        else:
            current_description = description[current_position:].strip()

        table_description_match = re.search(r'\S*:', current_description)
        if table_description_match:
            # Save the current table description
            current_table_name = table_description_match.group().strip(':')
            table_description = current_table_name + ': ' + current_description[table_description_match.span()[1]:].strip()
            parsed_descriptions.update({current_table_name: table_description})

        else:
            # Save the current column description
            column_name = current_table_name + '.' + current_description.split()[0]
            parsed_descriptions.update({column_name: current_description})

        if current_description_match:
            current_position = current_description_match.span()[1]
        else:
            break

    return parsed_descriptions


def tokenize(string):
    """Tokenize the given string"""
    words = word_tokenize(string)
    processed_words = []
    for word in words:
        subwords = [word.lower()]
        separator_match = re.search(r'[-_]', subwords[0])
        if separator_match:
            subwords = subwords[0].split(separator_match.group())
        for subword in subwords:
            if subword not in stop_words:
                processed_words.append(subword)
    return processed_words


# https://datascience.stackexchange.com/questions/52238/compute-jaccard-distance-between-two-lists-of-strings/52259
def jaccard(str1, str2):
    """Compute the Jaccard similarity between the given strings by word"""
    list1 = tokenize(str1)
    list2 = tokenize(str2)
    intersection = len(list(set(list1).intersection(list2)))
    union = (len(list1) + len(list2)) - intersection
    return float(intersection) / union


def jaccard_similarities(descriptions, query):
    """Return a dictionary mapping columns to the similarity scores of the column description against the given query sentence"""
    return {column: jaccard(description, query) for column, description in descriptions.items()}


def sentencebert_similarities(descriptions, query, model):
    """Return a dictionary mapping columns to the similarity scores of the column description against the given query sentence"""
    description_embeddings = OrderedDict()
    for column, description in descriptions.items():
        description_embeddings[column] = model.encode(description)
    query_embeddings = [model.encode(query)]
    embedding_similarities = cosine_similarity(query_embeddings, list(description_embeddings.values()))[0]
    similarities = {list(description_embeddings.items())[i][0]: similarity for i, similarity in enumerate(embedding_similarities)}
    return similarities


def serialize_descriptions(descriptions):
    """
    Return a string serializing the given table & column descriptions
    """
    description_string = ""
    descriptions_by_table = {}

    # Group descriptions by table, with column descriptions following their respective table descriptions
    for column, description in descriptions.items():
        is_column = '.' in column
        new_description = description[:]
        if is_column:
            # Replace the column name with table.column as the table description might not be chosen
            table = column.split('.')[0]
            column_name_match = re.search(r'\.\S*', column)
            if column_name_match:
                column_name = column_name_match.group().strip('.')
                column_mention_match = re.search(column_name, new_description)
                if column_mention_match:
                    column_mention_end = column_mention_match.span()[1]
                    new_description = column + new_description[column_mention_end:]
        else:
            table = column[:]
        descriptions_for_current_table = descriptions_by_table.get(table)
        
        if descriptions_for_current_table:
            if is_column:
                descriptions_by_table[table] = descriptions_for_current_table + [new_description]
            else:
                descriptions_by_table[table] = [new_description] + descriptions_for_current_table
        else:
            descriptions_by_table[table] = [new_description]

    # Encode all descriptions in a string
    for description_list in descriptions_by_table.values():
        for description in description_list:
            description_string += description + '. '
        description_string = description_string[:-2] + '; '

    description_string = description_string.strip()
    return description_string


def shorten_schema_descriptions(args):
    with open(args.input_file, 'r') as f:
        data = json.load(f)

    output_file = os.path.join(os.path.dirname(args.input_file), f'top_{args.topk}_sim_{args.threshold}_desc_{os.path.basename(args.input_file)}')
    new_instances = []
    for instance in tqdm(data):
        description = instance.get('db_description')
        if not description:
            continue

        # 1. Parse table & column descriptions
        descriptions = parse_descriptions(description)

        # 2. Compare similarity of question to all descriptions
        sentencebert_model = SentenceTransformer('efederici/sentence-bert-base')
        similarities = sentencebert_similarities(descriptions, instance['question'], sentencebert_model)

        # 3. Select the top-k most similar descriptions above a threshold t
        filtered_descriptions = deepcopy(descriptions)
        filtered_similarities = deepcopy(similarities)
        for column in similarities.keys():
            if similarities[column] < args.threshold:
                filtered_descriptions.pop(column)
                filtered_similarities.pop(column)
        if len(filtered_descriptions) > args.topk:
            column_scores = list(filtered_similarities.items())
            column_scores = sorted(column_scores, key=lambda x: x[1], reverse=True)
            topk_columns = [i[0] for i in column_scores[:args.topk]]
            for column in descriptions.keys():
                if column not in topk_columns:
                    filtered_descriptions.pop(column, None)

        # 4. Serialize the chosen column descriptions along with their table descriptions
        new_description = serialize_descriptions(filtered_descriptions)
        new_instance = deepcopy(instance)
        new_instance.update({'db_description': new_description})
        new_instances.append(new_instance)

    
    with open(output_file, 'w') as f:
        json.dump(new_instances, f)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Filter the most relevant schema descriptions in a given dataset.')
    parser.add_argument('input_file', help='The input json file with schema descriptions')
    parser.add_argument('--topk', default=2, type=int, help='The number of column descriptions to keep (default: 2)')
    parser.add_argument('--threshold', default=0, type=float, help='The lower similarity threshold to keep a column (default: 0)')

    args = parser.parse_args()
    shorten_schema_descriptions(args)
        
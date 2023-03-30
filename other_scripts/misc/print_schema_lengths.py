import argparse
import json
import os
import re


def print_schema_lengths(args):
    normalized_data_path = os.path.normpath(args.data_file)

    with open(normalized_data_path, 'r') as f:
        data = json.load(f)

    for i in data:
        context = i['context']

        schema_start = re.search('\|', context).span()[0]
        description_start = re.search('\| description \|', context).span()[0]

        schema_length = len(context[schema_start:description_start])
        print(schema_length)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Print the schema lengths in a given predictions_eval_None.json file.')
    parser.add_argument('data_file', help='The input predictions_eval_None.json file')
    
    args = parser.parse_args()

    print_schema_lengths(args)
        
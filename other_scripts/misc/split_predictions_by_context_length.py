import argparse
import json
import numpy as np
import os
import re


# https://stackoverflow.com/questions/24483182/python-split-list-into-n-chunks
def chunks(l, n):
    """Yield n number of sequential chunks from l."""
    d, r = divmod(len(l), n)
    for i in range(n):
        si = (d+1)*(i if i < r else r) + d*(0 if i < r else i - r)
        yield l[si:si+(d+1 if i < r else d)]


def split_by_length(args):
    normalized_data_path = os.path.normpath(args.data_file)

    with open(normalized_data_path, 'r') as f:
        data = json.load(f)

    num_instances = len(data)

    schema_lengths = []
    description_lengths = []

    for i in data:
        context = i['context']

        schema_start = re.search('\|', context).span()[0]
        description_start = re.search('\| description \|', context).span()[0]

        schema_length = len(context[schema_start:description_start])
        description_length = len(context[description_start:])

        schema_lengths.append(schema_length)
        description_lengths.append(description_length)

        i['schema_length'] = schema_length
        i['description_length'] = description_length

    print(f'Total no. of predictions:   {num_instances}')
    if args.mode == 'schema':
        mean_schema_length = np.mean(schema_lengths)
        print(f'Average schema length:      {mean_schema_length:.0f}')
    else:
        mean_description_length = np.mean(description_lengths)
        print(f'Average description length: {mean_description_length:.0f}')

    length_key = args.mode + '_length'
    sorted_data = sorted(data, key=lambda x: x[length_key])
    splits = chunks(sorted_data, args.num_splits)

    for index, s in enumerate(splits):
        schema_lengths = []
        description_lengths = []
        golds = []

        for i in s:
            context = i['context']

            schema_start = re.search('\|', context).span()[0]
            description_start = re.search('\| description \|', context).span()[0]

            schema_length = len(context[schema_start:description_start])
            description_length = len(context[description_start:])

            schema_lengths.append(schema_length)
            description_lengths.append(description_length)

            gold = i['query'] + '\t' + i['db_id']
            golds.append(gold)

        print()
        print(f"----- SPLIT {index} -----")
        print()
        print(f'Number of predictions:      {len(s)}')
        if args.mode == 'schema':
            mean_schema_length = np.mean(schema_lengths)
            print(f'Average schema length:      {mean_schema_length:.0f}')
        else:
            mean_description_length = np.mean(description_lengths)
            print(f'Average description length: {mean_description_length:.0f}')

        predictions_file_suffix = 'predictions_eval_None.json'
        experiment_dir = f'split_{index}_' + normalized_data_path[:-len(predictions_file_suffix)]
        os.mkdir(experiment_dir)

        with open(os.path.join(experiment_dir, predictions_file_suffix), 'w') as f:
            json.dump(s, f)

        with open(os.path.join(experiment_dir, 'dev_gold.sql'), 'w') as f:
            f.write('\n'.join(golds))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Partition a given predictions_eval_None.json file according to instance context size.')
    parser.add_argument('data_file', help='The input predictions_eval_None.json file')
    parser.add_argument('--mode', default='schema', help='The type of context to use. One of {"schema", "description"}')
    parser.add_argument('--num_splits', default=2, help='The number of partitions to create')
    
    args = parser.parse_args()

    split_by_length(args)
        
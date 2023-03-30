import json
import numpy as np
import re
import sys


def get_lengths(data_file):
    with open(data_file, 'r') as f:
        data = json.load(f)

    num_instances = len(data)

    question_lengths = []
    schema_lengths = []
    description_lengths = []
    context_lengths = []

    for i in data:
        context = i['context']

        schema_start = re.search('\|', context).span()[0]
        description_start = re.search('\| description \|', context).span()[0]

        question_length = len(context[:schema_start])
        schema_length = len(context[schema_start:description_start])
        description_length = len(context[description_start:])
        context_length = len(context)

        question_lengths.append(question_length)
        schema_lengths.append(schema_length)
        description_lengths.append(description_length)
        context_lengths.append(context_length)

    print(f'Average question length:    {np.mean(question_lengths):.1f}')
    print(f'Average schema length:      {np.mean(schema_lengths):.1f}')
    print(f'Average description length: {np.mean(description_lengths):.1f}')
    print(f'Average context length:     {np.mean(context_lengths):.1f}')

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Please pass the input file as a command line argument")
    else:
        get_lengths(sys.argv[1])
        
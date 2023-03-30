import json
import random
import sys


def sample_dataset(input_file, output_file):
    random.seed(43) # seed 42 for first sample set, seed 43 for second
    num_samples = 20

    with open(input_file, 'r') as f:
        data = json.load(f)

    filtered_data = random.sample(data, num_samples)
    
    with open(output_file, 'w') as f:
        json.dump(filtered_data, f)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Please pass the input file and output file as command line arguments, e.g. python sample_dataset.py dev.json dev_samples.json")
    else:
        sample_dataset(sys.argv[1], sys.argv[2])
        
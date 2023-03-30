import json
import sys


def print_distribution(data_file):
    with open(data_file, 'r') as f:
        data = json.load(f)

    num_instances = len(data)

    keywords = ["year", "month", "date", "before", "after", "born", "birth", "recent", "chronological", "youngest", "younger", "oldest", "older", "newest", "newer"]

    for word in keywords:
        count = 0
        for i in data:
            if word in i['question']:
                count += 1
        print(f'{100*count/num_instances:.1f}')

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Please pass the input file as a command line argument, e.g. python dates_keyword_distribution.py train_spider_dates_full.json")
    else:
        print_distribution(sys.argv[1])
        
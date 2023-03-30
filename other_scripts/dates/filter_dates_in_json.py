import json
import re
import sys

def findWholeWord(w):
    return re.compile(r'\b({0})\b'.format(w), flags=re.IGNORECASE).search

def filter_dates_in_json(input_file, output_file):
    with open(input_file, 'r') as f:
        data = json.load(f)

    filtered_data = []
    words_to_detect = ["year", "month", "date", "before", "after", "born", "birth", "recent", "chronological", "youngest", "younger", "oldest", "older", "newest", "newer"]
    for instance in data:
        for word in words_to_detect:
            if findWholeWord(word)(instance['question']):
                filtered_data.append(instance)
                break
    
    with open(output_file, 'w') as f:
        json.dump(filtered_data, f)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Please pass the input file and output file as command line arguments, e.g. python filter_dates_in_json.py train_spider.json train_spider_dates_ex.json")
    else:
        filter_dates_in_json(sys.argv[1], sys.argv[2])
        
import json
import sys

def set_blank_db_description(input_file, output_file):
    with open(input_file, 'r') as f:
        data = json.load(f)

    filtered_data = []
    for instance in data:
        instance['db_description'] = ""
        filtered_data.append(instance)
    
    with open(output_file, 'w') as f:
        json.dump(filtered_data, f)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Please pass the input file and output file as command line arguments, e.g. python set_blank_db_description.py dev.json dev_no_desc.json")
    else:
        set_blank_db_description(sys.argv[1], sys.argv[2])
        
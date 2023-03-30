import json
import os

def parse_predictions(results_filename, dataset_filename):
    """
    Parses the predicted & gold queries in the given results file and writes all predictions to a .sql file
    """
    with open(dataset_filename, 'r') as data_file:
        dataset = json.loads(data_file.read())

    with open(results_filename, 'r') as input_file:
        results = input_file.readlines()

    predictions = []
    dataset_index = 0
    results_index = 0

    # Iterate through the predictions and dataset matching failures
    while results[results_index].split(' ')[1] == 'pred:':
        pred = results[results_index].split(' pred: ')[1].strip('\n').strip(' ')
        gold = results[results_index + 1].split(' gold: ')[1].strip('\n').strip(' ')

        while dataset[dataset_index]['query'] != gold:
            # If a failed prediction doesn't match the current instance, it must have been predicted correctly
            predictions.append(dataset[dataset_index]['query'])
            dataset_index += 1
        
        predictions.append(pred)
        dataset_index += 1
        results_index += 3

    output_filename = os.path.join(os.path.dirname(results_filename), 'predictions.sql')
    with open(output_filename, 'w') as out_file:
        for p in predictions:
            out_file.write(p + '\n')

if __name__ == "__main__":
    print("Evaluating PROTON results.")
    print("Ensure you have uncommented the additional validation lines in the evaluate() function in evaluation.py, or this script may freeze.")
    
    results_filenames = [
        "../../experiment/proton-spider-paper/result_spider.txt",
        "../../experiment/proton-spider-dk-paper/result_dk.txt",
        #"../../experiment/proton-spider-dk-paper/result_syn.txt"
    ]
    dataset_filenames = [
        "../../dataset_files/ori_dataset/spider/dev.json",
        "../../dataset_files/ori_dataset/spider_dk/spider-DK.json",
        #"../../dataset_files/ori_dataset/spider_syn/spider-syn.json"
    ]

    for results, dataset in zip(results_filenames, dataset_filenames):
        parse_predictions(results, dataset)
        
        dataset_dir = os.path.dirname(dataset)
        results_dir = os.path.dirname(results)
        os.system(f'python evaluation.py --gold {dataset_dir}/dev_gold.sql --pred {results_dir}/predictions.sql --etype all --db {dataset_dir}/database --table {dataset_dir}/tables.json > {results_dir}/eval_breakdown.txt && cat {results_dir}/eval_breakdown.txt')

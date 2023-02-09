import json
import os
import sys

def get_spider_dates_from_dev(experiment_dir):
    """
    Copies the given Spider-dev experiment directory and extracts the Spider-Dates dev instances
    """
    filtered_predictions = []
    em_count = 0
    ex_count = 0
    new_experiment_dir = experiment_dir.replace('spider-dev', 'spider-dates').strip('/') + '-a'
    try:
        os.makedirs(new_experiment_dir)
    except:
        print("Spider-Dates experiment directory exists, overwriting.")
    
    # Update predictions file with filtered predictions
    with open(os.path.join(experiment_dir, '../../dataset_files/ori_dataset/spider_dates/dev_spider_dates.json'), 'r') as spider_dates_file:
      spider_dates_instances = json.load(spider_dates_file)
      spider_dates_questions = [instance['question'] for instance in spider_dates_instances]
    
    with open(os.path.join(experiment_dir, 'predictions_eval_None.json'), 'r') as predictions_file:
      instances = json.load(predictions_file)
      
    with open(os.path.join(experiment_dir, 'failures.txt'), 'r') as failures_file:
      predictions = failures_file.readlines()
      
    for instance, prediction in zip(instances, predictions):
      if instance['question'] in spider_dates_questions:
        filtered_predictions.append(instance)
        if '_EM' in prediction:
          em_count += 1
        if '_EX' in prediction:
          ex_count += 1
        
    with open(os.path.join(new_experiment_dir, 'predictions_eval_None.json'), 'w') as new_predictions_file:
      json.dump(filtered_predictions, new_predictions_file)
    
    # Update results files with new metrics
    new_em = em_count / len(spider_dates_questions)
    new_ex = ex_count / len(spider_dates_questions)
              
    with open(os.path.join(experiment_dir, 'all_results.json'), 'r') as results_file:
      results_dict = json.load(results_file)
      
    results_dict.update({'eval_exact_match': new_em, 'eval_exec': new_ex})
    
    with open(os.path.join(new_experiment_dir, 'all_results.json'), 'w') as all_results_file:
      json.dump(results_dict, all_results_file)
      
    with open(os.path.join(new_experiment_dir, 'eval_results.json'), 'w') as eval_results_file:
      json.dump(results_dict, eval_results_file)
              

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("get_spider_dates_from_dev takes 1 argument: the experiment directory")
    else:
        experiment_dir = sys.argv[1]
        get_spider_dates_from_dev(experiment_dir)

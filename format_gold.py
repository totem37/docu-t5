from seq2seq.eval_spider.process_sql import get_schema, get_sql, Schema

import json
import os
import sys

def format_gold(json_filename):
    """
    Formats gold SQL queries from a .json file to a .sql file so they can be evaluated
    """
    gold_queries = []

    with open(json_filename, 'r') as input_file:
        all_instances = json.loads(input_file.read())
        for p in all_instances:
            gold_queries.append(f"{p['query']}\t{p['db_id']}")

    out_filename = os.path.join(os.path.dirname(json_filename), "dev_gold.sql")

    with open(out_filename, 'w') as output_file:
        for q in gold_queries:
            output_file.write(q + '\n')

def format_sql_field(json_filename, db_dir):
    """
    Creates a 'sql' field in the given .json file
    """
    with open(json_filename, 'r') as input_file:
        all_instances = json.loads(input_file.read())
    
    for i in all_instances:
        db = os.path.join(db_dir, i['db_id'], i['db_id'] + ".sqlite")
        schema = Schema(get_schema(db))
        if not i.get('sql'):
            i['sql'] = get_sql(schema, i['query'])

    with open(json_filename, 'w') as output_file:
        output_file.write(json.dumps(all_instances))

if __name__ == "__main__":
    json_filename = "dataset_files/ori_dataset/spider_dk/spider-DK.json"
    db_dir = "dataset_files/ori_dataset/spider_dk/database"
    if len(sys.argv) == 3:
        json_filename = sys.argv[1]
        db_dir = sys.argv[2]
    else:
        print("You can pass an input file & database directory as arguments to this script. For example:")
        print("python format_gold.py dataset_files/ori_dataset/spider_dates/dev_spider_dates.json dataset_files/ori_dataset/spider_dates/database")
        print("An input file and database directory were not passed in. Defaulting to Spider-DK.")
    format_sql_field(json_filename, db_dir)
    format_gold(json_filename)


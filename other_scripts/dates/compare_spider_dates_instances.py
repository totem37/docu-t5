import json

def compare_datasets():
    with open('dev_spider_dates.json', 'r') as f:
        dev = json.load(f)

    with open('dk_spider_dates.json', 'r') as f:
        dk = json.load(f)

    dev_questions = [i['question'] for i in dev]
    dev_queries = [i['query'] for i in dev]
    dk_questions = [i['question'] for i in dk]
    dk_queries = [i['query'] for i in dk]

    same = 0
    in_dev_not_dk = 0
    in_dk_not_dev = 0

    for i in dev:
        if i['question'] in dk_questions and i['query'] in dk_queries:
            same += 1
        else:
            in_dev_not_dk += 1

    for i in dk:
        if i['question'] not in dev_questions or i['query'] not in dev_queries:
            in_dk_not_dev += 1

    print(f'No. instances in both dev-spider-dates and dk-spider-dates: {same}')
    print(f'No. instances in dev-spider-dates but not dk-spider-dates: {in_dev_not_dk}')
    print(f'No. instances in dk-spider-dates but not dev-spider-dates: {in_dk_not_dev}')

if __name__ == "__main__":
    compare_datasets()
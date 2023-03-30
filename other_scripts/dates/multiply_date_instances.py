from copy import deepcopy

import json
import random
import re
import sys


# https://stackoverflow.com/questions/70209111/how-to-swap-words-multiple-characters-in-a-string
def swap_words(s, x, y):
    return y.join(part.replace(y, x) for part in s.split(x))


def search_for_number(question, query):
    """
    Find any number in the question and the query
    Returns a tuple of regex match objects for the question and query, or None if no match
    """
    # Parse a numerical value
    number_match_question = re.search(rf'\d+', question)
    if number_match_question:
        number = number_match_question.group()

        # Skip table aliases
        table_alias_end = 0
        table_alias_match = re.search(rf'(?s:.*)as \S*{number}', query, flags=re.IGNORECASE)
        if table_alias_match:
            table_alias_end = table_alias_match.span()[1] + 1

        # Search for the number
        number_match_query = re.compile(number).search(query, pos=table_alias_end)
        if number_match_query:

            # Check the number is not in a LIMIT clause
            limit_clause_match = re.compile(rf'limit {number}', flags=re.IGNORECASE).search(query, pos=table_alias_end)
            if limit_clause_match:
                limit_clause_end = limit_clause_match.span()[1]
                number_end = number_match_query.span()[1]
                if limit_clause_end == number_end:
                    return None

            # number_match_query and number_match_question are aligned
            return number_match_question, number_match_query
    return None


def reverse_ordering(query):
    """
    Reverse the ORDER BY clause in the given query.
    This function assumes the given query has an ORDER BY clause
    """
    # Find and reverse the ORDER BY clause
    order_query_expr = re.compile(r'(?s:.*)(asc|desc)', flags=re.IGNORECASE)
    order_match_query = order_query_expr.search(query)
    if order_match_query:
        if order_match_query.group(1) != -1:
            new_order = 'ASC' if order_match_query.group(1).lower() == 'desc' else 'DESC'
            query_variation = query[:order_match_query.span(1)[0]] + new_order

            # If there is more after the ASC / DESC in the query, add it back on
            if order_match_query.span(1)[1] < len(query):
                query_variation += query[order_match_query.span(1)[1]:]

    else:
        # If there is no ASC / DESC, add a DESC to the ORDER BY clause
        limit_query_expr = re.compile(r' limit \d', flags=re.IGNORECASE)
        limit_match_query = limit_query_expr.search(query)
        if limit_match_query:
            # Add DESC before the LIMIT clause
            index_of_desc = limit_match_query.span()[0] - 1
            query_variation = query[:index_of_desc] + ' DESC' + query[index_of_desc:]
        else:
            # Add DESC to the end of the query
            query_variation = query[:] + ' DESC'

    return query_variation


def find_synonyms(text):
    """Return a list of variations of the given text with specific words/phrases replaced with their synonyms"""
    synonym_dict = {
        "Count the number of": ["Give the count of"],
        "How many": ["What number of"],
        "List": ["Return", "Give", "Show"],
        "Return": ["List", "Give", "Show"],
        "Give": ["Return", "List", "Show"],
        "Show": ["Return", "Give", "List"],
        "distinct": ["different", "unique"],
        "sorted": ["ordered"],
        "ordered": ["sorted"],
        "What date": ["When", "On which date"],
        "person": ["human"],
        "attended": ["went to"],
        "made tweets": ["tweeted"],
        "mean": ["average"],
        "average": ["mean"],
        "greater than": ["above"],
        "less than": ["below"],
        "took place": ["occurred", "happened"],
        "occurred": ["took place", "happened"],
        "happened": ["took place", "occurred"],
        "built": ["constructed"],
        "greatest": ["highest", "largest"],
        "at least": ["at minimum"],
        "at most": ["at maximum"],
        "universities": ["colleges"],
        "university": ["college"],
        "founded": ["established"],
        "launched": ["released"],
        "guest": ["customer"],
        "booking": ["rental"],
        "last name": ["surname"],
        "surname": ["last name"],
        "taught": ["delivered"],
        "offered": ["provided"],
        "open an account": ["create an account"],
        " men ": ["males"],
        " women ": ["females"],
        "everyone": ["every person"],
        "prior to": ["before"],
        "United States": ["USA", "United States of America"],
        "had an exhibition": ["exhibited"],
        "ticket price": ["price of admission", "ticket cost"],
        "ticket cost": ["ticket price", "price of admission"],
        "What height is": ["How tall is"],
        "How tall is": ["What height is"],
        "out of all": ["across all"],
        "across all": ["out of all"],
        "film": ["movie"],
        "movie": ["film"],
        "aired": ["released"],
        "cinema": ["theatre"],
        "exactly": ["precisely"],
        "In which location": ["Where"],
        "not during": ["outwith"],
        "not in": ["outwith"],
        "schedule": ["timetable"],
        "named": ["called", "titled"],
        "called": ["named"],
        "payment": ["transaction"],
        "transaction": ["payment"],
        "gas station": ["petrol station"],
        "location": ["place"]
    }
    # variations = set()
    # for phrase, synonyms in synonym_dict.items():
    #     if re.search(phrase, text, flags=re.IGNORECASE):

    #         for variation in list(variations)[:]:
    #             phrase_match = re.search(phrase, variation, flags=re.IGNORECASE)
    #             if phrase_match:

    #                 for synonym in synonyms:
    #                     new_variation = variation[:phrase_match.span()[0]] + synonym + variation[phrase_match.span()[1]:]
    #                     variations.add(new_variation)
    
    synonym_variation = text[:]
    for phrase, synonyms in synonym_dict.items():
        synonym_variation = re.sub(phrase, random.choice(synonyms), synonym_variation)
    variations = [synonym_variation]

    return list(variations)


def multiply_date_instances(input_file, output_file):
    """
    Create variations of each instance in the given json file, and write the originals & variations to the output json file
    """
    max_number_difference = 20
    num_number_variations = 2

    random.seed(42)

    # Read input file
    with open(input_file, 'r') as f:
        data = json.load(f)

    multiplied_data = []
    # Iterate through the instances and create variations
    for instance in data:
        all_variations = [instance]
        question = instance['question']
        query = instance['query']
        
        # 1. Generate variations by changing a number
        number_match_tuple = search_for_number(question, query)
        if number_match_tuple:
            number_match_question, number_match_query = number_match_tuple
            number = int(number_match_question.group())
            upper = number + max_number_difference
            lower = number - max_number_difference
            if lower < 1:
                lower = 1
            random_nums = random.sample(range(lower, upper), num_number_variations)
            for n in random_nums:
                question_variation = question[:number_match_question.span()[0]] + str(n) + question[number_match_question.span()[1]:]
                query_variation = query[:number_match_query.span()[0]] + str(n) + query[number_match_query.span()[1]:]
                variation = deepcopy(instance)
                variation.update({'question': question_variation, 'query': query_variation})
                all_variations.append(variation)

        # 2. Generate variations by switching filtering operators
        filter_regex_mappings = [
            {
                'before or in': '<=',
                'in or before': '<=',
                'after or in': '>=',
                'in or after': '>='
            },
            {
                'before': '<',
                'after': '>'
            },
            {
                'greater than': '>',
                'less than': '<'
            },
            {
                'at least': '>=',
                'at most': '<='
            },
            {
                'young': '<|>|MAX|MIN',
                'new': '<|>|MAX|MIN'
            },
            {
                'over the age of': '>',
                'under the age of': '<'
            }
        ]
        opposite_operator_mapping = {
            '>': '<',
            '<': '>',
            'MAX': 'MIN',
            'MIN': 'MAX'
        }
        # Search for one of these filter occurrences
        for filter_regex_dict in filter_regex_mappings:
            filter_question_expr = re.compile('|'.join(filter_regex_dict.keys()))
            filter_match_question = filter_question_expr.search(question)
            if filter_match_question:
                filter_text = filter_match_question.group()

                # Search for the filter operator
                filter_query_expr = re.compile(filter_regex_dict[filter_text], flags=re.IGNORECASE)
                filter_match_query = filter_query_expr.search(query)
                if filter_match_query:

                    # Create variations of each existing variation
                    filter_variation_dict = deepcopy(filter_regex_dict)
                    filter_variation_dict.pop(filter_text)
                    if filter_text in ['before', 'after']:
                        filter_variation_dict.update({'in': '=', 'during': '='})
                    elif filter_text in ['young', 'new']:
                        filter_variation_dict = {'old': opposite_operator_mapping[filter_match_query.group()]}
                    for variation in all_variations[:]:
                        # Search each existing variation for the filtering text & operator, as the positions may be different from the original instance
                        variation_question_match = filter_question_expr.search(variation['question'])
                        variation_query_match = filter_query_expr.search(variation['query'])

                        for text, operator in filter_variation_dict.items():
                            question_variation = variation['question'][:variation_question_match.span()[0]] + text + variation['question'][variation_question_match.span()[1]:]
                            query_variation = variation['query'][:variation_query_match.span()[0]] + operator + variation['query'][variation_query_match.span()[1]:]
                            filter_variation = deepcopy(variation)
                            filter_variation.update({'question': question_variation, 'query': query_variation})
                            all_variations.append(filter_variation)

                    # Once a filtering expression has been matched, do not create more filtering variations
                    break

        # 3. Generate variations by reversing the order of results
        ordering_terms = {
            'ascending': 'descending',
            'descending': 'ascending',
            'in chronological': 'in reverse chronological',
            'in reverse chronological': 'in chronological',
            'least recent': 'most recent',
            'most recent': 'least recent',
            'youngest': 'oldest',
            'newest': 'oldest',
            'earliest': 'latest'
        }
        # Search for an occurrence of any one of these terms in the question
        for term in ordering_terms.keys():
            order_question_expr = re.compile(term)
            order_match_question = order_question_expr.search(question)
            if order_match_question:

                # If there is no ORDER BY clause, do not make variations at this stage
                order_by_clause_match = re.search('ORDER BY', query, flags=re.IGNORECASE)
                if not order_by_clause_match:
                    break

                # Create variations of each existing variation
                for variation in all_variations[:]:
                    # Replace all occurrences of the term and its opposite in the question
                    question_variation = swap_words(variation['question'], term, ordering_terms[term])

                    # Reverse the ordering of the query
                    query_variation = reverse_ordering(variation['query'])

                    order_variation = deepcopy(variation)
                    order_variation.update({'question': question_variation, 'query': query_variation})
                    all_variations.append(order_variation)

                # Once an ordering expression has been matched, do not create more ordering variations
                break

        # 4. Substitute synonyms in each variation's question
        for variation in all_variations[:]:
            question_variations = find_synonyms(variation['question'])
            for question_variation in question_variations:
                synonym_variation = deepcopy(variation)
                synonym_variation.update({'question': question_variation})
                all_variations.append(synonym_variation)

        # Append all variations to the output
        for variation in all_variations:
            multiplied_data.append(variation)
    
    # Write to output file
    with open(output_file, 'w') as f:
        json.dump(multiplied_data, f)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Please pass the input file and output file as command line arguments, e.g. python multiply_date_instances.py train_spider_dates.json train_spider_dates_full.json")
    elif sys.argv[1] == sys.argv[2]:
        print("Please ensure the output file is different from the input file")
    else:
        multiply_date_instances(sys.argv[1], sys.argv[2])
        
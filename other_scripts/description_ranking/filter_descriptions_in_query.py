from copy import deepcopy
from Levenshtein import distance
from sql_metadata import Parser

import argparse
import json
import re
import os

# Need to first run:
# pip install sql-metadata
# pip install levenshtein

def parse_descriptions(description):
    """
    Return a dictionary of table & column descriptions parsed from the given description string. For example:
    parsed_descriptions = {
        'table1': 'this is a table',
        'table1.col1': 'this is a column',
        ...
    }
    """
    description = description.strip()

    # Parse the first table description
    first_table_name_match = re.search(r'\S*:', description)
    if first_table_name_match:
        current_table_name = first_table_name_match.group().strip(':')
        first_table_description_match = re.compile(r'[;\.]').search(description, pos=first_table_name_match.span()[1])
        if first_table_description_match:
            first_table_description = current_table_name + ': ' + description[first_table_name_match.span()[1]:first_table_description_match.span()[0]].strip()
            parsed_descriptions = {current_table_name: first_table_description}
            current_position = first_table_description_match.span()[1]
        else:
            return {current_table_name: description[first_table_name_match.span()[1]:].strip()}
    else:
        return {}

    # Iteratively parse the remaining column & table descriptions
    while current_position < len(description):

        # Find the end boundary of the current description
        current_description_match = re.compile(r'[;\.]').search(description, pos=current_position)
        if current_description_match:
            current_description = description[current_position:current_description_match.span()[0]].strip()
        else:
            current_description = description[current_position:].strip()

        table_description_match = re.search(r'\S*:', current_description)
        if table_description_match:
            # Save the current table description
            current_table_name = table_description_match.group().strip(':')
            table_description = current_table_name + ': ' + current_description[table_description_match.span()[1]:].strip()
            parsed_descriptions.update({current_table_name: table_description})

        else:
            # Save the current column description
            column_name = current_table_name + '.' + current_description.split()[0]
            parsed_descriptions.update({column_name: current_description})

        if current_description_match:
            current_position = current_description_match.span()[1]
        else:
            break

    return parsed_descriptions


def serialize_descriptions(descriptions):
    """
    Return a string serializing the given table & column descriptions
    """
    description_string = ""
    descriptions_by_table = {}

    # Group descriptions by table, with column descriptions following their respective table descriptions
    for column, description in descriptions.items():
        is_column = '.' in column
        new_description = description[:]
        if is_column:
            # Replace the column name with table.column as the table description might not be chosen
            table = column.split('.')[0]
            column_name_match = re.search(r'\.\S*', column)
            if column_name_match:
                column_name = column_name_match.group().strip('.')
                column_mention_match = re.search(column_name, new_description)
                if column_mention_match:
                    column_mention_end = column_mention_match.span()[1]
                    new_description = column + new_description[column_mention_end:]
        else:
            table = column[:]
        descriptions_for_current_table = descriptions_by_table.get(table)
        
        if descriptions_for_current_table:
            if is_column:
                descriptions_by_table[table] = descriptions_for_current_table + [new_description]
            else:
                descriptions_by_table[table] = [new_description] + descriptions_for_current_table
        else:
            descriptions_by_table[table] = [new_description]

    # Encode all descriptions in a string
    for description_list in descriptions_by_table.values():
        for description in description_list:
            description_string += description + '. '
        description_string = description_string[:-2] + '; '

    description_string = description_string.strip()
    return description_string


def filter_descriptions_in_query(args):
    with open(args.input_file, 'r') as f:
        data = json.load(f)

    output_file = os.path.join(os.path.dirname(args.input_file), f'query_relevant_desc_{os.path.basename(args.input_file)}')
    new_instances = []
    for instance in data:
        query = instance.get('query')
        description = instance.get('db_description')
        if not description:
            continue

        # Parse table & column descriptions
        parsed_descriptions = parse_descriptions(description)
        descriptions = {k.lower(): v for k,v in parsed_descriptions.items()}

        # Parse table & column mentions in the query
        sql_parser = Parser(query)
        try:
            query_tables = [t.lower() for t in sql_parser.tables]
            query_columns = []
            tables_with_all_fields_selected = []
            for column in sql_parser.columns:
                # Ensure each column is stored in the format: table.column
                full_column_name = column[:]
                if '.' not in full_column_name and len(query_tables) == 1:
                    full_column_name = query_tables[0] + '.' + full_column_name
                query_columns.append(full_column_name.lower())

                # Store table names with * fields selected - check this separately
                all_columns_match = re.search(r'\.\*$', full_column_name)
                if all_columns_match:
                    tables_with_all_fields_selected.append(full_column_name[:all_columns_match.span()[0]])
        except:
            print(f"Could not parse table & column mentions from the query: {query}")
            new_instances.append(instance)
            continue

        # Filter descriptions for tables & columns that appear in the query
        filtered_descriptions = deepcopy(descriptions)
        for column in descriptions.keys():
            # Check similarity with all tables & columns in case of a typo in the documentation
            column_is_relevant = False
            for query_col in query_tables + query_columns:
                if distance(column, query_col) <= 1:
                    column_is_relevant = True

            if not column_is_relevant:
                table = column.split('.')[0]
                if table not in tables_with_all_fields_selected:
                    filtered_descriptions.pop(column, None)

        # If all descriptions have been filtered out, just serialize all descriptions
        # This probably happened due to a typo in the descriptions
        if filtered_descriptions == {}:
            filtered_descriptions = descriptions

        # Serialize the relevant table & column descriptions
        new_description = serialize_descriptions(filtered_descriptions)
        new_instance = deepcopy(instance)
        new_instance.update({'db_description': new_description})
        new_instances.append(new_instance)

    
    with open(output_file, 'w') as f:
        json.dump(new_instances, f)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Filter the most relevant schema descriptions in a given dataset by extracting table & column mentions in the gold queries.')
    parser.add_argument('input_file', help='The input json file with schema descriptions')
    
    args = parser.parse_args()
    filter_descriptions_in_query(args)
        
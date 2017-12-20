from pprint import pprint
import subprocess
from itertools import groupby
import csv

def get_lines(filen):
    with open(filen, "r") as filename:
        return filename.read().splitlines()

doc_attrs = get_lines("result/documented_attrs.txt")
found_attrs = get_lines("result/found_attrs.txt")
found_attrs = [attr.split(' ') for attr in found_attrs]

diff_attrs = [attr for attr in found_attrs if attr[0] not in doc_attrs]
dir_file = '/home/a/projects/linux/Documentation/*'

def grep_usage(attr):
    name = attr[0]
    output = subprocess.Popen('grep -r ' + name + ' ' + dir_file, shell = True,
            stdout = subprocess.PIPE).communicate()[0].decode('utf-8').strip()
    if output:
        attr.append("Maybe")
    else:
        attr.append("No")
    return attr

results = [grep_usage(attr) for attr in diff_attrs]
results = sorted(results, key=lambda x: x[2])

def write_to_csv(lines):
    with open('result/output.csv', 'w', newline='') as filename:
        writer = csv.writer(filename)
        column_heading = ['attribute name', 'macro', 'filename', 'is somewhere in Documentation?']
        writer.writerow(column_heading)
        writer.writerows(lines)

write_to_csv(results)

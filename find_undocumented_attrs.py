from itertools import groupby
from pprint import pprint
import subprocess
import csv

def get_lines(filen):
    with open(filen, "r") as filename:
        return filename.read().splitlines()

doc_attrs = get_lines("result/documented_attrs.txt")
found_attrs = get_lines("result/found_attrs.txt")
found_attrs = [attr.split(' ') for attr in found_attrs]

diff_attrs = [attr for attr in found_attrs if attr[0] not in doc_attrs]
dir_file = '/home/a/projects/linux/Documentation/*'
kernel_path = '/home/a/projects/linux'

def grep_usage(attr):
    name = attr[0]
    # search for the attribute anywhere in documentation
    #output = subprocess.Popen('grep -r ' + name + ' ' + dir_file, shell = True,
    #        stdout = subprocess.PIPE).communicate()[0].decode('utf-8').strip()
    # double check if attribute is defined in Documentation/ABI
    output = subprocess.Popen('git -C ' + kernel_path + ' grep ' + name + ' | grep ^What',
            shell = True, stdout = subprocess.PIPE).communicate()[0].decode('utf-8').strip()
    if output:
        print ("yes " + attr )
        print (output)
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

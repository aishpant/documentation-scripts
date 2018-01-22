from itertools import groupby
from pprint import pprint
import find_attrs
import argparse
import operator
import glob
import ast

def clean_up(line):
    return ast.literal_eval(line)

def read_result():
    result = []
    # read coccinelle output files
    for name in glob.glob("/tmp/out.batch_find_*"):
        with open(name, "r") as filename:
            lines = filename.readlines()
            if (len(lines) > 0):
               # read only the last line of the cocci script results
               # which prints out the final set
               [result.extend(clean_up(l)) for l in lines]
    return result

def print_attrs(dir_file):
    find_attrs.generate_scripts(dir_file)
    attr_tuple = sorted(set(read_result()), key=lambda x: x[2])
    attr_tuple = list(map(lambda x: (x[1], x[0], '/'.join(x[2].split('/')[0:]), x[3]), attr_tuple))
    ret = ''
    for attr in attr_tuple:
        print (' '.join(attr))
        ret += ' '.join(attr)
        ret += '\n'

    return ret

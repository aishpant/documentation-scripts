import glob
import ast
import pprint
import operator
from itertools import groupby

def clean_up(line):
    return ast.literal_eval(line)

def read_result():
    lines = []
    # read coccinelle output files
    for name in glob.glob("out/out.batch_find_*"):
        with open(name, "r") as filename:
            l = filename.readlines()
            if (len(l) > 0):
               # read only the last line of the cocci script results
               # which prints out the final set
               lines.extend(clean_up(l[-1]))
    return lines

attr_tuple = sorted(set(read_result()), key=lambda x: x[2])
attr_tuple = list(map(lambda x: (x[1], x[0], '/'.join(x[2].split('/')[6:])), attr_tuple))

for attr in attr_tuple:
    print (' '.join(attr))

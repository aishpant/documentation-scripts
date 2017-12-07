import glob
import ast
import operator

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


attr_tuple = sorted(set(read_result()), key=lambda x: x[1])
#for row in attr_tuple:
#    print row[1] + " " + row[0]
#print len(attr_tuple)

attr = [item[1] for item in attr_tuple]
attr = set(attr)
for name in attr:
    print (name)

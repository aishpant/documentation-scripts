import glob
import ast
import operator

def freq_dist(data):
    dictionary = {i: data.count(i) for i in data}
    sorted_d = sorted(dictionary.items(), key=operator.itemgetter(1))
    return sorted_d[::-1]

def get_list_len_str(l):
    return str(len(set(l)))

def clean_up(line):
    return ast.literal_eval(line)

def remove_false_positives(lines):
    with open("result/false_positive_attrs.txt", "r") as filename:
        l = filename.read().splitlines()
    return [x for x in lines if x[0] not in l]

def read_result():
    lines = []
    # read coccinelle output files
    for name in glob.glob("out/out.batch_task_*"):
        with open(name, "r") as filename:
            l = filename.readlines()
            if (len(l) > 0):
               # read only the last line of the cocci script results
               # which prints out the final set
               lines.extend(clean_up(l[-1]))
    lines = remove_false_positives(lines)
    return lines

attr_tuple = sorted(set(read_result()), key=lambda x: x[0])
for row in attr_tuple:
    print (row[0] + " " + row[1])

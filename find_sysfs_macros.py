import os, glob
import os.path
import re
from copy import deepcopy

def get_abi_documentation_lines():
    lines = []
    for dirpath, dirnames, files in os.walk("/home/a/projects/linux/Documentation/ABI/"):
        dirnames[:] = [d for d in dirnames if d not in ['removed', 'obsolete']]
        files = [f for f in files if 'sysfs' in f]
        for fname in files:
            with open(os.path.join(dirpath, fname), "r") as auto:
                lines.extend(auto.read().split('\n'))
    return lines

def chunks(l, n):
        for i in range(0, len(l), n):
                yield l[i:i + n]

def write_cocci_output(filename):
    print ('Processing file ' + str(filename))
    # run coccinelle on drivers
    os.system('spatch -j 4 --sp-file ' + str(filename) + ' -j 4 ' + ' --dir ~/projects/linux/drivers/ >' + 'out/out.' + str(os.path.basename(filename)))
    print ('########################################################')

def save_to_file(lines, filename):
    with open(filename, mode='w') as myfile:
        myfile.write('\n'.join(str(line) for line in lines))
        myfile.write('\n')

# get all lines in Documentation/ABI files recursively
lines = get_abi_documentation_lines()

# get all lines with the attribute name in it- filter by the word 'What:'
lines = [line for line in lines if 'What:' in line]

# filter to get the exact attribute name
lines = [line.split()[-1].split('/')[-1] for line in lines]

# remove duplicates
lines = list(set(lines))

# filter blank words
lines = list(filter(None, lines))

print (len(lines))

# filter strings containing bad characters
# we don't know how to handle them yet
bad_chars = ['<', '>', '{', '}', '[', ']', '*', '\'', '\"', ".", '(', ')', ',',
':', 'break', 'switch', 'default']
lines_copy = deepcopy(lines)
for bad_char in bad_chars:
    lines = list(filter(lambda line: line.find(bad_char) < 0, lines))

bad_words = set(lines_copy) - set(lines)
save_to_file(bad_words, 'result/bad_words.txt')
save_to_file(lines, 'result/documented_attrs.txt')

print (len(lines))
# generate cocci scripts to work with the attributes in batches of 100
l = list(chunks(lines, 100))
for idx, chunk in enumerate(l):
    with open('in/' + 'batch_task_' + str(idx)+'.cocci', 'w') as fil:
        fil.write("@initialize:python@\n@@\ns = set()\n\n")
        fil.write("@r@\nexpression list[n] es;\ndeclarer f;\n@@\n")
        fil.write("f(es,\n\t")
        fil.write("\(");
        attributes = "\\|".join(chunk)
        fil.write(attributes)
        fil.write("\)\n,...);\n\n")
        fil.write("@script:python@\nf<<r.f;\np<<r.n;\n@@\n");
        fil.write("s.add((f,p))\nprint (s)\n")
        fil.close()

# get all the generated cocci scripts
cocci_scripts = glob.glob("in/batch_task_*")

for script in cocci_scripts:
    write_cocci_output(script)

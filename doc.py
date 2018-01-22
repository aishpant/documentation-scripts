from pprint import pprint
from tempfile import mkstemp
from pathlib import Path
from os import fdopen, remove
import subprocess
import join_attrs
import textwrap
import datetime
import argparse
import re

kernel_path = '/home/a/projects/linux'

def remove_temp_files():
    for p in Path("/tmp/").glob("*.cocci"):
        p.unlink()
    try:
        remove('description.txt')
    except OSError:
        pass

def print_formatted(f, what, commit_date, kernel_version, contact, description):
    print ('What:\t\t' + what, file = f)
    print ('Date:\t\t' + commit_date, file = f)
    print ('KernelVersion:\t' + kernel_version, file = f)
    print ('Contact:\t' + contact, file = f)
    print ('Description:' + description, file = f)
    print ('\n', file = f)

def run(command):
    output = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
             shell=True).communicate()[0].decode('utf-8').strip()
    return output

def save_to_file(lines):
    filename = 'description.txt'
    with open(filename, mode='a') as myfile:
        myfile.write('--------------------------------\n')
        myfile.write(lines)
        myfile.write('\n')

# grep for comments around (line - 10) & line
def add_comments(filename, line_num):
    lower, upper = str(int(line_num) - int(10)), line_num
    match_comments = 'sed -n \'/^\/\*/p; /^ \*/p;/\/\/.*/p\''
    command = 'sed -n ' + lower + ',' + upper + 'p ' + filename + ' | ' + match_comments
    out = run(command)
    if out:
        save_to_file(res)

# generate cocci file by replacing a pattern by a substring
def replace_cocci(file_path, substr, pattern):
    fh, abs_path = mkstemp()
    with fdopen(fh, 'w') as new_file:
        with open (file_path, 'r') as old_file:
            for line in old_file:
                new_file.write(line.replace(pattern, substr))
    return abs_path

# get show/store func lines from cocci output
def get_func_lines(file_path, linux_source_file):
    line_num = {}
    command = 'spatch --very-quiet --sp-file ' + file_path  + ' --dir ' + linux_source_file
    out = run(command)
    if out:
        lines = out.split('\n')
        line_num['show']= [' '.join(line.split()[1:]) for line in lines if line.startswith('show')]
        line_num['store']= [line.split()[1] for line in lines if line.startswith('store')]
    return line_num

# get struct definition which is used in show fn
def add_struct_comments(show_fn, filename):
    cocci_script = 'get_show_struct.cocci'
    temp_show_script = replace_cocci(cocci_script, show_fn, 'show_fn')

    command = 'spatch --very-quiet --sp-file ' + temp_show_script + ' --dir ' + filename
    out = run(command)
    if out:
        save_to_file(out)
        # get struct definition if show struct exists
        # another cocci script - match_struct.cocci / replace struct_type
        struct_type = [l.split(' ')[1] for l in out.splitlines() if l.startswith('struct_type')]
        if (len(struct_type) > 0):
            temp_struct_script = replace_cocci('match_struct.cocci', struct_type[0], 'struct_type')
            command = 'spatch --very-quiet --include-headers --sp-file ' + temp_struct_script + ' --dir ' + kernel_path
            out = run(command)
            if out:
                save_to_file(out)
            remove(temp_struct_script)
    remove(temp_show_script)

remove_temp_files()
parser = argparse.ArgumentParser(description='find sysfs attributes')
parser.add_argument('-f', '--file', type=str, dest='dir_file',
                    help='linux source files')
args = parser.parse_args()
driver_dir = args.dir_file

attrs_info = join_attrs.print_attrs(driver_dir)
attrs_info = list(filter(None, attrs_info.split('\n')))

attrs = [line.split() for line in attrs_info]
print ("#################################")

f = open('test_doc', 'a')
doc_list = []
for attr_info in attrs_info:
    attr, mac, filename, line_num = attr_info.split()
    save_to_file('\n###########  attr name : ' + attr + ' #################\n')
    save_to_file(attr_info)

    # run a plain old grep for occurences in Documenation/ folder
    command = 'git grep -A2 -B1 \'' + attr + '\' Documentation/'
    grep_attr = run(command)
    if grep_attr:
        save_to_file(grep_attr)

    # add macro comments
    save_to_file('%%%%%%%%%%% macro comments %%%%%%%%%%%%%%')
    add_comments(filename, line_num);

    show_fn = ''
    # add comments from show & store fns of standard macros
    if (re.match('DEVICE_ATTR(?:_RO|_RW|_WO)?$', mac)):
       # write a cocci script to get line numbers of show/store if they exist
       cocci_script = 'show_store.cocci'
       temp_cocci_script = replace_cocci(cocci_script, attr, 'attrname')
       func_lines = get_func_lines(temp_cocci_script, filename)
       remove(temp_cocci_script)
       if 'show' in func_lines and len(func_lines['show']) > 0:
            show_fn, line_num = func_lines['show'][0].split()
            save_to_file('%%%%%%%%%%% show comments %%%%%%%%%%%%%%')
            add_comments(filename, line_num)
       if 'store' in func_lines and len(func_lines['store']) > 0:
            line_num = func_lines['store'][0]
            save_to_file('%%%%%%%%%%% store comments %%%%%%%%%%%%%%')
            add_comments(filename, line_num)

    # write another script that extracts comments from struct fields
    # of a standard show fn

    save_to_file('%%%%%%%%%%% struct comments %%%%%%%%%%%%%%')
    if show_fn:
        save_to_file('%%%%% standard macro %%%%%%')
        add_struct_comments(show_fn, filename)
    else:
        save_to_file('%%%%% non-standard macro %%%%%')
        # do a brute force check for show func using all arguments
        command = 'sed \'' + line_num + 'q;d\' ' + filename
        out = run(command)
        # no need for if check, we know it exists
        out =  out.strip(' );\t\n\r').split('(')[1]
        macro_arguments = out.split(',')
        # strip extra spaces
        macro_arguments = [arg.strip() for arg in macro_arguments]
        print (macro_arguments)
        [add_struct_comments(arg, filename) for arg in macro_arguments]
        [add_struct_comments(arg + '_show', filename) for arg in macro_arguments]
        [add_struct_comments('show_' + arg, filename) for arg in macro_arguments]


    # get the first commit that introduced the line
    command = 'git -C ' + kernel_path + ' log --pretty=format:\'%h %ad\' --date=format:\'%m/%Y\' -L ' + line_num + ',' + line_num + ':' + filename +  ' --reverse'
    output = run(command)

    if output:
        res = output.split('\n')[0] # get the oldest commit
        commit_hash, date = res.split()

        # get the commit message that added the attribute
        command = 'git -C ' + kernel_path + ' log -n 1 --pretty=medium ' + commit_hash
        output = run(command)

        if output:
            save_to_file('%%%%%%%%%%% commit message %%%%%%%%%%%%%')
            save_to_file(output)

        command = 'git -C ' + kernel_path + ' tag --contains=' + commit_hash
        output = run(command)
        tags = output.split('\n')
        tags = [tag for tag in tags if tag.startswith('v') and 'rc' not in tag]
        kernel_version = sorted(tags)[0]
        doc_list.append([attr, date, kernel_version])
        print (attr, date, kernel_version)

doc_list = sorted(doc_list, key=lambda x: datetime.datetime.strptime(x[1], '%m/%Y'))
print ("#################################")

contact = input("Contact: ")
contact = contact.split(',')
contact = (',\n\t\t').join(contact)

for doc in doc_list:
    attr, commit_date, kernel_version = doc[0], doc[1], doc[2]
    commit_date = (datetime.datetime.strptime(commit_date, "%m/%Y")).strftime("%b, %Y") # Jan, 2018
    print ('Fill in documentation for: ' + attr, commit_date, kernel_version)
    what = input("What: ")
    lines = ''
    while True:
        line = input('Description: ')
        if line:
            if not line[-1].isspace():
                line += ' ';
            lines += line
        else:
            break
    lines = textwrap.wrap(lines, width=64)
    lines = [line.strip() for line in lines]
    description = '\n\t\t'.join(lines)
    description = '\n\t\t' + description
    print_formatted(f, what, commit_date, kernel_version, contact,
            description)
f.close()

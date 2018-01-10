from pprint import pprint
import subprocess
import join_attrs
import textwrap
import datetime
import argparse

def print_formatted(f, what, commit_date, kernel_version, contact, description):
    print ('What:\t\t' + what, file = f)
    print ('Date:\t\t' + commit_date, file = f)
    print ('KernelVersion:\t' + kernel_version, file = f)
    print ('Contact:\t' + contact, file = f)
    print ('Description:' + description, file = f)
    print ('\n', file = f)

parser = argparse.ArgumentParser(description='find sysfs attributes')
parser.add_argument('-f', '--file', type=str, dest='dir_file',
                    help='linux source files')
args = parser.parse_args()
driver_dir = args.dir_file

attrs_info = join_attrs.print_attrs(driver_dir)
attrs_info_lines = attrs_info.split('\n')
attrs_info_lines = list(filter(None, attrs_info_lines))
pprint (attrs_info_lines)

attrs = [line.split()[0] for line in attrs_info_lines]
kernel_path = '/home/a/projects/linux'
print ("#################################")

f = open('test_doc', 'a')
doc_list = []
for attr in attrs:
    output = subprocess.Popen('git -C ' + kernel_path +
            ' log --pretty=format:\'%h %ad\' --date=format:\'%m/%Y\' -S ' +
            attr + ' --reverse --source ' + driver_dir, stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT, shell=True).communicate()[0].decode('utf-8').strip()

    if output:
        res = output.split('\n')[0] # get the oldest commit
        commit_hash, date = res.split()
        output = subprocess.Popen('git -C ' + kernel_path + ' tag --contains=' +
                commit_hash, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                shell=True).communicate()[0].decode('utf-8').strip()
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

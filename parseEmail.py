from shutil import copy
import email
import os

def get_macros():
   with open("/home/a/projects/attr-doc/result/found_macros.txt", "r") as filename:
       # filter commented lines
       macros = [line for line in filename.readlines() if not line.startswith('#')]
       macros = [macro.split()[0] for macro in macros]
       macros.append('sysfs')
       return macros

mailDir = "/home/a/mail/aishpant/"

def get_files():
    lkmlMailDir = mailDir + "LKML/"
    attrDocDir = mailDir + "attrDoc/new/"
    macros = get_macros()
    count = 1
    for dirpath, dirnames, files in os.walk(lkmlMailDir):
        dirnames[:] = [d for d in dirnames if d in ['new']]
        for fname in files:
            with open(os.path.join(dirpath, fname), "r", encoding='ISO-8859-1') as auto:
                msg = email.message_from_file(auto)
                if msg.is_multipart():
                    path = os.path.realpath(auto.name)
                    print ("Multipart message, skipping..." + path)
                    continue
                msg = msg.get_payload().split('\n')
                msg_lines = [line.strip('+-\t') for line in msg if line.startswith('+') or line.startswith('-')]
                res = [line for macro in macros for line in msg_lines if macro in line]
                if res:
                    print (res)
                    source = os.path.realpath(auto.name)
                    copy(source, attrDocDir)
                    print ("Copying message #" + str(count))
                    count += 1

get_files()

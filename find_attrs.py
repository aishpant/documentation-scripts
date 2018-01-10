import os, glob
import os.path

def get_macros():
   with open("/home/a/projects/attr-doc/result/found_macros.txt", "r") as filename:
       # filter commented lines
       return [line for line in filename.readlines() if not line.startswith('#')]

def write_cocci_output(filename, dir_file):
    print ('Processing file ' + str(filename))
    # run coccinelle on drivers
    os.system('spatch -j 4 --sp-file ' + str(filename) + ' --dir ' + dir_file +
    '>' + '/tmp/out.' + str(os.path.basename(filename)))
    print ('########################################################')

def generate_scripts(dir_file):
    # get all attribute declarers with pos info
    lines = get_macros()
    lines = [x.strip() for x in lines]

    for idx, line in enumerate(lines):
        macro, attr_pos = line.split()
        with open('/tmp/batch_find_' + str(idx) + '.cocci', 'w') as fil:
            fil.write("@initialize:python@\n@@\ns = set()\n\n")
            fil.write("@r@\nexpression list[" + attr_pos + "]" +  "es;\nidentifier attr, i;\ndeclarer mac = " + macro + ";\nposition p;\n@@\n")
            fil.write("mac(es, attr@i@p, ...);\n\n")
            fil.write("@script:python@\nattr<<r.i;\nmac<<r.mac;\np<<r.p;\n@@\n");
            fil.write("s.add((mac, attr, p[0].file))\nprint (s)\n")
            fil.close()

# get all the generated cocci scripts
    cocci_scripts = glob.glob("/tmp/batch_find_*")

    for script in cocci_scripts:
        write_cocci_output(script, dir_file)

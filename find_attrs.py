import os, glob
import os.path

def get_macros():
   with open("result/found_macros.txt", "r") as filename:
       # filter commented lines
       return [line for line in filename.readlines() if not line.startswith('#')]

def write_cocci_output(filename):
    print ('Processing file ' + str(filename))
    # run coccinelle on drivers
    os.system('spatch -j 4 --sp-file ' + str(filename) + ' --dir ~/projects/linux/drivers >' + 'out/out.' + str(os.path.basename(filename)))
    print ('########################################################')

# get all attribute declarers with pos info
lines = get_macros()
lines = [x.strip() for x in lines]

for idx, line in enumerate(lines):
    macro, attr_pos = line.split()
    with open('in/batch_find_' + str(idx) + '.cocci', 'w') as fil:
        fil.write("@initialize:python@\n@@\ns = set()\n\n")
        fil.write("@r@\nexpression list[" + attr_pos + "]" +  "es;\nidentifier attr, i;\ndeclarer mac = " + macro + ";\n@@\n")
        fil.write("mac(es, attr@i, ...);\n\n")
        fil.write("@script:python@\nattr<<r.i;\nmac<<r.mac;\n@@\n");
        fil.write("s.add((mac, attr))\nprint (s)\n")
        fil.close()

# get all the generated cocci scripts
cocci_scripts = glob.glob("in/batch_find_*")

for script in cocci_scripts:
    write_cocci_output(script)

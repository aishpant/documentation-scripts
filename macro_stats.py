import difflib

def read_file(filename):
    with open(filename, 'r') as filename:
        l = filename.read().splitlines()
    return l

def similar(a, b):
    ratio = difflib.SequenceMatcher(None, a, b).ratio() * 100
    #print (str(a) + " ratio " + str(b) + " = " + str(ratio))
    return ratio

macros = read_file('result/all_macros.txt')
attrs = read_file('result/all_attrs.txt')

stats = {}
row = set()
for macro in macros:
    stats[macro.split()[0]] = 0

for macro in macros:
    defn = macro.split()
    max_similarity = 0
    for attr in attrs:
        similarity = similar(defn[1], attr)
        if (similarity > max_similarity):
            max_similarity = similarity
            row.add((defn[1], attr, max_similarity))
    if (max_similarity >= 80):
        stats[defn[0]] += 1
    else:
        stats[defn[0]] -= 1

for k, v in sorted(stats.items(), key=lambda x:x[1], reverse=True):
    if not 'module' in k.lower():
        print (k, v)

def get_attr(filen):
    with open(filen, "r") as filename:
        l = filename.read().splitlines()
    return l

doc_attr = get_attr("result/documented_attrs.txt")
found_attr = get_attr("result/found_attrs.txt")

diff_attr = set(doc_attr) - set(found_attr)
#for attr in sorted(diff_attr):
#    print (attr)

with open('result/undocumented_attrs.txt', 'w') as undoc_attr:
    undoc_attr.write('\n'.join(str(line) for line in diff_attr))
    undoc_attr.write('\n')
print (len(diff_attr))

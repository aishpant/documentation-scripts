


with open('attr.txt') as f:
    lines = f.readlines()

lines = [l.strip() + ',-' if len(l.split(',')) == 4 else l.strip() for l in lines]

for l in lines:
    print (l)

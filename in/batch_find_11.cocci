@initialize:python@
@@
s = set()

@r@
expression list[1]es;
identifier attr, i;
declarer mac = CONFIGFS_ATTR;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)

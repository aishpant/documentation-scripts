@initialize:python@
@@
s = set()

@r@
expression list[0]es;
identifier attr, i;
declarer mac = ROCCAT_COMMON2_BIN_ATTRIBUTE_RW;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)
@initialize:python@
@@
s = set()

@r@
expression list[1]es;
identifier attr, i;
declarer mac = IIO_CONST_ATTR_NAMED;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)

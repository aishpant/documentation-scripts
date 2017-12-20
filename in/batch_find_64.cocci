@initialize:python@
@@
s = set()

@r@
expression list[1]es;
identifier attr, i;
declarer mac = DMI_SYSFS_ATTR;
position p;
@@
mac(es, attr@i@p, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
p<<r.p;
@@
s.add((mac, attr, p[0].file))
print (s)

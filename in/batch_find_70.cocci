@initialize:python@
@@
s = set()

@r@
expression list[0]es;
identifier attr, i;
declarer mac = fc_private_host_rd_attr;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)
@initialize:python@
@@
s = set()

@r@
expression list[1]es;
identifier attr, i;
declarer mac = iscsi_iface_net_attr;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)

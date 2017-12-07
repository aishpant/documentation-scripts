@initialize:python@
@@
s = set()

@r@
expression list[5]es;
identifier attr, i;
declarer mac = SENSOR_DEVICE_ATTR_2;
@@
mac(es, attr@i, ...);

@script:python@
attr<<r.i;
mac<<r.mac;
@@
s.add((mac, attr))
print (s)

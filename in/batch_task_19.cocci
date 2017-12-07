@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(queue_working_time\|hard\|ce_count\|comp_vector\|pages_shared\|ctxid_mask\|hw_version_minor\|trigger_event\|in_voltageY_q_offset\|ovl_mode\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

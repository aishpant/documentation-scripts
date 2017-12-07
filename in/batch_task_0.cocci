@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(memoryY\|link_mode\|nr_ctxid_cmp\|module\|btree_cache_size\|probe\|kbd_backlight_mode\|oo_req\|red_zone\|type\|LQE\|wr_req\|in_voltageY_roc_falling_period\|enable\|in_voltageY_thresh_falling_hysteresis\|units\|clear_stats\|prtcstns\|masters\|in_temp_y_raw\|meas_conf\|adc\|in_accel_z_calibbias\|in_voltageY_q_index\|led1\|avoid_reset_quirk\|in_pressure_type\|objs_per_slab\|gisb_arb_timeout\|hwfifo_enabled\|current_kb\|intr_coalesce\|in_magn_z_scale\|low_kb\|l2_bright_max\|in_anglvel_z_raw\|contrast\|loaded_cluster_plugins\|in_rot_from_north_true_roc_rising_en\|seq_reset_event\|ce_noinfo_count\|next_checkpoint\|in_accel_y_calibbias\|ro_mode\|in_anglvel_y_en\|in_incli_type\|max_write_request\|timeouts\|in_anglvel_type\|throttle_stats\|in_rot_from_north_true_tilt_comp_thresh_rising_hysteresis\|class_id\|freerunning_clock\|autosuspend\|in_voltage_offset\|fw_status\|in_anglvel_x_raw_thresh_falling_value\|in_count0_quadrature_mode\|in_rot_from_north_true_en\|trcidr9\|in_accel_x_thresh_falling_en\|b_bus_req\|out_voltageY_scale\|in_illuminance_lux_table\|rx_crc_errors\|port_id\|in_magn_z_thresh_rising_hysteresis\|constraint_X_power_limit_uw\|last_nongc_write_time_secs\|collect_privileged\|alloc_fastpath\|kbd_backlight_timeout\|src\|reclaim_account\|custom_divisor\|objects_partial\|in_distance_en\|dev_id\|lid_resume\|in_rot_from_north_magnetic_roc_falling_en\|preferred_role\|ovl_rop3\|catalog\|dirty_nats_ratio\|n_external_timestamps\|in_uvindex_input\|in_rot_from_north_magnetic_raw\|mm_stat\|in_mask\|cp_interval\|in_activity_walking_thresh_rising_value\|in_magn_z_index\|in_anglvel_thresh_rising_low_pass_filter_3db\|alloc_slab\|cpu\|in_accel_x_calibbias\|in_incli_y_index\|in_voltageY_offset\|in_illuminance_input\|rx_fifo_errors\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(bitflip_threshold\|last_seg_sequence\|hbm_ver\|startup\|ffsr\|psr\|in_voltageY_supply_raw_roc_falling_value\|access\|mem_sleep\|cntr_idx\|in_temp_object_calibemissivity\|auto_brightness\|seconds_since_reset\|in_voltage_q_offset\|gw_sel_class\|in_allow_async_readout\|in_magn_x_raw_roc_falling_value\|in_accel_y_thresh_falling_period\|vdo\|writeback_percent\|cooling_method\|power_uw\|vconn_source\|total_eraseblocks\|in_count_quadrature_mode_available\|README\|pllY_locked\|ledd\|mount_matrix\|devid\|illuminance_threshY_falling_value\|devspec\|max_victim_search\|timeleft\|livepatch\|suspend_disk_state\|pages_volatile\|in_activity_walking_thresh_falling_period\|hwfifo_watermark_min\|initstate\|cpufv\|device_is_integrity_capable\|in_rot_from_north_true_tilt_comp_roc_falling_period\|nr_pe_cmp\|trcpidr1\|dragging\|max_read_request\|in_voltageY_supply_thresh_falling_period\|dep_link\|in_magn_z_en\|in_proximity_sampling_frequency_available\|temp_deactivated\|phy_interface\|wakeup_active_count\|ndp_to_end\|tx_aborted_errors\|trclsr\|gw_bandwidth\|usb488_device_capabilities\|buffer\|in_accel_y_roc_rising_en\|in_accel_y_thresh_either_hysteresis\|in_timestamp_en\|out_resistance_raw_available\|in_steps_change_en\|nofua\|constraint_X_name\|TermChar\|durations\|in_tempY_roc_rising_period\|delete\|in_magn_x_roc_rising_en\|ctl\|iomem_base\|sensitivity\|wakeup_expire_count\|writeback_running\|discard\|in_magn_z_thresh_rising_en\|max_writeback_mb_bump\|log_buf_addr\|remove\|in_rot_from_north_magnetic_tilt_comp_scale\|in_magn_filter_low_pass_3db_frequency\|chid\|in_rot_from_north_true_tilt_comp_index\|reset_counters\|next_pseg_offset\|pm_wakeup_irq\|write_grant_head\|writeback_delay\|system-powercap\|memory\|wakeup_active\|physical_block_size\|in_voltageY_roc_falling_en\|trickle_charge_bypass\|cpulist\|hwfifo_watermark_available\|in_magn_x_raw\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(rx_dropped\|pages_to_scan\|in_voltageY_i_offset\|enable1\|iomem_reg_shift\|trace\|in_tempY_raw_roc_falling_value\|free_add_partial\|in_anglvel_mount_matrix\|in_voltageY_i_type\|isci_id\|in_temp_x_raw\|in_magn_x_thresh_falling_hysteresis\|eco_mode\|wakeup_time\|ctor\|rd_sect\|hop_penalty\|chkcfg\|tx_maxrate\|cur_freq\|avail_eraseblocks\|mtd_num\|irq\|remove_single_major\|hot_add\|ifindex\|in_magn_z_raw_roc_falling_value\|clock_divider\|fwinfo\|etmccer\|last_pseg_block\|in_illuminance0_thresh_falling_value\|in_voltage_q_scale\|in_accel_mag_en\|minimum_io_size\|stepping\|in_pressureY_en\|distance\|partial\|timeout\|in_anglvel_x_index\|device_capabilities\|in_anglvel_z_raw_thresh_rising_value\|in_anglvel_y_raw_roc_rising_value\|next_bitstream\|orig_dgid\|max_flash_timeout\|pm_trace\|max_brightness\|in_magn_matrix\|destroy_by_rcu\|in_magn_scale\|in_magn_z_raw_roc_rising_value\|in_intensity0_thresh_period\|duplex\|in_rot_from_north_magnetic_tilt_comp_index\|in_accel_y_peak_raw\|node\|max_ec\|min_ssr_sections\|hold_time\|chip_name\|shutdown\|isolation_mark\|in_magn_x_scale\|irqs_max\|install\|in_concentration_VOC_short_raw\|device_size\|dgid\|in_voltageY_thresh_either_hysteresis\|seq_event\|alloc_slowpath\|wakeup_total_time_ms\|enhanced_area_offset\|last_seg_write_time_secs\|wlan\|in_voltageY_index\|actual_brightness\|srp\|owned\|dwNtbOutMaxSize\|in_anglvel_y_roc_falling_en\|flash_block_size\|u3_exit\|in_magn_z_roc_falling_period\|in_voltage-voltage_scale\|in_magn_z_oversampling_ratio\|in_pressure_scale\|tcu\|mesh_iface\|BPST\|id\|status0_luminance\|in_accel_y_mag_rising_en\|tag_size\|in_rot_from_north_true_tilt_comp_raw_roc_rising_value\|in_anglvel_x_roc_rising_en\|flash_blocks_num\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

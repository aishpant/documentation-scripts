@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(zero_req_lim\|max_freq\|in_rot_from_north_magnetic_roc_rising_en\|in_intensity_green_hardwaregain\|runtime\|in_accel_mount_matrix\|in_accel_x_offset\|display\|in_intensityY_resistance\|hid\|in_indexY_synchronous_mode\|trcdevtype\|device_name\|dst\|sb_write_time\|ieee1394_id\|rx_over_errors\|beacon_timeout_ms\|rev\|ns_exlevel_vinst\|channel_vp_mapping\|bb_ctrl\|ra_nid_pages\|in_accel_x_thresh_rising_en\|reload_bitstream\|alloc_calls\|bonding\|in_anglvel_y_roc_rising_en\|in_proximity_scale\|battery_low\|wusb_retry_count\|in_countY_quadrature_mode\|sequential_cutoff\|a_clr_err\|in_magn_y_raw\|flow_cntrl\|wNdpOutPayloadRemainder\|major\|wusb_chid\|in_rot_from_north_magnetic_index\|in_velocity_calibheight\|in_magn_thresh_rising_low_pass_filter_3db\|target_freq\|nvmem\|id_header\|in_magn_x_roc_rising_period\|scan_elements\|in_accel_x_thresh_either_hysteresis\|partition_count\|in_distance_input\|inject_rate\|min_freq\|vbus\|in_anglvel_y_raw_thresh_rising_value\|usbip_status\|status_led0_select\|out_altvoltageY_refin_frequency\|caia_version\|in_magn_y_thresh_either_hysteresis\|turbo_mode\|in_anglvel_z_thresh_either_hysteresis\|in_rot_from_north_magnetic_tilt_comp_roc_rising_period\|rs485\|perf_history_size\|in_rot_quaternion_type\|use_blk_mq\|alignment_offset\|addr_single\|tx_compressed\|discard_max_bytes\|in_accel_z_roc_rising_period\|in_magn_x_raw_roc_rising_value\|in_accel_peak_scale\|kernel_max\|in_energy_en\|modulbus_number\|led2\|wake_unlock\|auto_fan\|max_persistent_grants\|invert\|in_anglvel_x_thresh_either_hysteresis\|iostat_enable\|gc_no_gc_sleep_time\|in_countY_count_mode\|sustain\|powercap\|in_rot_from_north_true_tilt_comp_thresh_rising_en\|opmode\|l3_office_dim\|compiler\|in_magn_type\|in_anglvel_x_raw_thresh_rising_value\|reserved_blocks\|target_kb\|trcidr12\|is_a_peripheral\|compact\|in_pressure_scale_available\|writesize\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

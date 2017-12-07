@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(top_off_threshold_current\|pro_calib\|in_accel_thresh_falling_value\|in_magn_y_index\|out_altvoltage_powerdown_mode\|rx_trig_bytes\|sync_freq\|optimal_io_size\|l1_daylight_max\|req_lim\|in_voltageY_thresh_rising_value\|sirq\|etmccr\|in_count0_trigger_mode\|in_magn_y_raw_roc_falling_value\|mc_name\|in_proximity_en\|in_accel_x_raw_thresh_rising_value\|in_rot_from_north_true_thresh_rising_period\|jumpers\|turbo_cooldown\|addr_instdatatype\|chunk_sectors\|announce\|firmware\|unbind\|active_cluster_plugin\|etmidr\|in_accel_y_en\|class\|log\|size\|is_otg\|enable_compliance\|mb_min_to_scan\|camera\|pins\|reset_protection\|in_tempY_thresh_falling_period\|base_clock\|in_rot_from_north_magnetic_tilt_comp_thresh_rising_en\|n_pins\|in_activity_running_thresh_rising_en\|oversampling_ratio\|in_magn_y_thresh_rising_period\|inverted\|in_magn_x_roc_falling_en\|in_rot_from_north_true_tilt_comp_roc_rising_en\|wusb_dnts\|pending\|cpuslab_flush\|ecc_strength\|mem_limit\|u3_entry\|iflink\|in_energy_raw\|in_proximity_input\|current_master\|in_activity_jogging_thresh_rising_value\|out_voltageY_raw\|in_voltageY_i_en\|in_voltageY_supply_thresh_rising_period\|throughput_override\|l2_bright_dim\|lowest_supported_fw_version\|in_anglvel_x_raw\|in_rot_from_north_magnetic_tilt_comp_roc_falling_period\|inject_type\|sriov_totalvfs\|align\|buildid\|fw_type\|device\|alignment\|in_temp_scale\|in_magn_z_roc_rising_en\|suspend_mem_microvolts\|pm_qos_no_power_off\|event_instren\|in_voltage_scale\|in_temp_calibemissivity\|in_accel_y_raw_thresh_falling_value\|trcidr13\|in_anglvel_z_raw_thresh_falling_value\|process\|protocols\|in_voltage_i_index\|in_energy_scale\|fuse\|in_accel_z_mag_rising_en\|in_intensity_scale_available\|curr_bitstream\|in_magn_x_raw_thresh_rising_value\|broadcast\|fw_resource_count_max\|pch_mac\|buttons_luminance\|auto_abort\|dscr\|in_illuminanceY_input\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

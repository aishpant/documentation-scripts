@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(l4_indoor_dim\|extension\|mdev_type\|high_impedance_enable\|oversampling_ratio_available\|in_magn_y_scale\|netdev_group\|log_buf_len\|hw_override\|ipu_policy\|sgid\|max_comp_streams\|beacon\|in_accel_x_thresh_falling_period\|capabilities\|upd_marker\|in_rot_from_north_true_index\|checkpoints_number\|hwevent_enable\|io_stat\|in_tempY_roc_rising_en\|in_index_index_polarity_available\|wakeup_filter\|in_velocity_calibgender\|gw_mode\|in_magn_y_raw_thresh_falling_value\|in_proximity0_thresh_period\|in_humidityrelative_raw\|boot_params\|cpu_capacity\|tx_timer_usecs\|flash_erase\|alloc_refill\|seq_13_event\|out_currentY_raw\|in_accel_type\|in_accel_y_roc_falling_en\|usb2_lpm_l1_timeout\|in_tempY_thresh_falling_hysteresis\|config_table\|in_illuminance0_thresh_falling_hysteresis\|in_voltageY_raw_roc_falling_value\|in_pressureY_calibbias\|seq_state\|out_voltage_powerdown_mode_available\|in_accel_scale_available\|addr_acctype\|port_enable\|snapshots_number\|ambient_light_level\|in_accel_z_thresh_falling_hysteresis\|wNdpInAlignment\|wNdpInPayloadRemainder\|ring_active\|pages_sharing\|bl_power\|state\|in_accel_y_thresh_rising_period\|perf_time_interval_secs\|numvmidc\|RSSI\|in_voltageY_thresh_rising_period\|wusb_device_band_groups\|corrected_bits\|in_capacitanceY-in_capacitanceZ_raw\|enable_sink\|in_gravity_y_raw\|hwcache_align\|enable_source\|in_accel_x_roc_falling_en\|idle_interval\|wusb_cdid\|in_anglvel_z_roc_falling_period\|in_accel_matrix\|ring_size\|usb_rapid_charge\|model\|in_magn_thresh_rising_high_pass_filter_3db\|traceid\|target_latency\|chreset_timeout_cycles\|in_accel_x_roc_rising_en\|bridge_loop_avoidance\|in_capacitanceY_raw\|in_rot_from_north_true_thresh_falling_hysteresis\|flash_fault\|high_kb\|in_anglvel_y_raw_roc_falling_value\|c2portX\|in_activity_jogging_thresh_falling_period\|in_voltageY_raw_thresh_falling_value\|dev_loss_tmo\|in_velocity_calibgender_available\|fscaps\|reclaim_segments\|identity\|eraseblock_size\|extra\|etmsr\|in_voltageY_thresh_falling_period\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

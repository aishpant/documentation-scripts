@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(connected_duration\|min_hot_blocks\|fw_resource_count\|in_illuminance_clear_raw\|parent\|in_accel_x_en\|in_anglvel_x_thresh_rising_period\|in_humidityrelative_offset\|num_users\|pll1_reference_clk_a_present\|in_anglvel_filter_low_pass_3db_frequency\|name_assign_type\|addr_start\|control\|top_off_timer\|pch_firmware\|DevAddr\|in_indexY_index_polarity\|in_timestamp_type\|in_rot_from_north_true_tilt_comp_scale\|stop_timeout\|in_tempY_raw_thresh_rising_value\|hwfifo_timeout\|bypassed\|in_magn_y_roc_rising_period\|in_rot_from_north_magnetic_tilt_comp_roc_falling_en\|last_attempt_status\|deactivate_remote_frees\|cmdline\|numeraseregions\|current_profile\|mac_address\|available_governors\|in_countY_count_direction\|read_verify\|product_vendor\|slot_timeout_secs\|in_illuminance0_threshY_hysteresis\|nodename\|in_energy_calibgender\|deactivate_to_head\|wNtbOutMaxDatagrams\|in_accel_y_mag_falling_en\|location\|in_magn_x_en\|in_voltageY_supply_raw_thresh_rising_value\|country\|pmu_features\|numa_node\|assert\|in_accel_x&y&z_mag_falling_en\|cntrldvr\|w1_seq\|pm_qos_resume_latency_us\|tx_bytes\|etmcr\|in_pressureY_raw\|in_activity_jogging_thresh_falling_en\|in_altvoltageY_compare_interval\|gc_idle\|in_currentY_i_offset\|cap\|max_schedule_delay\|in_rot_from_north_true_tilt_comp_thresh_falling_period\|in_rot_from_north_magnetic_en\|out_altvoltageY_phase\|in_activity_walking_thresh_falling_value\|in_accel_x_raw_roc_rising_value\|afu_err_buf\|in_tempY_roc_falling_en\|hwfifo_watermark\|mb_stats\|in_countY_preset\|available_kbd_modes\|resource_in_use\|in_steps_input\|bootmode\|max_wr_xactions\|driver_override\|rx_missed_errors\|in_magn_y_roc_falling_period\|sync_dividers\|in_pressure_input\|freqdomain_cpus\|wusbhc\|logical_block_size\|in_rot_from_north_true_raw_roc_falling_value\|a_bus_req\|psl_timebase_synced\|multicast\|in_steps_debounce_count\|in_voltage_i_scale\|in_rot_quaternion_en\|in_anglvel_z_raw_roc_rising_value\|uuid\|tempsens\|in_magn_x_oversampling_ratio\|available_frequencies\|active\|rx_bytes\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

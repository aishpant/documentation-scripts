@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(triggerX\|wake_lock\|label\|perf_counter_reset\|path\|in_accel_z_raw_thresh_falling_value\|persistent\|discard_zeroes_data\|in_activity_jogging_thresh_falling_value\|in_intensity_green_integration_time\|in_gravity_x_raw\|trcconfig\|ambient_light_zone\|in_rot_from_north_magnetic_tilt_comp_thresh_falling_hysteresis\|in_magn_scale_available\|in_concentrationX_voc_raw\|current_last_full_seg\|in_accel_x_mag_en\|oobsize\|press_speed\|sysoff_enable\|mb_max_to_scan\|wakeup_data\|prtcvers\|octave\|seq_23_event\|in_accel_z_roc_rising_en\|rps_cpus\|in_humidityrelative_scale\|numastat\|pm_debug_messages\|soc\|linear\|boost\|in_voltage_supply_scale\|polling_interval\|ltr_mode\|in_currentY_scale\|in_accel_z_thresh_rising_hysteresis\|in_accel_y_raw\|autosuspend_delay_ms\|prtcrevs\|bind\|event_vinst\|max_rd_xactions\|in_currentY_supply_scale\|hot_reset\|in_count_enable_mode_available\|enabled\|add_trigger\|dimm_location\|in_illuminance0_calibbias\|pll2_reference_clk_present\|in_accel_z_mag_en\|free_frozen\|segments_number\|in_energy_calibheight\|in_anglvel_z_thresh_rising_en\|msi_bus\|xmit_fifo_size\|ifalias\|port_select\|sriov_numvfs\|in_count_trigger_mode_available\|latency\|comp_algorithm\|hwfifo_watermark_max\|phys_device\|w1_master_timeout_us\|collisions\|pm_print_times\|in_anglvel_x_roc_rising_period\|in_accel_y_thresh_rising_hysteresis\|als_en\|in_count0_preset\|in_accel_y_offset\|min_tx_pkt\|status_led1_select\|in_anglvel_z_calibbias\|in_incli_y_en\|size_mb\|in_accel_x_thresh_falling_hysteresis\|guest_type\|inflight\|cache_misses\|family\|max_location\|in_anglvel_y_thresh_falling_period\|in_activity_running_thresh_falling_period\|closing_wait\|in_distance_calibgender\|operstate\|iface_status\|in_accel_z_index\|removable\|in_activity_jogging_input\|mode\|in_magn_x_raw_thresh_falling_value\|out_resistanceX_raw\|mb_order2_req\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

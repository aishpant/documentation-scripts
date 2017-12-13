@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
identifier i;
@@
f(es,
	\(physfn@i\|elog@i\|npwm@i\|wakeup_abort_count@i\|in_accel_thresh_rising_high_pass_filter_3db@i\|in_magn_z_thresh_falling_period@i\|channel_vp_mapping@i\|alloc_slab@i\|key@i\|cache_dma@i\|panel_power_on@i\|in_magn_y_roc_falling_period@i\|family@i\|cpumap@i\|bad_blocks@i\|in_mask@i\|fw_class@i\|in_accel_x&y&z_mag_falling_period@i\|in_count0_preset@i\|in_accel_thresh_rising_value@i\|in_illuminance_calibscale@i\|idle_interval@i\|reset@i\|is_otg@i\|trcpidr3@i\|out_voltageY_powerdown_mode@i\|name_assign_type@i\|in_illuminance0_thresh_falling_value@i\|gsmi@i\|sriov_numvfs@i\|in_illuminance0_calibbias@i\|in_pressure_en@i\|ue_noinfo_count@i\|unique_id@i\|closing_wait@i\|soc_id@i\|in_voltage_i_index@i\|local_ib_port@i\|in_steps_change_value@i\|out_voltageX_scale_available@i\|in_distance_raw@i\|in_pressure_input@i\|roles@i\|component_id@i\|access@i\|in_power_shunt_resistor@i\|in_capacitanceY_raw@i\|wakeup@i\|in_magn_x_roc_falling_period@i\|remove_id@i\|extra@i\|owned@i\|in_accel_y_thresh_falling_period@i\|in_voltage-voltage_scale@i\|power_uw@i\|in_accelX_power_mode@i\|in_rot_from_north_true_tilt_comp_index@i\|in_rot_from_north_magnetic_tilt_comp_roc_rising_en@i\|module@i\|auto_ltr@i\|pages_volatile@i\|period@i\|freerunning_clock@i\|in_temp_raw@i\|in_voltageY_raw_thresh_rising_value@i\|master_mode@i\|device_capabilities@i\|max_vol_count@i\|hwfifo_watermark_available@i\|in_temp_calibemissivity@i\|orig_interval@i\|minor@i\|read_verify@i\|read_cnt@i\|in_voltage_q_offset@i\|pro_calib@i\|in_illuminance_calibrate@i\|in_magn_z_scale@i\|ns_exlevel_vinst@i\|suspend_disk_state@i\|seq_21_event@i\|in_activity_running_input@i\|id_header@i\|in_tempY_thresh_rising_hysteresis@i\|in_activity_walking_thresh_rising_value@i\|in_accel_z_roc_falling_period@i\|wakeup_filter@i\|max_victim_search@i\|in_activity_running_thresh_falling_value@i\|write_ms@i\|physical_block_size@i\|sleep_millisecs@i\|ring_active@i\|cntr_rld_event@i\|in_magn_x_raw_roc_falling_value@i\|in_accel_z_raw@i\|auto_brightness@i\|in_magn_y_raw@i\|in_pressure_calibbias@i\|dimm_dev_type@i\|in_anglvel_x_thresh_rising_period@i\|sriov_drivers_autoprobe@i\|in_accel_mag_falling_en@i\|distance@i\|in_rot_from_north_magnetic_thresh_falling_hysteresis@i\|flow_cntrl@i\|etmccr@i\|interface_capabilities@i\|wNdpInDivisor@i\|product_id\)
,...);

@script:python@
f<<r.f;
p<<r.n;
i<<r.i;
@@
s.add((f,i,p))
print (s)

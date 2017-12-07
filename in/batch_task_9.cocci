@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(address\|in_accel_z_thresh_rising_en\|in_pressure_offset\|n_periodic_outputs\|batched_trim_sections\|in_mount_matrix\|min_io_size\|nvm_authenticate\|in_power_shunt_resistor\|taint\|out_voltageY_powerdown_mode_available\|in_gravity_z_raw\|heater_enable\|wr_sect\|in_concentration_co2_raw\|touchpad\|in_voltageY_thresh_falling_value\|als_setting\|vs_operations\|in_accel_x_peak_raw\|in_countY_noise_error\|in_activity_running_thresh_rising_value\|dev_name\|in_voltageY_en\|wakeup\|trcidr5\|in_rot_from_north_true_roc_rising_period\|online\|role\|in_pressureY_calibscale\|in_magn_z_raw_thresh_falling_value\|in_voltageY-voltageZ_en\|blocks_count\|dimm_ue_count\|pm_profile\|constraint_X_max_power_uw\|in_voltageY_sensing_mode\|pwm\|per_cpu_count\|log_head_lsn\|portX\|in_magn_z_thresh_falling_en\|cardr\|in_anglvel_y_roc_falling_period\|add_mux\|in_activity_running_input\|trcidr4\|dirty_data_blocks_count\|capsule_flags\|in_activity_still_thresh_rising_value\|active_duration\|run\|in_voltageY_supply_index\|wakeup_prevent_sleep_time_ms\|raw_ip\|in_magn_x_thresh_falling_period\|reserved_ebs\|in_rot_from_north_magnetic_scale\|in_tempY_thresh_falling_en\|max\|in_steps_en\|out_mount_matrix\|transition_action\|aggregated_ogms\|fn_lock\|persist\|vma_ra_enabled\|dump\|port\|in_current_q_offset\|suspend_standby_mode\|supported_accessory_modes\|acciopath_status\|in_intensity_blue_integration_time\|in_anglvel_x_thresh_rising_hysteresis\|trg\|fw_resource_version\|store_eeprom\|in_rot_from_north_true_tilt_comp_thresh_either_hysteresis\|in_rot_from_north_magnetic_raw_roc_rising_value\|in_magn_y_thresh_falling_en\|n_alarms\|bad_peb_count\|is_local\|descriptors\|nodeY\|in_rot_from_north_magnetic_tilt_comp_thresh_rising_hysteresis\|tx_carrier_errors\|in_rot_from_north_magnetic_thresh_rising_hysteresis\|wusb_host_band_groups\|in_anglvel_z_en\|pm_qos_latency_tolerance_us\|shutdown_status\|in_pressure_en\|unpair_remote\|power_role\|total_objects\|cntr_val\|local_ib_device\|component_vendor\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(in_rot_from_north_magnetic_tilt_comp_roc_rising_en\|busnum\|in_rot_from_north_magnetic_thresh_either_hysteresis\|usb_charge\|max_microvolts\|event_ts\|in_rot_from_north_true_tilt_comp_thresh_falling_en\|last_seg_checkpoint\|in_magn_y_raw_roc_rising_value\|in_anglvel_x_calibbias\|in_magn_y_roc_rising_en\|delayed_allocation_blocks\|in_anglvel_z_thresh_falling_period\|write_avail\|seq_12_event\|trigger_polarity_available\|last_seg_write_time\|in_rot_from_north_true_raw\|in_accel_thresh_rising_low_pass_filter_3db\|profiling\|dev_desc\|description\|in_pressureY_scale\|ASIE\|in_anglvel_filter_high_pass_3db_frequency\|out_mask\|in_countY_raw\|bgt_enabled\|report_descriptor\|interface_capabilities\|in_anglvel_y_calibbias\|order\|in_tempX_input\|in_electricalconductivity_raw\|usb_power_delivery_revision\|in_anglvel_z_quadrature_correction_raw\|nrseqstate\|meas_conf_available\|in_pressure_calibbias\|schedule_delay\|in_accel_x_raw_thresh_falling_value\|in_magn_y_thresh_falling_period\|trcidr2\|tree_depth\|in_activity_running_thresh_falling_value\|in_intensityY_capacitance\|mtu\|out_altvoltageY_powerdown_mode\|in_voltageY_q_type\|in_rot_from_north_true_tilt_comp_thresh_falling_hysteresis\|current_reserved_blocks\|in_count_count_direction_available\|debug_stat\|u2_timeout\|in_rot_from_north_magnetic_thresh_rising_period\|in_magn_y_thresh_rising_en\|in_voltage_q_en\|dirty_segments\|btree_written\|full_scans\|sriov_drivers_autoprobe\|actual_profile\|remote_mode\|roles\|proximity_on_chip_ambient_infrared_suppression\|tx_packets\|ap_isolation\|gc_urgent\|debug_flag\|in_capacitance_scale_available\|camera_power\|lcd_power\|in_steps_change_value\|in_anglvel_scale_available\|in_accel_z_raw_mag_rising_value\|min_microamps\|in_intensityY_offset\|target\|in_pressure_index\|in_magn_y_roc_falling_en\|carrier\|pubek\|expanded\|pe\|physical_device\|in_currentX_i_raw\|elog\|service_id\|in_rot_from_north_magnetic_thresh_falling_hysteresis\|disk\|out_altvoltageY_raw\|in_rot_from_north_magnetic_tilt_comp_thresh_rising_period\|get_dev_desc\|channels\|tx_max\|config\|in_accel_raw_mag_value\|cpumap\|in_rot_from_north_magnetic_roc_falling_period\|prefault_mode\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

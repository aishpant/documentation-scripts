@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(in_incli_z_raw\|in_anglvel_scale\|api_version_compatible\|in_current_i_offset\|pkey\|usb2_hardware_lpm\|in_current_scale\|in_powerY_raw\|constraint_X_min_time_window_us\|sampling_frequency\|out_altvoltageY_scale\|vpd\|devices\|in_magn_x_thresh_either_hysteresis\|in_rot_from_north_true_tilt_comp_thresh_rising_period\|format\|constraint_X_min_power_uw\|in_accel_y_thresh_falling_hysteresis\|in_anglvel_x_thresh_falling_en\|mb_stream_req\|in_accel_thresh_rising_value\|in_voltageY_supply_en\|in_anglvel_y_roc_rising_period\|store_user\|weight\|etmtraceidr\|backing_dev\|position\|extts_enable\|ffcr\|discard_granularity\|ctlr_X\|heartbeat_enable\|nr_cntr\|out_voltageY_powerdown_mode\|in_rot_from_north_true_tilt_comp_roc_rising_period\|operation_mode_delay\|last_nongc_write_time\|in_accel_z_en\|next_full_seg\|phy_id\|in_illuminance_scale_available\|in_rot_from_north_true_roc_falling_period\|sb_update_frequency\|authorized\|in_illuminance0_thresh_either_en\|meminfo\|ctxid_masks\|out_current_heater_raw\|psl_revision\|in_anglvel_z_roc_rising_en\|in_anglvel_y_thresh_falling_en\|erasesize\|cyc_threshold\|fast_charge_timer\|in_rot_from_north_true_tilt_comp_raw\|lab\|energy_uj\|in_intensityY_both_raw\|wakeup_filter_mask\|hw_version_major\|reserved_regions\|trigger_now\|flags\|in_accel_x&y&z_mag_falling_period\|soc_id\|ctxid_idx\|in_tempY_thresh_rising_period\|vendor\|write_byte_cnt\|gps\|start_triggers\|in_rot_from_north_true_raw_roc_rising_value\|in_proximity0_calibbias\|maximum_speed\|dimm_edac_mode\|pmu_mode\|in_rot_from_north_magnetic_tilt_comp_raw_thresh_falling_value\|supported_roles\|cpu_slabs\|validate\|wNdpOutAlignment\|res_idx\|battery_life_extender\|pages_unshared\|in_voltageY_raw_thresh_rising_value\|in_accel_z_raw_thresh_rising_value\|in_currentY_q_offset\|component_id\|power_operation_mode\|in_tempY_roc_falling_period\|ecc_step_size\|in_gyro_matrix\|in_voltageY_raw\|in_accel_type_available\|s_exlevel_vinst\|socX\|in_voltageY_supply_raw_thresh_falling_value\|nomerges\|in_accel_z_thresh_falling_period\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(rx_length_errors\|phydev\|corrupted\|in_voltageY_q_raw\|vmcoreinfo\|devtype\|protection_level\|in_accel_y_raw_roc_falling_value\|writeback\|in_rot_from_north_magnetic_raw_thresh_rising_value\|select_right\|in_voltageY_supply_thresh_rising_en\|in_accel_z_thresh_either_hysteresis\|in_voltageY_supply_roc_falling_en\|pps_enable\|termination\|in_current_i_scale\|wakeup_count\|addr_stop\|in_count_polarity_available\|dev\|product_revision\|npwm\|in_currentY_offset\|in_voltage_i_type\|rtc_calibration\|constraint_X_time_window_us\|otg_mode\|clock_name\|in_voltage_type\|trcpidr3\|in_voltageY_i_index\|ch_count\|elp_interval\|in_rot_from_north_true_tilt_comp_raw_thresh_falling_value\|inodes_count\|in_anglvel_x_raw_roc_rising_value\|ibdev\|disp\|sleep_functions_on_battery\|in_proximityY_raw\|in_voltage_q_type\|sun\|bmNtbFormatsSupported\|partition\|tx_errors\|in_flight\|d3cold_allowed\|merge_across_nodes\|nowayout\|kbd_function_keys\|wakeup_abort_count\|brightness_hw_changed\|combine_pedals\|id_ext\|io_ns\|in_magn_z_thresh_falling_period\|image_size\|in_illuminance0_zone\|conversion_mode\|nr_pages\|unexport\|gc_max_sleep_time\|pll2_feedback_clk_present\|funnel_ctrl\|in_tempY_thresh_rising_hysteresis\|in_activity_still_thresh_falling_en\|out_altvoltage_powerdown_mode_available\|cancel\|interrupts\|trcpidr2\|in_voltage-voltage_scale_available\|object_size\|in_rot_from_north_magnetic_tilt_comp_thresh_either_hysteresis\|in_accel_z_raw_roc_falling_value\|in_anglvel_y_thresh_falling_hysteresis\|in_activity_jogging_thresh_rising_period\|in_activity_still_input\|seq_21_event\|add_target\|in_voltageY_raw_roc_rising_value\|trcpidr0\|gsmi\|irqs_min\|in_magn_z_thresh_rising_period\|cpu_to_gpu_X\|caps\|ovl_alpha\|in_voltageX_scale_available\|manuf\|wusb_ck\|in_activity_walking_thresh_rising_period\|res_ctrl\|in_rot_from_north_magnetic_tilt_comp_raw_roc_falling_value\|soft\|max_vol_count\|in_voltage_i_en\|bypass\|last_attempt_version\|macro_mode\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

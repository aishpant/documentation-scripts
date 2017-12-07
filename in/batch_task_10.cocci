@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(lifetime_write_kbytes\|in_concentrationX_raw\|in_accel_y_raw_thresh_rising_value\|stretch\|in_accel_z_peak_raw\|in_count0_polarity\|cache\|wusb_disconnect\|uid\|in_activity_walking_thresh_falling_en\|current_trigger\|allow_ext_sg\|rescan\|charge_now\|unique_id\|in_voltageY_q_scale\|settings\|in_energy_input\|seq_32_event\|written\|trcidr10\|in_accel_y_raw_roc_rising_value\|pwmX\|suspended\|in_rot_from_north_true_scale\|transition\|ue_count\|phys_port_name\|in_accel_z_raw_roc_rising_value\|mb_group_prealloc\|security\|connect_type\|extent_max_zeroout_kb\|eject\|vmid_masks\|rdp\|dir_level\|polarity\|cmd_sg_entries\|pm_async\|in_voltageY_supply_type\|in_voltageY_thresh_falling_en\|in_intensity_red_hardwaregain\|feature\|in_activity_still_thresh_falling_value\|hot_remove\|current_seg_sequence\|in_ph_raw\|resid_cnt\|panel_power_on\|session_write_kbytes\|in_activity_running_thresh_rising_period\|deactivate_full\|in_tempY_raw_roc_rising_value\|function\|etmscr\|in_voltageY_thresh_either_en\|supports_autosuspend\|in_pressureY_scale_available\|in_magn_z_thresh_falling_hysteresis\|led\|in_rot_quaternion_index\|available_cpufv\|freerunning_timer\|delay_off\|usable_eb_size\|in_magn_x_thresh_rising_hysteresis\|f_req\|status1_luminance\|in_shunt_resistor\|fast_io_fail_tmo\|async\|trigger_cntr\|phys_index\|force_power\|in_accel_x_mag_rising_en\|current_speed\|in_timestamp_index\|out_conversion_mode\|in_tempY_offset\|attached_dev\|routing_algo\|ram_thresh\|in_illuminanceY_raw\|in_illuminanceY_mean_raw\|fw_class\|in_accel_z_roc_falling_period\|in_currentY_i_scale\|in_pressureY_offset\|blocks_per_segment\|out_altvoltageY&Z_raw\|in_anglvel_z_index\|possible\|uwb_rc\|startup_profile\|trcpdsr\|in_tempY_raw_thresh_falling_value\|ecap\|has_high_memory\|cert_stat\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

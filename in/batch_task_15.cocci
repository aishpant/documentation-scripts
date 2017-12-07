@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(out_voltageY_powerdown\|in_magn_x_thresh_rising_en\|companion\|in_magn_y_thresh_rising_hysteresis\|usb_typec_revision\|in_rot_from_north_true_tilt_comp_roc_falling_en\|log_tail_lsn\|rd_req\|write_zeroes_max_bytes\|fdt\|out_altvoltageY_frequency_resolution\|release_to_select\|wakeup_protocols\|in_accel_x_raw_roc_falling_value\|cluster_stack\|ue_noinfo_count\|trcidr3\|targetX\|nr_addr_cmp\|b_hnp_enable\|in_rot_from_north_magnetic_raw_thresh_falling_value\|wusb_trust_timeout\|suspend_standby_microvolts\|out_current_heater_raw_available\|in_activity_calibheight\|in_magn_x_thresh_falling_en\|wwan\|eeprom\|tx_fifo_errors\|addr_range\|bad_blocks\|in_accel_xyz_squared_peak_raw\|in_rot_from_north_magnetic_thresh_rising_en\|sanity_checks\|mm\|pimpampom\|max_perf_pct\|in_rot_from_north_magnetic_tilt_comp_raw_roc_rising_value\|ga\|synchronous\|seq_31_event\|etmtecr2\|in_voltage_i_offset\|in_illuminance_input_target\|usb_sleep_music\|free_slab\|in_currentY_q_scale\|available_instances\|charge_full\|io_type\|stat\|component_revision\|out_altvoltage_powerdown\|in_voltageY_q_en\|mmio_size\|max_locking_protocol\|trcpdcr\|led3\|in_accel_scale\|u1_timeout\|aliases\|max_microamps\|enhanced_area_size\|other_cnt\|in_magn_z_raw_thresh_rising_value\|compiled_by\|in_anglvel_z_roc_falling_en\|in_count_count_mode_available\|wrap\|flash_access\|rx_max\|svid\|version\|tx_timeout\|in_tempX_calibemissivity\|discard_alignment\|close_delay\|in_illuminance_raw\|bucket_size\|wusb_phy_rate\|tx_dropped\|usb3_hardware_lpm_u1\|pps_available\|data_role\|in_anglvel_y_thresh_rising_en\|remove_trigger\|in_incli_x_en\|usb2_lpm_besl\|slab\|in_anglvel_x_raw_roc_falling_value\|trctraceid\|volume_name\|in_currentX_raw\|usb_sleep_charge\|group_fwd_mask\|nr_ss_cmp\|read_cnt\|ctxid_pid\|in_concentration_voc_raw\|master_mode\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

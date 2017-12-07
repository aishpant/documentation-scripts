@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(suspend_mem_mode\|in_voltageY_thresh_rising_hysteresis\|kernel_version\|cntr_event\|set_freq\|channel\|in_rot_from_north_magnetic_tilt_comp_raw\|lcd_level\|tx_queue_len\|in_anglvel_x_roc_falling_en\|in_altvoltageY_invert\|trigger\|in_accel_x_roc_falling_period\|read_byte_cnt\|offset\|in_rot_from_north_true_thresh_rising_hysteresis\|suspend_mem_state\|select\|in_magn_y_raw_thresh_rising_value\|actions\|in_intensity_blue_hardwaregain\|chpids\|shrink\|in_anglvel_z_roc_rising_period\|in_accel_z_thresh_rising_period\|hard_offline_page\|nr_resource\|in_accel_x_thresh_rising_period\|reserve_grant_head\|revision\|bbt_blocks\|wakeup_events\|filter\|in_accel_thresh_rising_high_pass_filter_3db\|cntr_rld_val\|in_rot_from_north_true_thresh_falling_period\|tcg_operations\|in_accelX_power_mode\|in_rot_from_north_magnetic_thresh_falling_period\|max_power_range_uw\|in_voltageY_supply_roc_rising_en\|in_rot_from_north_true_tilt_comp_en\|in_illuminance_calibscale\|fb_update_rate\|led4\|current_driver\|pll1_reference_clk_b_present\|in_rot_from_north_true_thresh_falling_en\|in_magn_z_roc_falling_en\|in_magn_x_roc_falling_period\|crash_notes\|flash_brightness\|device_api\|out_altvoltageY_frequency\|in_accel_y_thresh_falling_en\|in_intensity_clear_integration_time\|adr\|in_rot_offset\|alloc_from_partial\|sb_write_count\|l5_dark_dim\|in_rot_from_north_true_raw_thresh_falling_value\|fifofull_level\|trcdevid\|in_accel_y_thresh_rising_en\|trcidr8\|inode_readahead_blks\|trans_stat\|virtfnN\|in_rot_from_north_true_tilt_comp_raw_thresh_rising_value\|api_version\|vendor_name\|in_voltageY_i_raw\|response\|in_illuminance_scale\|in_activity_walking_thresh_rising_en\|in_voltageY_supply_raw\|soft_offline_page\|suspend_disk_microvolts\|in_accel_filter_high_pass_3db_frequency\|master_mode_available\|in_anglvel_y_raw_thresh_falling_value\|cntr_ctrl\|dwNtbInMaxSize\|timestamp_clock\|in_accel_x_mag_falling_en\|cache_dma\|stm_source_link\|priority\|mb0_id\|out_altvoltageX_scale_available\|in_proximity_index\|trcidr0\|wusb_host_name\|free_blocks\|speed\|has_normal_memory\|free_slowpath\|clear\|in_rot_from_north_magnetic_tilt_comp_raw_thresh_rising_value\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

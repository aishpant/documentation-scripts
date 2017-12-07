@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(max_energy_range_uj\|xps_cpus\|in_illuminance_ir_raw\|in_accel_z_offset\|in_anglvel_x_en\|in_accel_filter_low_pass_3db_frequency\|dma_channels\|fw_vendor\|in_resistanceX_raw\|sdram_scrub_rate\|flash_data\|key\|flash_timeout\|etmtsscr\|iommu\|reserved_size\|quirks\|out_voltageX_scale_available\|bboard_calib\|in_tempY_thresh_either_hysteresis\|microamps\|product\|inode_goal\|in_voltageY-voltageZ_raw\|scan\|in_voltageY_supply_scale\|ioc_guid\|in_accel_y_mag_en\|tx_heartbeat_errors\|filter_mask\|vcxo_clk_present\|usbip_sockfd\|in_accel_offset\|l3_office_max\|phys_port_id\|in_tempX_raw\|core_id\|virtual_start\|nbuckets\|request\|in_pressureY_type\|in_count0_enable_mode\|has_cpu\|min_ipu_util\|write_ms\|fan\|changeset\|initiator\|in_temp_ambient_raw\|features\|in_rot_from_north_magnetic_roc_rising_period\|in_intensityY_raw\|in_pressureY_index\|in_rot_from_north_true_thresh_either_hysteresis\|in_proximity_raw\|acpi_index\|actual_dpi\|zoned\|in_current_offset\|delay_on\|in_voltageY_roc_rising_period\|l5_dark_max\|nodeX\|in_activity_still_thresh_rising_en\|in_activity_still_thresh_rising_period\|orig_interval\|in_intensity_red_integration_time\|enable0\|name\|kbd_type\|in_anglvel_x_roc_falling_period\|dimm_ce_count\|in_accel_z_raw\|in_voltageY_supply_raw_roc_rising_value\|trcoslsr\|remove_id\|addr_idx\|out_voltageY_raw_available\|max_adjustment\|write_cnt\|in_incli_y_raw\|in_accel_y_roc_rising_period\|in_magn_offset\|in_count_noise_error_available\|in_magn_y_thresh_falling_hysteresis\|in_anglvel_y_thresh_rising_period\|warm_reset\|period\|curr_seq_state\|wakeup_last_time_ms\|a_alt_hnp_support\|out_altvoltageY_powerdown\|range\|ereset\|in_dpm_voltage\|performance_level\|fan_mode\|min_partial\|suspend_disk_mode\|baud_rate\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(in_accel_y_roc_falling_period\|risetime\|pll1_reference_clk_test_present\|syncfreq\|in_rot_from_north_true_raw_thresh_rising_value\|real_id\|EUI_48\|reserved_for_bad\|calibrate\|reset\|l4_indoor_max\|in_magn_x_index\|alternate_modes\|in_current_shunt_resistor\|protection_interval_bytes\|in_voltageY_roc_rising_en\|modes_supported\|limit_min\|in_anglvel_y_index\|etmtecr1\|falltime\|in_magn_y_en\|hbm_ver_drv\|nvm_version\|in_voltage_q_index\|pio\|in_magn_filter_high_pass_3db_frequency\|in_rot_from_north_magnetic_tilt_comp_thresh_falling_period\|in_activity_calibgender_available\|rfkill\|seq_idx\|volumes_count\|out_voltageY&Z_raw\|in_concentrationX_co2_raw\|capability_id\|max_buffer_pages\|event\|local_ib_port\|in_accel_z_mag_falling_en\|in_incli_x_raw\|addr_len\|term\|limit\|min_fsync_blocks\|gc_urgent_sleep_time\|in_anglvel_x_thresh_falling_period\|new_id\|in_voltageY_type\|bootstatus\|trcidr1\|autosleep\|in_anglvel_y_thresh_either_hysteresis\|in_accel_x_raw_mag_rising_value\|in_magn_z_thresh_either_hysteresis\|in_rot_from_north_magnetic_tilt_comp_en\|in_rot_from_north_true_tilt_comp_raw_roc_falling_value\|gc_min_sleep_time\|fifo\|physfn\|in_tempX_object_calibemissivity\|out_resistance_raw\|export\|ramdisk\|in_currentY_supply_raw\|sram\|in_accel_x_index\|deactivate_empty\|free_fastpath\|IEs\|in_rot_from_north_magnetic_tilt_comp_thresh_falling_en\|in_activity_still_thresh_falling_period\|ltm_capable\|out_voltage_powerdown_mode\|illuminance_threshY_raising_value\|in_current_q_scale\|supports_usb_power_delivery\|in_accel_x_raw\|limit_max\|write_same_max_bytes\|in_accel_y_index\|in_intensity_clear_hardwaregain\|valid_zones\|acpi_header\|reconnect_delay\|timestamp_event\|bConfigurationValue\|in_proximity_type\|vmid_idx\|brightness\|als_enabled\|in_accel_z_thresh_falling_en\|in_countY_set_to_preset_on_index\|in_incli_x_index\|fcf_X\|TermCharEnabled\|available_masters\|in_distance_raw\|in_activity_calibgender\|in_voltageY_supply_thresh_falling_en\|press_to_select\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

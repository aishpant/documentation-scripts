@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(in_anglvel_x_thresh_falling_hysteresis\|in_pressure_calibscale\|wakeup_max_time_ms\|in_accel_x_roc_rising_period\|uframe_periodic_max\|in_magn_z_roc_rising_period\|in_accel_y_raw_mag_rising_value\|capture\|in_accel_z_roc_falling_en\|index\|devnum\|events\|phy_has_fixups\|write_generate\|duty_cycle\|rwp\|free_calls\|numcidc\|sts\|device_version\|min_microvolts\|minor\|in_resistance_raw\|microvolts\|cntr_rld_event\|in_anglvel_thresh_rising_high_pass_filter_3db\|ecc_failures\|constraint_X_max_time_window_us\|trcidr11\|in_illuminance_calibrate\|auto_ltr\|in_indexY_raw\|cache_hits\|in_magn_y_oversampling_ratio\|in_pressureY_input\|mem_used_max\|rsz\|hwirq\|dimm_mem_type\|in_intensityY_ir_raw\|soft_connect\|remote_node_defrag_ratio\|fw_version\|in_voltageY_i_scale\|disksize\|in_temp_offset\|poison\|a_bus_drop\|in_activity_walking_input\|echo\|vmstat\|in_humidityrelative_input\|governor\|enable_event\|slab_size\|in_index_synchronous_mode_available\|systab\|add_single_major\|in_voltageY_thresh_rising_en\|dimm_dev_type\|in_temp_object_raw\|in_accel_x_thresh_rising_hysteresis\|pp_mmio_len\|in_pressure_raw\|in_anglvel_x_thresh_rising_en\|unregister\|in_rot_from_north_true_thresh_rising_en\|blocksize\|in_anglvel_z_thresh_rising_period\|catalog_length\|free_remove_partial\|ksm\|in_voltageY_scale\|in_activity_running_thresh_falling_en\|in_concentration_raw\|in_voltageY_supply_roc_falling_period\|objects\|hsi\|ethernetX\|usb_three\|tx_window_errors\|in_anglvel_y_raw\|lpc_address\|addr_assign_type\|in_steps_debounce_time\|machine\|rq_based_seq_io_merge_deadline\|uartclk\|out_currentY_currentZ_raw\|op_timeout_secs\|in_energy_calibweight\|firmware_version\|of_node\|in_anglvel_z_thresh_rising_hysteresis\|in_anglvel_z_thresh_falling_en\|rev_id\|del_mux\|raw\|status\|data_bytes\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

@initialize:python@
@@
s = set()

@r@
expression list[n] es;
declarer f;
@@
f(es,
	\(pagesize\|in_intensityY_uv_raw\|in_tempY_thresh_rising_en\|accessory_mode\|out_voltage_powerdown\|flash_strobe\|in_voltageY_supply_roc_rising_period\|retry_count\|in_temp_raw\|in_magn_x_thresh_rising_period\|clean_segments\|power_state\|order_fallback\|usb488_interface_capabilities\|in_currentY_raw\|wNdpInDivisor\|in_countY_scale\|max_retry_count\|fragmentation\|in_rot_from_north_magnetic_raw_roc_falling_value\|sleep_millisecs\|enable_count\|read_avail\|max_small_discards\|rx_packets\|in_illuminance_integration_time\|cpu_shares\|dormant\|in_distance_scale\|out_altvoltageY_powerdown_mode_available\|suspend_standby_state\|port_type\|trcauthstatus\|in_anglvel_y_thresh_rising_hysteresis\|obppath\|line\|nr_ext_inp\|in_magn_z_raw\|sw_ltr\|in_X_mean_raw\|in_accel_mag_falling_en\|hwevent_select\|max_flash_brightness\|in_proximity_scale_available\|usb3_lpm_permit\|ovp_voltage\|cache_hit_ratio\|wimax\|in_rot_from_north_magnetic_thresh_falling_en\|in_accel_x&y&z_mag_rising_en\|a_hnp_support\|wNdpOutDivisor\|in_distance_calibgender_available\|rrp\|etmteevr\|sb_write_time_secs\|requested_microamps\|in_energy_calibgender_available\|in_distance_calibheight\|in_rot_from_north_true_roc_falling_en\|in_anglvel_z_raw_roc_falling_value\|shot\|bluetooth\|als_channel\|in_anglvel_z_thresh_falling_hysteresis\|sampling_frequency_available\|rx_frame_errors\|lid_handling\|vars\|uevent\|dimm_label\|max_contrast\|device_id\|in_rot_quaternion_raw\|in_accel_mag_rising_en\|in_currentX_q_raw\|rx_compressed\|rps_flow_cnt\|operation_mode\|ovl_position\|deactivate_to_tail\|product_id\|appid\|pcrs\|compile_date\|length\|plug_type\|read_ns\|trigger_polarity\|network_coding\|vmid_val\|create\|multicast_mode\|prtcid\|in_activity_jogging_thresh_rising_en\|slabs\|modalias\|real_power_state\|watermark\|catalog_version\)
,...);

@script:python@
f<<r.f;
p<<r.n;
@@
s.add((f,p))
print (s)

onerror {resume}
quietly virtual signal -install /sys_test { /sys_test/B_i_V_d0[25:13]} B_i_V_x
quietly virtual signal -install /sys_test { /sys_test/B_i_V_d0[12:0]} B_i_V_y
quietly WaveActivateNextPane {} 0
add wave -noupdate /sys_test/ap_rst
add wave -noupdate /sys_test/P_arr_x_V_q0
add wave -noupdate /sys_test/P_arr_x_V_q1
add wave -noupdate /sys_test/P_arr_x_V_address0
add wave -noupdate /sys_test/P_arr_x_V_address1
add wave -noupdate /sys_test/P_arr_y_V_q0
add wave -noupdate /sys_test/P_arr_y_V_q1
add wave -noupdate /sys_test/P_arr_y_V_address0
add wave -noupdate /sys_test/P_arr_y_V_address1
add wave -noupdate /sys_test/P_arr_z_V_q0
add wave -noupdate /sys_test/P_arr_z_V_q1
add wave -noupdate /sys_test/P_arr_z_V_address0
add wave -noupdate /sys_test/P_arr_z_V_address1
add wave -noupdate /sys_test/K_arr_V_q0
add wave -noupdate /sys_test/K_arr_V_q1
add wave -noupdate /sys_test/K_arr_V_address0
add wave -noupdate /sys_test/K_arr_V_address1
add wave -noupdate /sys_test/B_i_V_address0
add wave -noupdate /sys_test/B_i_V_ce0
add wave -noupdate /sys_test/B_i_V_x
add wave -noupdate /sys_test/B_i_V_y
add wave -noupdate /sys_test/B_i_V_d0
add wave -noupdate /sys_test/B_i_V_q0
add wave -noupdate /sys_test/B_i_V_address1
add wave -noupdate /sys_test/B_i_V_ce1
add wave -noupdate /sys_test/B_i_V_d1
add wave -noupdate /sys_test/B_i_V_q1
add wave -noupdate /sys_test/P_arr_x_V_ce0
add wave -noupdate /sys_test/P_arr_x_V_ce1
add wave -noupdate /sys_test/P_arr_y_V_ce0
add wave -noupdate /sys_test/P_arr_y_V_ce1
add wave -noupdate /sys_test/P_arr_z_V_ce0
add wave -noupdate /sys_test/P_arr_z_V_ce1
add wave -noupdate /sys_test/K_arr_V_ce0
add wave -noupdate /sys_test/K_arr_V_ce1
add wave -noupdate /sys_test/uut/ap_done
add wave -noupdate /sys_test/uut/ap_ready
add wave -noupdate /sys_test/uut/ap_start
add wave -noupdate /sys_test/ap_clk
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_din
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_dout
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_empty_n
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_full_n
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_read
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_read_ce
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_write
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_V_V_fifo_U/if_write_ce
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_P_V_U/address0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_P_V_U/ce0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_P_V_U/we0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_P_V_U/d0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_P_V_U/q0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_K_V_U/address0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_K_V_U/ce0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_K_V_U/d0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_K_V_U/q0
add wave -noupdate -expand -group GBUFF /sys_test/uut/GBUFF_K_V_U/we0
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_empty_n
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_read_ce
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_read
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_dout
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_full_n
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_write_ce
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_write
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/BFIFO_2_V_V_U/if_din
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_full_n
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_write_ce
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_write
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_din
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_empty_n
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_read_ce
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_read
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/CFIFO_V_V_U/if_dout
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p1_x_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p1_y_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p1_z_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p2_x_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p2_y_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/p2_z_V
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/ap_return_0
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/ap_return_1
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/ap_return_2
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/grp_padd_fu_112/ap_ce
add wave -noupdate -expand /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_1_U0/padd_count_V_U/bucket_unit_csim_sr_1_padd_count_V_ram_U/ram
add wave -noupdate /sys_test/uut/grp_bucket_unit_csim_sr_fu_422/bucket_unit_csim_sr_U0/loop_3_iter_fu_127_p2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11924112 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 311
configure wave -valuecolwidth 82
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {52500 ns}

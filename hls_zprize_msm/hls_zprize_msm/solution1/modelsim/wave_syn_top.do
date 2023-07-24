onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sys_test/ap_clk
add wave -noupdate /sys_test/ap_rst
add wave -noupdate /sys_test/ap_start
add wave -noupdate /sys_test/ap_done
add wave -noupdate /sys_test/ap_idle
add wave -noupdate /sys_test/ap_ready
add wave -noupdate /sys_test/P_arr_x_q0
add wave -noupdate /sys_test/P_arr_x_q1
add wave -noupdate /sys_test/P_arr_x_d0
add wave -noupdate /sys_test/P_arr_x_d1
add wave -noupdate /sys_test/P_arr_x_we0
add wave -noupdate /sys_test/P_arr_x_we1
add wave -noupdate /sys_test/P_arr_x_address0
add wave -noupdate /sys_test/P_arr_x_address1
add wave -noupdate /sys_test/P_arr_y_q0
add wave -noupdate /sys_test/P_arr_y_q1
add wave -noupdate /sys_test/P_arr_y_d0
add wave -noupdate /sys_test/P_arr_y_d1
add wave -noupdate /sys_test/P_arr_y_we0
add wave -noupdate /sys_test/P_arr_y_we1
add wave -noupdate /sys_test/P_arr_y_address0
add wave -noupdate /sys_test/P_arr_y_address1
add wave -noupdate /sys_test/P_arr_z_q0
add wave -noupdate /sys_test/P_arr_z_q1
add wave -noupdate /sys_test/P_arr_z_d0
add wave -noupdate /sys_test/P_arr_z_d1
add wave -noupdate /sys_test/P_arr_z_we0
add wave -noupdate /sys_test/P_arr_z_we1
add wave -noupdate /sys_test/P_arr_z_address0
add wave -noupdate /sys_test/P_arr_z_address1
add wave -noupdate /sys_test/K_arr_q0
add wave -noupdate /sys_test/K_arr_q1
add wave -noupdate /sys_test/K_arr_d0
add wave -noupdate /sys_test/K_arr_d1
add wave -noupdate /sys_test/K_arr_we0
add wave -noupdate /sys_test/K_arr_we1
add wave -noupdate /sys_test/K_arr_address0
add wave -noupdate /sys_test/K_arr_address1
add wave -noupdate /sys_test/total_num_padd_ops
add wave -noupdate /sys_test/read_count
add wave -noupdate /sys_test/count_test_mem_data
add wave -noupdate /sys_test/num_padd_ops_stream_empty_n
add wave -noupdate /sys_test/num_padd_ops_stream_read
add wave -noupdate /sys_test/read_num_padd_ops
add wave -noupdate /sys_test/num_padd_ops_test_mem_data
add wave -noupdate /sys_test/B_i_address0
add wave -noupdate /sys_test/B_i_ce0
add wave -noupdate /sys_test/B_i_d0
add wave -noupdate /sys_test/B_i_q0
add wave -noupdate /sys_test/B_i_we0
add wave -noupdate /sys_test/B_i_address1
add wave -noupdate /sys_test/B_i_ce1
add wave -noupdate /sys_test/B_i_d1
add wave -noupdate /sys_test/B_i_q1
add wave -noupdate /sys_test/B_i_we1
add wave -noupdate /sys_test/msm_return
add wave -noupdate /sys_test/P_arr_x_ce0
add wave -noupdate /sys_test/P_arr_y_ce0
add wave -noupdate /sys_test/P_arr_z_ce0
add wave -noupdate /sys_test/P_arr_x_ce1
add wave -noupdate /sys_test/P_arr_y_ce1
add wave -noupdate /sys_test/P_arr_z_ce1
add wave -noupdate /sys_test/K_arr_ce0
add wave -noupdate /sys_test/K_arr_ce1
add wave -noupdate /sys_test/debug
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read_ce
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_din
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_write
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_dout
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_empty_n
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_full_n
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_write_ce
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read_ce
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_din
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_write
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_dout
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_empty_n
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_full_n
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_write_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_din
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_dout
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_empty_n
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_full_n
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_din
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_dout
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_empty_n
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_full_n
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_write_ce
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_din
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_write
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_read_ce
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_full_n
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_dout
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_read
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_empty_n
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_write_ce
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_din
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_write
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_read_ce
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_full_n
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_dout
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_read
add wave -noupdate -group padd_output_2 /sys_test/uut/padd_output_fifo_2_U/if_empty_n
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_full_n
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_dout
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_read
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_empty_n
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_write_ce
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_din
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_write
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_read_ce
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_full_n
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_dout
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_read
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_empty_n
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_write_ce
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_din
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_write
add wave -noupdate -group padd_output_3 /sys_test/uut/padd_output_fifo_3_U/if_read_ce
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_din
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_write
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_read_ce
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_full_n
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_dout
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_read
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_empty_n
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_write_ce
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_din
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_write
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_read_ce
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_full_n
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_dout
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_read
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_empty_n
add wave -noupdate -group padd_output_4 /sys_test/uut/padd_output_fifo_4_U/if_write_ce
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_write_ce
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_din
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_write
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_read_ce
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_full_n
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_dout
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_read
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_empty_n
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_write_ce
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_din
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_write
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_read_ce
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_full_n
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_dout
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_read
add wave -noupdate -group padd_output_5 /sys_test/uut/padd_output_fifo_5_U/if_empty_n
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_write_ce
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_din
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_write
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_read_ce
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_full_n
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_dout
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_read
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_empty_n
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_write_ce
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_din
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_write
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_read_ce
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_full_n
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_dout
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_read
add wave -noupdate -group padd_output_6 /sys_test/uut/padd_output_fifo_6_U/if_empty_n
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_full_n
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_dout
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_read
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_empty_n
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_write_ce
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_din
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_write
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_read_ce
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_full_n
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_dout
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_read
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_empty_n
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_write_ce
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_din
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_write
add wave -noupdate -group padd_output_7 /sys_test/uut/padd_output_fifo_7_U/if_read_ce
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_din
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_write
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_read_ce
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_full_n
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_dout
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_read
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_empty_n
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_write_ce
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_din
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_write
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_read_ce
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_full_n
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_dout
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_read
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_empty_n
add wave -noupdate -group padd_output_8 /sys_test/uut/padd_output_fifo_8_U/if_write_ce
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_write_ce
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_din
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_write
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_read_ce
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_full_n
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_dout
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_read
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_empty_n
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_write_ce
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_din
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_write
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_read_ce
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_full_n
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_dout
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_read
add wave -noupdate -group padd_output_9 /sys_test/uut/padd_output_fifo_9_U/if_empty_n
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_write_ce
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_din
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_write
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_read_ce
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_full_n
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_dout
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_read
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_empty_n
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_write_ce
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_din
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_write
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_read_ce
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_full_n
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_dout
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_read
add wave -noupdate -group padd_output_10 /sys_test/uut/padd_output_fifo_10_U/if_empty_n
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_write_ce
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_din
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_write
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_read_ce
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_full_n
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_dout
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_read
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_empty_n
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_write_ce
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_din
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_write
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_read_ce
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_full_n
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_dout
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_read
add wave -noupdate -group padd_output_11 /sys_test/uut/padd_output_fifo_11_U/if_empty_n
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_full_n
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_dout
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_read
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_empty_n
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_write_ce
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_din
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_write
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_read_ce
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_full_n
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_dout
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_read
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_empty_n
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_write_ce
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_din
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_write
add wave -noupdate -group padd_output_12 /sys_test/uut/padd_output_fifo_12_U/if_read_ce
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_din
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_write
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_read_ce
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_full_n
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_dout
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_read
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_empty_n
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_write_ce
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_din
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_write
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_read_ce
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_full_n
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_dout
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_read
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_empty_n
add wave -noupdate -group padd_output_13 /sys_test/uut/padd_output_fifo_13_U/if_write_ce
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_write_ce
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_din
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_write
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_read_ce
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_full_n
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_dout
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_read
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_empty_n
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_write_ce
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_din
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_write
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_read_ce
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_full_n
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_dout
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_read
add wave -noupdate -group padd_output_14 /sys_test/uut/padd_output_fifo_14_U/if_empty_n
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_write_ce
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_din
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_write
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_read_ce
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_full_n
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_dout
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_read
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_empty_n
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_write_ce
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_din
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_write
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_read_ce
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_full_n
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_dout
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_read
add wave -noupdate -group padd_output_15 /sys_test/uut/padd_output_fifo_15_U/if_empty_n
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_full_n
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_dout
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_read
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_empty_n
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_write_ce
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_din
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_write
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_read_ce
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_full_n
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_dout
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_read
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_empty_n
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_write_ce
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_din
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_write
add wave -noupdate -group padd_output_16 /sys_test/uut/padd_output_fifo_16_U/if_read_ce
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_din
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_write
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_read_ce
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_full_n
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_dout
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_read
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_empty_n
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_write_ce
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_din
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_write
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_read_ce
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_full_n
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_dout
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_read
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_empty_n
add wave -noupdate -group padd_output_17 /sys_test/uut/padd_output_fifo_17_U/if_write_ce
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_write_ce
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_din
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_write
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_read_ce
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_full_n
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_dout
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_read
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_empty_n
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_write_ce
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_din
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_write
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_read_ce
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_full_n
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_dout
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_read
add wave -noupdate -group padd_output_18 /sys_test/uut/padd_output_fifo_18_U/if_empty_n
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_write_ce
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_din
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_write
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_read_ce
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_full_n
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_dout
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_read
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_empty_n
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_write_ce
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_din
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_write
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_read_ce
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_full_n
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_dout
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_read
add wave -noupdate -group padd_output_19 /sys_test/uut/padd_output_fifo_19_U/if_empty_n
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_write_ce
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_din
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_write
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_read_ce
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_full_n
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_dout
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_read
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_empty_n
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_write_ce
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_din
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_write
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_read_ce
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_full_n
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_dout
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_read
add wave -noupdate -group padd_output_20 /sys_test/uut/padd_output_fifo_20_U/if_empty_n
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_full_n
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_dout
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_read
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_empty_n
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_write_ce
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_din
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_write
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_read_ce
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_full_n
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_dout
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_read
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_empty_n
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_write_ce
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_din
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_write
add wave -noupdate -group padd_output_21 /sys_test/uut/padd_output_fifo_21_U/if_read_ce
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_din
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_write
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_read_ce
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_full_n
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_dout
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_read
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_empty_n
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_write_ce
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_din
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_write
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_read_ce
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_full_n
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_dout
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_read
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_empty_n
add wave -noupdate -group padd_output_22 /sys_test/uut/padd_output_fifo_22_U/if_write_ce
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_write_ce
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_din
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_write
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_read_ce
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_full_n
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_dout
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_read
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_empty_n
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_write_ce
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_din
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_write
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_read_ce
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_full_n
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_dout
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_read
add wave -noupdate -group padd_output_23 /sys_test/uut/padd_output_fifo_23_U/if_empty_n
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_write_ce
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_din
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_write
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_read_ce
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_full_n
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_dout
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_read
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_empty_n
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_write_ce
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_din
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_write
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_read_ce
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_full_n
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_dout
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_read
add wave -noupdate -group padd_output_24 /sys_test/uut/padd_output_fifo_24_U/if_empty_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_full_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_dout
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_empty_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write_ce
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_din
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read_ce
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_full_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_dout
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_empty_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write_ce
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_din
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read_ce
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_din
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read_ce
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_full_n
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_dout
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_empty_n
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write_ce
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_din
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read_ce
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_full_n
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_dout
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_empty_n
add wave -noupdate -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write_ce
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_write_ce
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_din
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_write
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_read_ce
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_full_n
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_dout
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_read
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_empty_n
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_write_ce
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_din
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_write
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_read_ce
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_full_n
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_dout
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_read
add wave -noupdate -group padd_output_27 /sys_test/uut/padd_output_fifo_27_U/if_empty_n
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_write_ce
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_din
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_write
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_read_ce
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_full_n
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_dout
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_read
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_empty_n
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_write_ce
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_din
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_write
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_read_ce
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_full_n
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_dout
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_read
add wave -noupdate -group padd_output_28 /sys_test/uut/padd_output_fifo_28_U/if_empty_n
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_full_n
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_dout
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_read
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_empty_n
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_write_ce
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_din
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_write
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_read_ce
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_full_n
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_dout
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_read
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_empty_n
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_write_ce
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_din
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_write
add wave -noupdate -group padd_output_29 /sys_test/uut/padd_output_fifo_29_U/if_read_ce
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_full_n
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_dout
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_read
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_empty_n
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_write_ce
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_din
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_write
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_read_ce
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_full_n
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_dout
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_read
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_empty_n
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_write_ce
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_din
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_write
add wave -noupdate -group padd_output_30 /sys_test/uut/padd_output_fifo_30_U/if_read_ce
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_din
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_write
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_read_ce
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_full_n
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_dout
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_read
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_empty_n
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_write_ce
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_din
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_write
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_read_ce
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_full_n
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_dout
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_read
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_empty_n
add wave -noupdate -group padd_output_31 /sys_test/uut/padd_output_fifo_31_U/if_write_ce
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_write_ce
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_din
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_write
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_read_ce
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_full_n
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_dout
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_read
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_empty_n
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_write_ce
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_din
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_write
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_read_ce
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_full_n
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_dout
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_read
add wave -noupdate -group padd_output_32 /sys_test/uut/padd_output_fifo_32_U/if_empty_n
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_write_ce
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_din
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_write
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_read_ce
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_full_n
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_dout
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_read
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_empty_n
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_write_ce
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_din
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_write
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_read_ce
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_full_n
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_dout
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_read
add wave -noupdate -group padd_output_33 /sys_test/uut/padd_output_fifo_33_U/if_empty_n
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_full_n
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_dout
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_read
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_empty_n
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_write_ce
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_din
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_write
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_read_ce
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_full_n
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_dout
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_read
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_empty_n
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_write_ce
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_din
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_write
add wave -noupdate -group padd_output_34 /sys_test/uut/padd_output_fifo_34_U/if_read_ce
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_din
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_write
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_read_ce
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_full_n
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_dout
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_read
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_empty_n
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_write_ce
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_din
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_write
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_read_ce
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_full_n
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_dout
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_read
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_empty_n
add wave -noupdate -group padd_output_35 /sys_test/uut/padd_output_fifo_35_U/if_write_ce
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_write_ce
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_din
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_write
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_read_ce
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_full_n
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_dout
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_read
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_empty_n
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_write_ce
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_din
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_write
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_read_ce
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_full_n
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_dout
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_read
add wave -noupdate -group padd_output_36 /sys_test/uut/padd_output_fifo_36_U/if_empty_n
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_write_ce
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_din
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_write
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_read_ce
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_full_n
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_dout
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_read
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_empty_n
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_write_ce
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_din
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_write
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_read_ce
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_full_n
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_dout
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_read
add wave -noupdate -group padd_output_37 /sys_test/uut/padd_output_fifo_37_U/if_empty_n
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_full_n
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_dout
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_read
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_empty_n
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_write_ce
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_din
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_write
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_read_ce
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_full_n
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_dout
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_read
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_empty_n
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_write_ce
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_din
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_write
add wave -noupdate -group padd_output_38 /sys_test/uut/padd_output_fifo_38_U/if_read_ce
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_din
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_write
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_read_ce
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_full_n
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_dout
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_read
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_empty_n
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_write_ce
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_din
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_write
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_read_ce
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_full_n
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_dout
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_read
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_empty_n
add wave -noupdate -group padd_output_39 /sys_test/uut/padd_output_fifo_39_U/if_write_ce
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_din
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_write
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_read_ce
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_full_n
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_dout
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_read
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_empty_n
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_write_ce
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_din
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_write
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_read_ce
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_full_n
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_dout
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_read
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_empty_n
add wave -noupdate -group padd_output_40 /sys_test/uut/padd_output_fifo_40_U/if_write_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_din
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_full_n
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_dout
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_empty_n
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_din
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_full_n
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_dout
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_empty_n
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
add wave -noupdate /sys_test/ap_clk
add wave -noupdate /sys_test/ap_rst
add wave -noupdate /sys_test/ap_start
add wave -noupdate /sys_test/ap_done
add wave -noupdate /sys_test/ap_idle
add wave -noupdate /sys_test/ap_ready
add wave -noupdate /sys_test/P_arr_x_q0
add wave -noupdate /sys_test/P_arr_x_q1
add wave -noupdate /sys_test/P_arr_x_d0
add wave -noupdate /sys_test/P_arr_x_d1
add wave -noupdate /sys_test/P_arr_x_we0
add wave -noupdate /sys_test/P_arr_x_we1
add wave -noupdate /sys_test/P_arr_x_address0
add wave -noupdate /sys_test/P_arr_x_address1
add wave -noupdate /sys_test/P_arr_y_q0
add wave -noupdate /sys_test/P_arr_y_q1
add wave -noupdate /sys_test/P_arr_y_d0
add wave -noupdate /sys_test/P_arr_y_d1
add wave -noupdate /sys_test/P_arr_y_we0
add wave -noupdate /sys_test/P_arr_y_we1
add wave -noupdate /sys_test/P_arr_y_address0
add wave -noupdate /sys_test/P_arr_y_address1
add wave -noupdate /sys_test/P_arr_z_q0
add wave -noupdate /sys_test/P_arr_z_q1
add wave -noupdate /sys_test/P_arr_z_d0
add wave -noupdate /sys_test/P_arr_z_d1
add wave -noupdate /sys_test/P_arr_z_we0
add wave -noupdate /sys_test/P_arr_z_we1
add wave -noupdate /sys_test/P_arr_z_address0
add wave -noupdate /sys_test/P_arr_z_address1
add wave -noupdate /sys_test/K_arr_q0
add wave -noupdate /sys_test/K_arr_q1
add wave -noupdate /sys_test/K_arr_d0
add wave -noupdate /sys_test/K_arr_d1
add wave -noupdate /sys_test/K_arr_we0
add wave -noupdate /sys_test/K_arr_we1
add wave -noupdate /sys_test/K_arr_address0
add wave -noupdate /sys_test/K_arr_address1
add wave -noupdate /sys_test/total_num_padd_ops
add wave -noupdate /sys_test/read_count
add wave -noupdate /sys_test/count_test_mem_data
add wave -noupdate /sys_test/num_padd_ops_stream_empty_n
add wave -noupdate /sys_test/num_padd_ops_stream_read
add wave -noupdate /sys_test/read_num_padd_ops
add wave -noupdate /sys_test/num_padd_ops_test_mem_data
add wave -noupdate /sys_test/B_i_address0
add wave -noupdate /sys_test/B_i_ce0
add wave -noupdate /sys_test/B_i_d0
add wave -noupdate /sys_test/B_i_q0
add wave -noupdate /sys_test/B_i_we0
add wave -noupdate /sys_test/B_i_address1
add wave -noupdate /sys_test/B_i_ce1
add wave -noupdate /sys_test/B_i_d1
add wave -noupdate /sys_test/B_i_q1
add wave -noupdate /sys_test/B_i_we1
add wave -noupdate /sys_test/msm_return
add wave -noupdate /sys_test/P_arr_x_ce0
add wave -noupdate /sys_test/P_arr_y_ce0
add wave -noupdate /sys_test/P_arr_z_ce0
add wave -noupdate /sys_test/P_arr_x_ce1
add wave -noupdate /sys_test/P_arr_y_ce1
add wave -noupdate /sys_test/P_arr_z_ce1
add wave -noupdate /sys_test/K_arr_ce0
add wave -noupdate /sys_test/K_arr_ce1
add wave -noupdate /sys_test/debug
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_empty_n
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_read_ce
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_read
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_dout
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_full_n
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_write_ce
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_write
add wave -noupdate /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_din
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_full_n
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_write_ce
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_write
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_din
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_empty_n
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_read_ce
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_read
add wave -noupdate /sys_test/uut/padd_input_bucket_fifo_U/if_dout
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_clk
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_rst
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/total_num_padd_ops_ap_vld
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_start
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_done
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_ready
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_idle
add wave -noupdate -expand -group top_padd_unit /sys_test/uut/padd_unit_U0/ap_continue
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_clk
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_rst
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_start
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_done
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_continue
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_idle
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/ap_ready
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_clk
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_rst
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_start
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_done
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_idle
add wave -noupdate -expand -group top_padd_unit -expand -group top_padd_unit_loop -expand -group dataflow_padd_unit /sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/ap_ready

add wave -noupdate -expand -group grp_padd  \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p1_x \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p1_y \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p1_z \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p2_x \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p2_y \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/p2_z \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/ap_return_0 \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/ap_return_1 \
/sys_test/uut/padd_unit_U0/padd_unit_Loop_VITIS_LOOP_502_1_proc149_U0/grp_dataflow_padd_unit_fu_188/grp_padd_fu_101/ap_return_2

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {33077432 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 325
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 fs} {367500 ps}

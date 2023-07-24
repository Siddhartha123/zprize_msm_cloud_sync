onerror {resume}
quietly virtual signal -install /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U { /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_dout[1142:1137]} chunk_num
quietly virtual signal -install /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U { /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_dout[1136:1131]} nibble_K
quietly virtual signal -install /sys_test/uut/padd_output_fifo_26_U { /sys_test/uut/padd_output_fifo_26_U/if_din[20:15]} nibble_K
quietly virtual signal -install /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U { (context /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U )&{if_read_ce , if_read , if_write_ce , if_write ,if_din , if_empty_n ,if_dout , if_full_n }} 26_OVFIFO
quietly virtual signal -install /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U { /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_din[20:15]} nibble_K
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
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_din
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_write
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read_ce
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_full_n
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_dout
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_read
add wave -noupdate -group padd_output_0 /sys_test/uut/padd_output_fifo_0_U/if_empty_n
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
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_din
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_write
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read_ce
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_full_n
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_dout
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_read
add wave -noupdate -group padd_output_1 /sys_test/uut/padd_output_fifo_1_U/if_empty_n
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
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_full_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_dout
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_empty_n
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write_ce
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_din
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_write
add wave -noupdate -group padd_output_25 /sys_test/uut/padd_output_fifo_25_U/if_read_ce
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_din
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read_ce
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_full_n
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_dout
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_read
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_empty_n
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/if_write_ce
add wave -noupdate -expand -group padd_output_26 /sys_test/uut/padd_output_fifo_26_U/nibble_K
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_write_ce
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_din
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_write
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_read_ce
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_full_n
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_dout
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_read
add wave -noupdate -expand -group BFIFO_26 /sys_test/uut/msm_arr_U0/BFIFO_26_U/if_empty_n
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
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_din
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_write
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read_ce
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_full_n
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_dout
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_read
add wave -noupdate -group padd_output_41 /sys_test/uut/padd_output_fifo_41_U/if_empty_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
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
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_empty_n
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_read_ce
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_read
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_dout
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_full_n
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_write_ce
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_write
add wave -noupdate -group padd_input_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_input_fifo_fifo_U/if_din
add wave -noupdate /sys_test/ap_clk
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p1_x
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p1_y
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p1_z
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p2_x
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p2_y
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/p2_z
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/ap_return_0
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/ap_return_1
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/ap_return_2
add wave -noupdate -expand -group grp_padd /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_dataflow_padd_unit_fixed_fu_186/grp_padd_fu_87/ap_ce
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_empty_n
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_read_ce
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_read
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_dout
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_full_n
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_write_ce
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_write
add wave -noupdate -group free_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/free_fifo_fifo_U/if_din
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/address0
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/ce0
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/q0
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/address1
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/ce1
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/address2
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/ce2
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/d2
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/we2
add wave -noupdate -expand -group scratch_pad /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/scratch_pad_V_U/q1
add wave -noupdate /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/point_addr_V_fu_248
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_2_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_19_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_20_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_37_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_3_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_21_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_38_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_4_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_22_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_40_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_39_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_5_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_23_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_41_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_42_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_6_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_24_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_7_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_25_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_8_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_26_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_9_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_10_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_27_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_11_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_28_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_12_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_29_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_30_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_13_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_31_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_14_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_32_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_15_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_33_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_16_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_34_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_0_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_17_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_35_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_1_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_18_write
add wave -noupdate -group padd_output_write /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_36_write
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_5_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_23_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_41_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_15_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_33_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_7_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_25_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_0_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_17_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_35_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_9_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_10_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_27_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_2_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_19_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_20_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_37_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_12_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_29_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_30_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_4_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_22_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_40_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_39_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_14_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_32_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_42_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_6_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_24_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_16_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_34_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_8_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_26_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_1_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_18_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_36_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_11_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_28_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_3_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_21_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_38_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_13_full_n
add wave -noupdate -group padd_output_full_n /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_31_full_n
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_read_ce
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_read
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_write_ce
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_write
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_din
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_empty_n
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_dout
add wave -noupdate -expand -group padd_output_fifo /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/if_full_n
add wave -noupdate /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/chunk_num
add wave -noupdate /sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/padd_output_fifo_fifo_U/nibble_K
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_read_ce
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_read
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_write_ce
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_write
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_din
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_empty_n
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_dout
add wave -noupdate -group 26_B_56 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/B_56_i_U/if_full_n
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_read
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_write_ce
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_write
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/nibble_K
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_din
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_empty_n
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_dout
add wave -noupdate -expand -group 26_OVFIFO /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_full_n
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/padd_count_V_U/ram
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/OVFIFO_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_62_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_61_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_60_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_59_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_58_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_57_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_56_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_55_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_54_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_53_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_52_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_51_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_50_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_49_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_48_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_47_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_46_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_45_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_44_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_43_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_42_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_41_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_40_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_39_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_38_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_37_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_36_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_35_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_34_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_33_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_32_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_31_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_30_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_29_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_28_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_27_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_26_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_25_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_24_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_23_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_22_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_21_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_20_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_19_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_18_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_17_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_16_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_15_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_14_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_13_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_12_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_11_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_10_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_9_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_8_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_7_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_6_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_5_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_4_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_3_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_2_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_1_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_0_full_n
add wave -noupdate -group bucket_process_26_full_n /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/B_63_full_n
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/padd_output_fifo_26_read
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/ap_CS_fsm_state34
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/count_padd_of_V_fu_326
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/bucket_process_26_Loop_1_proc111_U0/grp_bucket_process_26_Loop_1_proc111_Pipeline_VITIS_LOOP_38_1_fu_861/count_if_V_fu_330
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/num_padd_ops_local_V_27_loc_c_dout
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/num_padd_ops_local_V_27_loc_c_empty_n
add wave -noupdate /sys_test/uut/msm_arr_U0/bucket_process_26_U0/num_padd_ops_local_V_27_loc_c_full_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_full_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_dout
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_read
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_empty_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_write_ce
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_din
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_write
add wave -noupdate -group CFIFO_0 /sys_test/uut/msm_arr_U0/CFIFO_0_U/if_read_ce
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_din
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_write
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_read_ce
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_full_n
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_dout
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_read
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_empty_n
add wave -noupdate -group CFIFO_1 /sys_test/uut/msm_arr_U0/CFIFO_1_U/if_write_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_write_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_din
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_write
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_read_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_full_n
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_dout
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_read
add wave -noupdate -group CFIFO_2 /sys_test/uut/msm_arr_U0/CFIFO_2_U/if_empty_n
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_write_ce
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_din
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_write
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_read_ce
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_full_n
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_dout
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_read
add wave -noupdate -group CFIFO_3 /sys_test/uut/msm_arr_U0/CFIFO_3_U/if_empty_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_full_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_dout
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_read
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_empty_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_write_ce
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_din
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_write
add wave -noupdate -group CFIFO_4 /sys_test/uut/msm_arr_U0/CFIFO_4_U/if_read_ce
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_din
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_write
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_read_ce
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_full_n
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_dout
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_read
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_empty_n
add wave -noupdate -group CFIFO_5 /sys_test/uut/msm_arr_U0/CFIFO_5_U/if_write_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_write_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_din
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_write
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_read_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_full_n
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_dout
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_read
add wave -noupdate -group CFIFO_6 /sys_test/uut/msm_arr_U0/CFIFO_6_U/if_empty_n
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_write_ce
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_din
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_write
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_read_ce
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_full_n
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_dout
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_read
add wave -noupdate -group CFIFO_7 /sys_test/uut/msm_arr_U0/CFIFO_7_U/if_empty_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_full_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_dout
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_read
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_empty_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_write_ce
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_din
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_write
add wave -noupdate -group CFIFO_8 /sys_test/uut/msm_arr_U0/CFIFO_8_U/if_read_ce
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_din
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_write
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_read_ce
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_full_n
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_dout
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_read
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_empty_n
add wave -noupdate -group CFIFO_9 /sys_test/uut/msm_arr_U0/CFIFO_9_U/if_write_ce
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_din
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_write
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_read_ce
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_full_n
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_dout
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_read
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_empty_n
add wave -noupdate -group CFIFO_10 /sys_test/uut/msm_arr_U0/CFIFO_10_U/if_write_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_write_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_din
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_write
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_read_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_full_n
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_dout
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_read
add wave -noupdate -group CFIFO_11 /sys_test/uut/msm_arr_U0/CFIFO_11_U/if_empty_n
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_write_ce
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_din
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_write
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_read_ce
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_full_n
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_dout
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_read
add wave -noupdate -group CFIFO_12 /sys_test/uut/msm_arr_U0/CFIFO_12_U/if_empty_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_full_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_dout
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_read
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_empty_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_write_ce
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_din
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_write
add wave -noupdate -group CFIFO_13 /sys_test/uut/msm_arr_U0/CFIFO_13_U/if_read_ce
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_din
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_write
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_read_ce
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_full_n
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_dout
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_read
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_empty_n
add wave -noupdate -group CFIFO_14 /sys_test/uut/msm_arr_U0/CFIFO_14_U/if_write_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_write_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_din
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_write
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_read_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_full_n
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_dout
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_read
add wave -noupdate -group CFIFO_15 /sys_test/uut/msm_arr_U0/CFIFO_15_U/if_empty_n
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_write_ce
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_din
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_write
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_read_ce
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_full_n
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_dout
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_read
add wave -noupdate -group CFIFO_16 /sys_test/uut/msm_arr_U0/CFIFO_16_U/if_empty_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_full_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_dout
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_read
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_empty_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_write_ce
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_din
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_write
add wave -noupdate -group CFIFO_17 /sys_test/uut/msm_arr_U0/CFIFO_17_U/if_read_ce
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_din
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_write
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_read_ce
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_full_n
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_dout
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_read
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_empty_n
add wave -noupdate -group CFIFO_18 /sys_test/uut/msm_arr_U0/CFIFO_18_U/if_write_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_write_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_din
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_write
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_read_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_full_n
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_dout
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_read
add wave -noupdate -group CFIFO_19 /sys_test/uut/msm_arr_U0/CFIFO_19_U/if_empty_n
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_write_ce
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_din
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_write
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_read_ce
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_full_n
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_dout
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_read
add wave -noupdate -group CFIFO_20 /sys_test/uut/msm_arr_U0/CFIFO_20_U/if_empty_n
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_write_ce
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_din
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_write
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_read_ce
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_full_n
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_dout
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_read
add wave -noupdate -group CFIFO_21 /sys_test/uut/msm_arr_U0/CFIFO_21_U/if_empty_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_full_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_dout
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_read
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_empty_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_write_ce
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_din
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_write
add wave -noupdate -group CFIFO_22 /sys_test/uut/msm_arr_U0/CFIFO_22_U/if_read_ce
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_din
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_write
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_read_ce
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_full_n
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_dout
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_read
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_empty_n
add wave -noupdate -group CFIFO_23 /sys_test/uut/msm_arr_U0/CFIFO_23_U/if_write_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_write_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_din
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_write
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_read_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_full_n
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_dout
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_read
add wave -noupdate -group CFIFO_24 /sys_test/uut/msm_arr_U0/CFIFO_24_U/if_empty_n
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_write_ce
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_din
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_write
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_read_ce
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_full_n
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_dout
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_read
add wave -noupdate -group CFIFO_25 /sys_test/uut/msm_arr_U0/CFIFO_25_U/if_empty_n
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_full_n
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_dout
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_read
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_empty_n
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_write_ce
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_din
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_write
add wave -noupdate -expand -group CFIFO_26 /sys_test/uut/msm_arr_U0/CFIFO_26_U/if_read_ce
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_din
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_write
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_read_ce
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_full_n
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_dout
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_read
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_empty_n
add wave -noupdate -group CFIFO_27 /sys_test/uut/msm_arr_U0/CFIFO_27_U/if_write_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_write_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_din
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_write
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_read_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_full_n
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_dout
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_read
add wave -noupdate -group CFIFO_28 /sys_test/uut/msm_arr_U0/CFIFO_28_U/if_empty_n
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_write_ce
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_din
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_write
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_read_ce
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_full_n
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_dout
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_read
add wave -noupdate -group CFIFO_29 /sys_test/uut/msm_arr_U0/CFIFO_29_U/if_empty_n
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_write_ce
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_din
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_write
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_read_ce
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_full_n
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_dout
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_read
add wave -noupdate -group CFIFO_30 /sys_test/uut/msm_arr_U0/CFIFO_30_U/if_empty_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_full_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_dout
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_read
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_empty_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_write_ce
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_din
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_write
add wave -noupdate -group CFIFO_31 /sys_test/uut/msm_arr_U0/CFIFO_31_U/if_read_ce
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_din
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_write
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_read_ce
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_full_n
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_dout
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_read
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_empty_n
add wave -noupdate -group CFIFO_32 /sys_test/uut/msm_arr_U0/CFIFO_32_U/if_write_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_write_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_din
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_write
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_read_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_full_n
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_dout
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_read
add wave -noupdate -group CFIFO_33 /sys_test/uut/msm_arr_U0/CFIFO_33_U/if_empty_n
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_write_ce
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_din
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_write
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_read_ce
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_full_n
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_dout
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_read
add wave -noupdate -group CFIFO_34 /sys_test/uut/msm_arr_U0/CFIFO_34_U/if_empty_n
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_full_n
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_dout
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_read
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_empty_n
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_write_ce
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_din
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_write
add wave -noupdate -group CFIFO_35 /sys_test/uut/msm_arr_U0/CFIFO_35_U/if_read_ce
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_din
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_write
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_read_ce
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_full_n
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_dout
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_read
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_empty_n
add wave -noupdate -group CFIFO_36 /sys_test/uut/msm_arr_U0/CFIFO_36_U/if_write_ce
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_write_ce
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_din
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_write
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_read_ce
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_full_n
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_dout
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_read
add wave -noupdate -group CFIFO_37 /sys_test/uut/msm_arr_U0/CFIFO_37_U/if_empty_n
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_write_ce
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_din
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_write
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_read_ce
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_full_n
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_dout
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_read
add wave -noupdate -group CFIFO_38 /sys_test/uut/msm_arr_U0/CFIFO_38_U/if_empty_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_full_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_dout
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_read
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_empty_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_write_ce
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_din
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_write
add wave -noupdate -group CFIFO_39 /sys_test/uut/msm_arr_U0/CFIFO_39_U/if_read_ce
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_full_n
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_dout
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_read
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_empty_n
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_write_ce
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_din
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_write
add wave -noupdate -group CFIFO_40 /sys_test/uut/msm_arr_U0/CFIFO_40_U/if_read_ce
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_din
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_write
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_read_ce
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_full_n
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_dout
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_read
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_empty_n
add wave -noupdate -group CFIFO_41 /sys_test/uut/msm_arr_U0/CFIFO_41_U/if_write_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_write_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_din
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_write
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_read_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_full_n
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_dout
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_read
add wave -noupdate -group CFIFO_42 /sys_test/uut/msm_arr_U0/CFIFO_42_U/if_empty_n
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_write_ce
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_din
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_write
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_read_ce
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_full_n
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_dout
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_read
add wave -noupdate -group BFIFO_0 /sys_test/uut/msm_arr_U0/BFIFO_0_U/if_empty_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_full_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_dout
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_read
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_empty_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_write_ce
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_din
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_write
add wave -noupdate -group BFIFO_1 /sys_test/uut/msm_arr_U0/BFIFO_1_U/if_read_ce
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_din
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_write
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_read_ce
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_full_n
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_dout
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_read
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_empty_n
add wave -noupdate -group BFIFO_2 /sys_test/uut/msm_arr_U0/BFIFO_2_U/if_write_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_write_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_din
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_write
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_read_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_full_n
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_dout
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_read
add wave -noupdate -group BFIFO_3 /sys_test/uut/msm_arr_U0/BFIFO_3_U/if_empty_n
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_write_ce
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_din
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_write
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_read_ce
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_full_n
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_dout
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_read
add wave -noupdate -group BFIFO_4 /sys_test/uut/msm_arr_U0/BFIFO_4_U/if_empty_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_full_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_dout
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_read
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_empty_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_write_ce
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_din
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_write
add wave -noupdate -group BFIFO_5 /sys_test/uut/msm_arr_U0/BFIFO_5_U/if_read_ce
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_din
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_write
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_read_ce
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_full_n
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_dout
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_read
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_empty_n
add wave -noupdate -group BFIFO_6 /sys_test/uut/msm_arr_U0/BFIFO_6_U/if_write_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_write_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_din
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_write
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_read_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_full_n
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_dout
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_read
add wave -noupdate -group BFIFO_7 /sys_test/uut/msm_arr_U0/BFIFO_7_U/if_empty_n
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_write_ce
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_din
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_write
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_read_ce
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_full_n
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_dout
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_read
add wave -noupdate -group BFIFO_8 /sys_test/uut/msm_arr_U0/BFIFO_8_U/if_empty_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_full_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_dout
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_read
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_empty_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_write_ce
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_din
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_write
add wave -noupdate -group BFIFO_9 /sys_test/uut/msm_arr_U0/BFIFO_9_U/if_read_ce
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_full_n
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_dout
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_read
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_empty_n
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_write_ce
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_din
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_write
add wave -noupdate -group BFIFO_10 /sys_test/uut/msm_arr_U0/BFIFO_10_U/if_read_ce
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_din
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_write
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_read_ce
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_full_n
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_dout
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_read
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_empty_n
add wave -noupdate -group BFIFO_11 /sys_test/uut/msm_arr_U0/BFIFO_11_U/if_write_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_write_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_din
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_write
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_read_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_full_n
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_dout
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_read
add wave -noupdate -group BFIFO_12 /sys_test/uut/msm_arr_U0/BFIFO_12_U/if_empty_n
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_write_ce
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_din
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_write
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_read_ce
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_full_n
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_dout
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_read
add wave -noupdate -group BFIFO_13 /sys_test/uut/msm_arr_U0/BFIFO_13_U/if_empty_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_full_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_dout
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_read
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_empty_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_write_ce
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_din
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_write
add wave -noupdate -group BFIFO_14 /sys_test/uut/msm_arr_U0/BFIFO_14_U/if_read_ce
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_din
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_write
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_read_ce
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_full_n
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_dout
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_read
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_empty_n
add wave -noupdate -group BFIFO_15 /sys_test/uut/msm_arr_U0/BFIFO_15_U/if_write_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_write_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_din
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_write
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_read_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_full_n
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_dout
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_read
add wave -noupdate -group BFIFO_16 /sys_test/uut/msm_arr_U0/BFIFO_16_U/if_empty_n
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_write_ce
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_din
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_write
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_read_ce
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_full_n
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_dout
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_read
add wave -noupdate -group BFIFO_17 /sys_test/uut/msm_arr_U0/BFIFO_17_U/if_empty_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_full_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_dout
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_read
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_empty_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_write_ce
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_din
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_write
add wave -noupdate -group BFIFO_18 /sys_test/uut/msm_arr_U0/BFIFO_18_U/if_read_ce
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_din
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_write
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_read_ce
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_full_n
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_dout
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_read
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_empty_n
add wave -noupdate -group BFIFO_19 /sys_test/uut/msm_arr_U0/BFIFO_19_U/if_write_ce
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_din
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_write
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_read_ce
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_full_n
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_dout
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_read
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_empty_n
add wave -noupdate -group BFIFO_20 /sys_test/uut/msm_arr_U0/BFIFO_20_U/if_write_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_write_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_din
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_write
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_read_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_full_n
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_dout
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_read
add wave -noupdate -group BFIFO_21 /sys_test/uut/msm_arr_U0/BFIFO_21_U/if_empty_n
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_write_ce
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_din
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_write
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_read_ce
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_full_n
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_dout
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_read
add wave -noupdate -group BFIFO_22 /sys_test/uut/msm_arr_U0/BFIFO_22_U/if_empty_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_full_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_dout
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_read
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_empty_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_write_ce
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_din
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_write
add wave -noupdate -group BFIFO_23 /sys_test/uut/msm_arr_U0/BFIFO_23_U/if_read_ce
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_din
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_write
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_read_ce
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_full_n
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_dout
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_read
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_empty_n
add wave -noupdate -group BFIFO_24 /sys_test/uut/msm_arr_U0/BFIFO_24_U/if_write_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_write_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_din
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_write
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_read_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_full_n
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_dout
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_read
add wave -noupdate -group BFIFO_25 /sys_test/uut/msm_arr_U0/BFIFO_25_U/if_empty_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_full_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_dout
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_read
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_empty_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_write_ce
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_din
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_write
add wave -noupdate -group BFIFO_27 /sys_test/uut/msm_arr_U0/BFIFO_27_U/if_read_ce
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_din
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_write
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_read_ce
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_full_n
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_dout
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_read
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_empty_n
add wave -noupdate -group BFIFO_28 /sys_test/uut/msm_arr_U0/BFIFO_28_U/if_write_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_write_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_din
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_write
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_read_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_full_n
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_dout
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_read
add wave -noupdate -group BFIFO_29 /sys_test/uut/msm_arr_U0/BFIFO_29_U/if_empty_n
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_write_ce
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_din
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_write
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_read_ce
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_full_n
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_dout
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_read
add wave -noupdate -group BFIFO_30 /sys_test/uut/msm_arr_U0/BFIFO_30_U/if_empty_n
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_write_ce
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_din
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_write
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_read_ce
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_full_n
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_dout
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_read
add wave -noupdate -group BFIFO_31 /sys_test/uut/msm_arr_U0/BFIFO_31_U/if_empty_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_full_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_dout
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_read
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_empty_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_write_ce
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_din
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_write
add wave -noupdate -group BFIFO_32 /sys_test/uut/msm_arr_U0/BFIFO_32_U/if_read_ce
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_din
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_write
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_read_ce
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_full_n
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_dout
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_read
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_empty_n
add wave -noupdate -group BFIFO_33 /sys_test/uut/msm_arr_U0/BFIFO_33_U/if_write_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_write_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_din
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_write
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_read_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_full_n
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_dout
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_read
add wave -noupdate -group BFIFO_34 /sys_test/uut/msm_arr_U0/BFIFO_34_U/if_empty_n
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_write_ce
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_din
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_write
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_read_ce
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_full_n
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_dout
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_read
add wave -noupdate -group BFIFO_35 /sys_test/uut/msm_arr_U0/BFIFO_35_U/if_empty_n
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_full_n
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_dout
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_read
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_empty_n
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_write_ce
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_din
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_write
add wave -noupdate -group BFIFO_36 /sys_test/uut/msm_arr_U0/BFIFO_36_U/if_read_ce
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_din
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_write
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_read_ce
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_full_n
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_dout
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_read
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_empty_n
add wave -noupdate -group BFIFO_37 /sys_test/uut/msm_arr_U0/BFIFO_37_U/if_write_ce
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_write_ce
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_din
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_write
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_read_ce
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_full_n
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_dout
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_read
add wave -noupdate -group BFIFO_38 /sys_test/uut/msm_arr_U0/BFIFO_38_U/if_empty_n
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_write_ce
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_din
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_write
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_read_ce
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_full_n
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_dout
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_read
add wave -noupdate -group BFIFO_39 /sys_test/uut/msm_arr_U0/BFIFO_39_U/if_empty_n
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_write_ce
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_din
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_write
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_read_ce
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_full_n
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_dout
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_read
add wave -noupdate -group BFIFO_40 /sys_test/uut/msm_arr_U0/BFIFO_40_U/if_empty_n
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_full_n
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_dout
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_read
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_empty_n
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_write_ce
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_din
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_write
add wave -noupdate -group BFIFO_41 /sys_test/uut/msm_arr_U0/BFIFO_41_U/if_read_ce
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_din
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_write
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_read_ce
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_full_n
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_dout
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_read
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_empty_n
add wave -noupdate -group BFIFO_42 /sys_test/uut/msm_arr_U0/BFIFO_42_U/if_write_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_0 /sys_test/uut/msm_arr_U0/bucket_process_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_1 /sys_test/uut/msm_arr_U0/bucket_process_1_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_2 /sys_test/uut/msm_arr_U0/bucket_process_2_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_3 /sys_test/uut/msm_arr_U0/bucket_process_3_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_4 /sys_test/uut/msm_arr_U0/bucket_process_4_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_5 /sys_test/uut/msm_arr_U0/bucket_process_5_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_6 /sys_test/uut/msm_arr_U0/bucket_process_6_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_7 /sys_test/uut/msm_arr_U0/bucket_process_7_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_8 /sys_test/uut/msm_arr_U0/bucket_process_8_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_9 /sys_test/uut/msm_arr_U0/bucket_process_9_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_10 /sys_test/uut/msm_arr_U0/bucket_process_10_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_11 /sys_test/uut/msm_arr_U0/bucket_process_11_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_12 /sys_test/uut/msm_arr_U0/bucket_process_12_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_13 /sys_test/uut/msm_arr_U0/bucket_process_13_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_14 /sys_test/uut/msm_arr_U0/bucket_process_14_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_15 /sys_test/uut/msm_arr_U0/bucket_process_15_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_16 /sys_test/uut/msm_arr_U0/bucket_process_16_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_17 /sys_test/uut/msm_arr_U0/bucket_process_17_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_18 /sys_test/uut/msm_arr_U0/bucket_process_18_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_19 /sys_test/uut/msm_arr_U0/bucket_process_19_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_20 /sys_test/uut/msm_arr_U0/bucket_process_20_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_21 /sys_test/uut/msm_arr_U0/bucket_process_21_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_22 /sys_test/uut/msm_arr_U0/bucket_process_22_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_23 /sys_test/uut/msm_arr_U0/bucket_process_23_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_24 /sys_test/uut/msm_arr_U0/bucket_process_24_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_25 /sys_test/uut/msm_arr_U0/bucket_process_25_U0/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_din
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_write
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_full_n
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_dout
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_read
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_empty_n
add wave -noupdate -expand -group OVFIFO_26 /sys_test/uut/msm_arr_U0/bucket_process_26_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_27 /sys_test/uut/msm_arr_U0/bucket_process_27_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_28 /sys_test/uut/msm_arr_U0/bucket_process_28_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_29 /sys_test/uut/msm_arr_U0/bucket_process_29_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_30 /sys_test/uut/msm_arr_U0/bucket_process_30_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_31 /sys_test/uut/msm_arr_U0/bucket_process_31_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_32 /sys_test/uut/msm_arr_U0/bucket_process_32_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_33 /sys_test/uut/msm_arr_U0/bucket_process_33_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_34 /sys_test/uut/msm_arr_U0/bucket_process_34_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_35 /sys_test/uut/msm_arr_U0/bucket_process_35_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_36 /sys_test/uut/msm_arr_U0/bucket_process_36_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_37 /sys_test/uut/msm_arr_U0/bucket_process_37_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_38 /sys_test/uut/msm_arr_U0/bucket_process_38_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_39 /sys_test/uut/msm_arr_U0/bucket_process_39_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_40 /sys_test/uut/msm_arr_U0/bucket_process_40_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_41 /sys_test/uut/msm_arr_U0/bucket_process_41_U0/OVFIFO_U/if_empty_n
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1261548246 fs} 0} {{Cursor 2} {333685970 fs} 0}
quietly wave cursor active 2
configure wave -namecolwidth 414
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
WaveRestoreZoom {0 fs} {1530649835 fs}

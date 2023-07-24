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
add wave -noupdate /sys_test/count_stream_empty_n
add wave -noupdate /sys_test/count_stream_read
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
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p1_x
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p2_x
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p1_y
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p2_y
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p1_z
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/p2_z
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/ap_return_0
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/ap_return_1
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/ap_return_2
add wave -noupdate -group alg_loop_2and3 /sys_test/uut/Block_split3982_proc141_U0/grp_alg_loop_2and3_fu_92/grp_padd_fu_3413/ap_ce
add wave -noupdate /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/i_44_fu_246
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p1_x
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p2_x
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p2_y
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p1_y
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p1_z
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/p2_z
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/ap_return_0
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/ap_return_1
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/ap_return_2
add wave -noupdate -expand -group dataflow_padd /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/grp_Loop_msm_arr_dataflow_padd_proc140_Pipeline_msm_arr_dataflow_padd_fu_120/grp_padd_fu_563/ap_ce
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
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_din
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_write
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read_ce
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_full_n
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_dout
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_read
add wave -noupdate -expand -group padd_output_42 /sys_test/uut/padd_output_fifo_42_U/if_empty_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_dout
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_read
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_empty_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_full_n
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_write_ce
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_read_ce
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_din
add wave -noupdate -group CFIFO_0 /sys_test/uut/CFIFO_0_U/if_write
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_read_ce
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_din
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_write
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_dout
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_read
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_empty_n
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_full_n
add wave -noupdate -group CFIFO_1 /sys_test/uut/CFIFO_1_U/if_write_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_write_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_din
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_write
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_read_ce
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_full_n
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_dout
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_read
add wave -noupdate -group CFIFO_2 /sys_test/uut/CFIFO_2_U/if_empty_n
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_write_ce
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_din
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_write
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_read_ce
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_full_n
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_dout
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_read
add wave -noupdate -group CFIFO_3 /sys_test/uut/CFIFO_3_U/if_empty_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_full_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_dout
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_read
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_empty_n
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_write_ce
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_din
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_write
add wave -noupdate -group CFIFO_4 /sys_test/uut/CFIFO_4_U/if_read_ce
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_din
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_write
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_read_ce
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_full_n
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_dout
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_read
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_empty_n
add wave -noupdate -group CFIFO_5 /sys_test/uut/CFIFO_5_U/if_write_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_write_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_din
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_write
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_read_ce
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_full_n
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_dout
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_read
add wave -noupdate -group CFIFO_6 /sys_test/uut/CFIFO_6_U/if_empty_n
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_write_ce
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_din
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_write
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_read_ce
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_full_n
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_dout
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_read
add wave -noupdate -group CFIFO_7 /sys_test/uut/CFIFO_7_U/if_empty_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_full_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_dout
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_read
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_empty_n
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_write_ce
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_din
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_write
add wave -noupdate -group CFIFO_8 /sys_test/uut/CFIFO_8_U/if_read_ce
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_din
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_write
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_read_ce
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_full_n
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_dout
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_read
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_empty_n
add wave -noupdate -group CFIFO_9 /sys_test/uut/CFIFO_9_U/if_write_ce
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_din
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_write
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_read_ce
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_full_n
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_dout
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_read
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_empty_n
add wave -noupdate -group CFIFO_10 /sys_test/uut/CFIFO_10_U/if_write_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_write_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_din
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_write
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_read_ce
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_full_n
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_dout
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_read
add wave -noupdate -group CFIFO_11 /sys_test/uut/CFIFO_11_U/if_empty_n
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_write_ce
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_din
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_write
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_read_ce
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_full_n
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_dout
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_read
add wave -noupdate -group CFIFO_12 /sys_test/uut/CFIFO_12_U/if_empty_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_full_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_dout
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_read
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_empty_n
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_write_ce
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_din
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_write
add wave -noupdate -group CFIFO_13 /sys_test/uut/CFIFO_13_U/if_read_ce
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_din
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_write
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_read_ce
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_full_n
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_dout
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_read
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_empty_n
add wave -noupdate -group CFIFO_14 /sys_test/uut/CFIFO_14_U/if_write_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_write_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_din
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_write
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_read_ce
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_full_n
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_dout
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_read
add wave -noupdate -group CFIFO_15 /sys_test/uut/CFIFO_15_U/if_empty_n
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_write_ce
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_din
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_write
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_read_ce
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_full_n
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_dout
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_read
add wave -noupdate -group CFIFO_16 /sys_test/uut/CFIFO_16_U/if_empty_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_full_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_dout
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_read
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_empty_n
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_write_ce
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_din
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_write
add wave -noupdate -group CFIFO_17 /sys_test/uut/CFIFO_17_U/if_read_ce
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_din
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_write
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_read_ce
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_full_n
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_dout
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_read
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_empty_n
add wave -noupdate -group CFIFO_18 /sys_test/uut/CFIFO_18_U/if_write_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_write_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_din
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_write
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_read_ce
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_full_n
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_dout
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_read
add wave -noupdate -group CFIFO_19 /sys_test/uut/CFIFO_19_U/if_empty_n
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_write_ce
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_din
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_write
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_read_ce
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_full_n
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_dout
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_read
add wave -noupdate -group CFIFO_20 /sys_test/uut/CFIFO_20_U/if_empty_n
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_write_ce
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_din
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_write
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_read_ce
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_full_n
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_dout
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_read
add wave -noupdate -group CFIFO_21 /sys_test/uut/CFIFO_21_U/if_empty_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_full_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_dout
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_read
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_empty_n
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_write_ce
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_din
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_write
add wave -noupdate -group CFIFO_22 /sys_test/uut/CFIFO_22_U/if_read_ce
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_din
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_write
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_read_ce
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_full_n
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_dout
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_read
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_empty_n
add wave -noupdate -group CFIFO_23 /sys_test/uut/CFIFO_23_U/if_write_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_write_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_din
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_write
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_read_ce
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_full_n
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_dout
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_read
add wave -noupdate -group CFIFO_24 /sys_test/uut/CFIFO_24_U/if_empty_n
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_write_ce
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_din
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_write
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_read_ce
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_full_n
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_dout
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_read
add wave -noupdate -group CFIFO_25 /sys_test/uut/CFIFO_25_U/if_empty_n
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_full_n
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_dout
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_read
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_empty_n
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_write_ce
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_din
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_write
add wave -noupdate -group CFIFO_26 /sys_test/uut/CFIFO_26_U/if_read_ce
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_din
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_write
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_read_ce
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_full_n
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_dout
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_read
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_empty_n
add wave -noupdate -group CFIFO_27 /sys_test/uut/CFIFO_27_U/if_write_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_write_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_din
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_write
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_read_ce
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_full_n
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_dout
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_read
add wave -noupdate -group CFIFO_28 /sys_test/uut/CFIFO_28_U/if_empty_n
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_write_ce
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_din
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_write
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_read_ce
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_full_n
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_dout
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_read
add wave -noupdate -group CFIFO_29 /sys_test/uut/CFIFO_29_U/if_empty_n
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_write_ce
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_din
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_write
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_read_ce
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_full_n
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_dout
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_read
add wave -noupdate -group CFIFO_30 /sys_test/uut/CFIFO_30_U/if_empty_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_full_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_dout
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_read
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_empty_n
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_write_ce
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_din
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_write
add wave -noupdate -group CFIFO_31 /sys_test/uut/CFIFO_31_U/if_read_ce
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_din
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_write
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_read_ce
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_full_n
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_dout
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_read
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_empty_n
add wave -noupdate -group CFIFO_32 /sys_test/uut/CFIFO_32_U/if_write_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_write_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_din
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_write
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_read_ce
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_full_n
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_dout
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_read
add wave -noupdate -group CFIFO_33 /sys_test/uut/CFIFO_33_U/if_empty_n
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_write_ce
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_din
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_write
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_read_ce
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_full_n
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_dout
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_read
add wave -noupdate -expand -group CFIFO_34 /sys_test/uut/CFIFO_34_U/if_empty_n
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_full_n
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_dout
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_read
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_empty_n
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_write_ce
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_din
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_write
add wave -noupdate -expand -group CFIFO_35 /sys_test/uut/CFIFO_35_U/if_read_ce
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_din
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_write
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_read_ce
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_full_n
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_dout
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_read
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_empty_n
add wave -noupdate -expand -group CFIFO_36 /sys_test/uut/CFIFO_36_U/if_write_ce
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_write_ce
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_din
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_write
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_read_ce
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_full_n
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_dout
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_read
add wave -noupdate -expand -group CFIFO_37 /sys_test/uut/CFIFO_37_U/if_empty_n
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_write_ce
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_din
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_write
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_read_ce
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_full_n
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_dout
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_read
add wave -noupdate -group CFIFO_38 /sys_test/uut/CFIFO_38_U/if_empty_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_full_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_dout
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_read
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_empty_n
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_write_ce
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_din
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_write
add wave -noupdate -group CFIFO_39 /sys_test/uut/CFIFO_39_U/if_read_ce
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_full_n
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_dout
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_read
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_empty_n
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_write_ce
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_din
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_write
add wave -noupdate -group CFIFO_40 /sys_test/uut/CFIFO_40_U/if_read_ce
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_din
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_write
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_read_ce
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_full_n
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_dout
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_read
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_empty_n
add wave -noupdate -expand -group CFIFO_41 /sys_test/uut/CFIFO_41_U/if_write_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_write_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_din
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_write
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_read_ce
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_full_n
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_dout
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_read
add wave -noupdate -group CFIFO_42 /sys_test/uut/CFIFO_42_U/if_empty_n
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_write_ce
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_read_ce
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_din
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_write
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_dout
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_read
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_empty_n
add wave -noupdate -group BFIFO_0 /sys_test/uut/BFIFO_0_U/if_full_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_dout
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_read
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_empty_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_full_n
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_write_ce
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_read_ce
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_din
add wave -noupdate -group BFIFO_1 /sys_test/uut/BFIFO_1_U/if_write
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_din
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_write
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_read_ce
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_full_n
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_dout
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_read
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_empty_n
add wave -noupdate -group BFIFO_2 /sys_test/uut/BFIFO_2_U/if_write_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_write_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_din
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_write
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_read_ce
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_full_n
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_dout
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_read
add wave -noupdate -group BFIFO_3 /sys_test/uut/BFIFO_3_U/if_empty_n
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_write_ce
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_din
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_write
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_read_ce
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_full_n
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_dout
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_read
add wave -noupdate -group BFIFO_4 /sys_test/uut/BFIFO_4_U/if_empty_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_full_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_dout
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_read
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_empty_n
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_write_ce
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_din
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_write
add wave -noupdate -group BFIFO_5 /sys_test/uut/BFIFO_5_U/if_read_ce
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_din
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_write
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_read_ce
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_full_n
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_dout
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_read
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_empty_n
add wave -noupdate -group BFIFO_6 /sys_test/uut/BFIFO_6_U/if_write_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_write_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_din
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_write
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_read_ce
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_full_n
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_dout
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_read
add wave -noupdate -group BFIFO_7 /sys_test/uut/BFIFO_7_U/if_empty_n
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_write_ce
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_din
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_write
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_read_ce
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_full_n
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_dout
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_read
add wave -noupdate -group BFIFO_8 /sys_test/uut/BFIFO_8_U/if_empty_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_full_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_dout
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_read
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_empty_n
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_write_ce
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_din
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_write
add wave -noupdate -group BFIFO_9 /sys_test/uut/BFIFO_9_U/if_read_ce
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_full_n
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_dout
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_read
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_empty_n
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_write_ce
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_din
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_write
add wave -noupdate -group BFIFO_10 /sys_test/uut/BFIFO_10_U/if_read_ce
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_din
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_write
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_read_ce
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_full_n
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_dout
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_read
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_empty_n
add wave -noupdate -group BFIFO_11 /sys_test/uut/BFIFO_11_U/if_write_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_write_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_din
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_write
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_read_ce
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_full_n
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_dout
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_read
add wave -noupdate -group BFIFO_12 /sys_test/uut/BFIFO_12_U/if_empty_n
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_write_ce
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_din
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_write
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_read_ce
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_full_n
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_dout
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_read
add wave -noupdate -group BFIFO_13 /sys_test/uut/BFIFO_13_U/if_empty_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_full_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_dout
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_read
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_empty_n
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_write_ce
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_din
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_write
add wave -noupdate -group BFIFO_14 /sys_test/uut/BFIFO_14_U/if_read_ce
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_din
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_write
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_read_ce
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_full_n
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_dout
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_read
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_empty_n
add wave -noupdate -group BFIFO_15 /sys_test/uut/BFIFO_15_U/if_write_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_write_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_din
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_write
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_read_ce
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_full_n
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_dout
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_read
add wave -noupdate -group BFIFO_16 /sys_test/uut/BFIFO_16_U/if_empty_n
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_write_ce
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_din
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_write
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_read_ce
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_full_n
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_dout
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_read
add wave -noupdate -group BFIFO_17 /sys_test/uut/BFIFO_17_U/if_empty_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_full_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_dout
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_read
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_empty_n
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_write_ce
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_din
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_write
add wave -noupdate -group BFIFO_18 /sys_test/uut/BFIFO_18_U/if_read_ce
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_din
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_write
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_read_ce
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_full_n
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_dout
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_read
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_empty_n
add wave -noupdate -group BFIFO_19 /sys_test/uut/BFIFO_19_U/if_write_ce
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_din
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_write
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_read_ce
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_full_n
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_dout
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_read
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_empty_n
add wave -noupdate -group BFIFO_20 /sys_test/uut/BFIFO_20_U/if_write_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_write_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_din
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_write
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_read_ce
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_full_n
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_dout
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_read
add wave -noupdate -group BFIFO_21 /sys_test/uut/BFIFO_21_U/if_empty_n
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_write_ce
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_din
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_write
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_read_ce
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_full_n
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_dout
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_read
add wave -noupdate -group BFIFO_22 /sys_test/uut/BFIFO_22_U/if_empty_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_full_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_dout
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_read
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_empty_n
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_write_ce
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_din
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_write
add wave -noupdate -group BFIFO_23 /sys_test/uut/BFIFO_23_U/if_read_ce
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_din
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_write
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_read_ce
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_full_n
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_dout
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_read
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_empty_n
add wave -noupdate -group BFIFO_24 /sys_test/uut/BFIFO_24_U/if_write_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_write_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_din
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_write
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_read_ce
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_full_n
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_dout
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_read
add wave -noupdate -group BFIFO_25 /sys_test/uut/BFIFO_25_U/if_empty_n
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_write_ce
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_din
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_write
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_read_ce
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_full_n
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_dout
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_read
add wave -noupdate -group BFIFO_26 /sys_test/uut/BFIFO_26_U/if_empty_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_full_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_dout
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_read
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_empty_n
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_write_ce
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_din
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_write
add wave -noupdate -group BFIFO_27 /sys_test/uut/BFIFO_27_U/if_read_ce
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_din
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_write
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_read_ce
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_full_n
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_dout
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_read
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_empty_n
add wave -noupdate -group BFIFO_28 /sys_test/uut/BFIFO_28_U/if_write_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_write_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_din
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_write
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_read_ce
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_full_n
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_dout
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_read
add wave -noupdate -group BFIFO_29 /sys_test/uut/BFIFO_29_U/if_empty_n
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_write_ce
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_din
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_write
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_read_ce
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_full_n
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_dout
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_read
add wave -noupdate -group BFIFO_30 /sys_test/uut/BFIFO_30_U/if_empty_n
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_write_ce
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_din
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_write
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_read_ce
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_full_n
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_dout
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_read
add wave -noupdate -group BFIFO_31 /sys_test/uut/BFIFO_31_U/if_empty_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_full_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_dout
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_read
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_empty_n
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_write_ce
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_din
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_write
add wave -noupdate -group BFIFO_32 /sys_test/uut/BFIFO_32_U/if_read_ce
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_din
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_write
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_read_ce
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_full_n
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_dout
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_read
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_empty_n
add wave -noupdate -group BFIFO_33 /sys_test/uut/BFIFO_33_U/if_write_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_write_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_din
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_write
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_read_ce
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_full_n
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_dout
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_read
add wave -noupdate -group BFIFO_34 /sys_test/uut/BFIFO_34_U/if_empty_n
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_write_ce
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_din
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_write
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_read_ce
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_full_n
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_dout
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_read
add wave -noupdate -group BFIFO_35 /sys_test/uut/BFIFO_35_U/if_empty_n
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_full_n
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_dout
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_read
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_empty_n
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_write_ce
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_din
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_write
add wave -noupdate -expand -group BFIFO_36 /sys_test/uut/BFIFO_36_U/if_read_ce
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_din
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_write
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_read_ce
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_full_n
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_dout
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_read
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_empty_n
add wave -noupdate -group BFIFO_37 /sys_test/uut/BFIFO_37_U/if_write_ce
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_write_ce
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_din
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_write
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_read_ce
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_full_n
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_dout
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_read
add wave -noupdate -expand -group BFIFO_38 /sys_test/uut/BFIFO_38_U/if_empty_n
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_write_ce
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_din
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_write
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_read_ce
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_full_n
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_dout
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_read
add wave -noupdate -expand -group BFIFO_39 /sys_test/uut/BFIFO_39_U/if_empty_n
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_write_ce
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_din
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_write
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_read_ce
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_full_n
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_dout
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_read
add wave -noupdate -expand -group BFIFO_40 /sys_test/uut/BFIFO_40_U/if_empty_n
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_full_n
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_dout
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_read
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_empty_n
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_write_ce
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_din
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_write
add wave -noupdate -expand -group BFIFO_41 /sys_test/uut/BFIFO_41_U/if_read_ce
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_din
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_write
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_read_ce
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_full_n
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_dout
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_read
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_empty_n
add wave -noupdate -expand -group BFIFO_42 /sys_test/uut/BFIFO_42_U/if_write_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_0 /sys_test/uut/bucket_process_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_1 /sys_test/uut/bucket_process_1_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_2 /sys_test/uut/bucket_process_2_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_3 /sys_test/uut/bucket_process_3_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_4 /sys_test/uut/bucket_process_4_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_5 /sys_test/uut/bucket_process_5_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_6 /sys_test/uut/bucket_process_6_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_7 /sys_test/uut/bucket_process_7_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_8 /sys_test/uut/bucket_process_8_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_9 /sys_test/uut/bucket_process_9_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_10 /sys_test/uut/bucket_process_10_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_11 /sys_test/uut/bucket_process_11_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_12 /sys_test/uut/bucket_process_12_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_13 /sys_test/uut/bucket_process_13_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_14 /sys_test/uut/bucket_process_14_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_15 /sys_test/uut/bucket_process_15_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_16 /sys_test/uut/bucket_process_16_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_17 /sys_test/uut/bucket_process_17_U0/OVFIFO_U/if_write_ce
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_write_ce
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_din
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_write
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_dout
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_read
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_empty_n
add wave -noupdate -expand -group OVFIFO_18 /sys_test/uut/bucket_process_18_U0/OVFIFO_U/if_full_n
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_write_ce
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_din
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_write
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_dout
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_read
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_empty_n
add wave -noupdate -expand -group OVFIFO_19 /sys_test/uut/bucket_process_19_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_20 /sys_test/uut/bucket_process_20_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_21 /sys_test/uut/bucket_process_21_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_22 /sys_test/uut/bucket_process_22_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_23 /sys_test/uut/bucket_process_23_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_24 /sys_test/uut/bucket_process_24_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_25 /sys_test/uut/bucket_process_25_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_26 /sys_test/uut/bucket_process_26_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_27 /sys_test/uut/bucket_process_27_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_28 /sys_test/uut/bucket_process_28_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_29 /sys_test/uut/bucket_process_29_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_30 /sys_test/uut/bucket_process_30_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_31 /sys_test/uut/bucket_process_31_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_32 /sys_test/uut/bucket_process_32_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_33 /sys_test/uut/bucket_process_33_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_34 /sys_test/uut/bucket_process_34_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_35 /sys_test/uut/bucket_process_35_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_36 /sys_test/uut/bucket_process_36_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_37 /sys_test/uut/bucket_process_37_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_38 /sys_test/uut/bucket_process_38_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_39 /sys_test/uut/bucket_process_39_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_full_n
add wave -noupdate -group OVFIFO_40 /sys_test/uut/bucket_process_40_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_write_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_read_ce
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_din
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_write
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_dout
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_read
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_empty_n
add wave -noupdate -group OVFIFO_41 /sys_test/uut/bucket_process_41_U0/OVFIFO_U/if_full_n
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_write_ce
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_din
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_write
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_read_ce
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_full_n
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_dout
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_read
add wave -noupdate -group B_1_0 /sys_test/uut/bucket_process_1_U0/B_0_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_dout
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_1_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_din
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_16_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_empty_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_full_n
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_read_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_write_ce
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_18_i_U/if_write
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_17_i_U/if_read
add wave -noupdate -group B_1_1 /sys_test/uut/bucket_process_1_U0/B_19_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_26_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_23_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_28_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_read
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_dout
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_22_i_U/if_write
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_25_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_2_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_24_i_U/if_empty_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_29_i_U/if_full_n
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_27_i_U/if_read_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_write_ce
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_20_i_U/if_din
add wave -noupdate -group B_1_2 /sys_test/uut/bucket_process_1_U0/B_21_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_33_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_read
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_39_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_35_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_3_i_U/if_write_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_38_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_31_i_U/if_din
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_32_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_write
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_30_i_U/if_full_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_empty_n
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_34_i_U/if_dout
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_37_i_U/if_read_ce
add wave -noupdate -group B_1_3 /sys_test/uut/bucket_process_1_U0/B_36_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_dout
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_41_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_42_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_43_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_40_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_write_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_read_ce
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_47_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_write
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_4_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_49_i_U/if_read
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_48_i_U/if_full_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_45_i_U/if_din
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_44_i_U/if_empty_n
add wave -noupdate -group B_1_4 /sys_test/uut/bucket_process_1_U0/B_46_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_57_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_59_i_U/if_dout
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_53_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_full_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_56_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_55_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_write_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_58_i_U/if_read_ce
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_write
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_50_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_5_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_51_i_U/if_din
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_52_i_U/if_read
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_empty_n
add wave -noupdate -group B_1_5 /sys_test/uut/bucket_process_1_U0/B_54_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_full_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_write_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_write_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_din
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_write
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_read_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_write_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_write
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_empty_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_dout
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_write_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_din
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_read_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_dout
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_empty_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_write
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_dout
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_dout
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_empty_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_full_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_full_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_full_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_write_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_full_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_write
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_read_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_din
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_din
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_61_i_U/if_read_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_read
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_6_i_U/if_dout
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_60_i_U/if_empty_n
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_write
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_din
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_63_i_U/if_read_ce
add wave -noupdate -group B_1_6 /sys_test/uut/bucket_process_1_U0/B_62_i_U/if_empty_n
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_din
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_write
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_read_ce
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_full_n
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_dout
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_read
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_empty_n
add wave -noupdate -group B_1_7 /sys_test/uut/bucket_process_1_U0/B_7_i_U/if_write_ce
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_write_ce
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_din
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_write
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_read_ce
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_full_n
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_dout
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_read
add wave -noupdate -group B_1_8 /sys_test/uut/bucket_process_1_U0/B_8_i_U/if_empty_n
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_write_ce
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_din
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_write
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_read_ce
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_full_n
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_dout
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_read
add wave -noupdate -group B_1_9 /sys_test/uut/bucket_process_1_U0/B_9_i_U/if_empty_n
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_write_ce
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_din
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_write
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_read_ce
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_full_n
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_dout
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_read
add wave -noupdate -group B_1_10 /sys_test/uut/bucket_process_1_U0/B_10_i_U/if_empty_n
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_full_n
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_dout
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_read
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_empty_n
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_write_ce
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_din
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_write
add wave -noupdate -group B_1_11 /sys_test/uut/bucket_process_1_U0/B_11_i_U/if_read_ce
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_din
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_write
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_read_ce
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_full_n
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_dout
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_read
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_empty_n
add wave -noupdate -group B_1_12 /sys_test/uut/bucket_process_1_U0/B_12_i_U/if_write_ce
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_write_ce
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_din
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_write
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_read_ce
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_full_n
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_dout
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_read
add wave -noupdate -group B_1_13 /sys_test/uut/bucket_process_1_U0/B_13_i_U/if_empty_n
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_write_ce
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_din
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_write
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_read_ce
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_full_n
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_dout
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_read
add wave -noupdate -group B_1_14 /sys_test/uut/bucket_process_1_U0/B_14_i_U/if_empty_n
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_full_n
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_dout
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_read
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_empty_n
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_write_ce
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_din
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_write
add wave -noupdate -group B_1_15 /sys_test/uut/bucket_process_1_U0/B_15_i_U/if_read_ce
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_40_U0/bucket_process_40_Loop_1_proc130_U0/grp_bucket_process_40_Loop_1_proc130_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_37_U0/bucket_process_37_Loop_1_proc124_U0/grp_bucket_process_37_Loop_1_proc124_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_36_U0/bucket_process_36_Loop_1_proc122_U0/grp_bucket_process_36_Loop_1_proc122_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_23_U0/bucket_process_23_Loop_1_proc96_U0/grp_bucket_process_23_Loop_1_proc96_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_35_U0/bucket_process_35_Loop_1_proc120_U0/grp_bucket_process_35_Loop_1_proc120_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_19_U0/bucket_process_19_Loop_1_proc88_U0/grp_bucket_process_19_Loop_1_proc88_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_13_U0/bucket_process_13_Loop_1_proc76_U0/grp_bucket_process_13_Loop_1_proc76_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_4_U0/bucket_process_4_Loop_1_proc58_U0/grp_bucket_process_4_Loop_1_proc58_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_21_U0/bucket_process_21_Loop_1_proc92_U0/grp_bucket_process_21_Loop_1_proc92_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_3_U0/bucket_process_3_Loop_1_proc56_U0/grp_bucket_process_3_Loop_1_proc56_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_17_U0/bucket_process_17_Loop_1_proc84_U0/grp_bucket_process_17_Loop_1_proc84_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_2_U0/bucket_process_2_Loop_1_proc54_U0/grp_bucket_process_2_Loop_1_proc54_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_11_U0/bucket_process_11_Loop_1_proc72_U0/grp_bucket_process_11_Loop_1_proc72_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_34_U0/bucket_process_34_Loop_1_proc118_U0/grp_bucket_process_34_Loop_1_proc118_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_1_U0/bucket_process_1_Loop_1_proc52_U0/grp_bucket_process_1_Loop_1_proc52_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_33_U0/bucket_process_33_Loop_1_proc116_U0/grp_bucket_process_33_Loop_1_proc116_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_15_U0/bucket_process_15_Loop_1_proc80_U0/grp_bucket_process_15_Loop_1_proc80_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_32_U0/bucket_process_32_Loop_1_proc114_U0/grp_bucket_process_32_Loop_1_proc114_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_29_U0/bucket_process_29_Loop_1_proc108_U0/grp_bucket_process_29_Loop_1_proc108_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_31_U0/bucket_process_31_Loop_1_proc112_U0/grp_bucket_process_31_Loop_1_proc112_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_28_U0/bucket_process_28_Loop_1_proc106_U0/grp_bucket_process_28_Loop_1_proc106_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_24_U0/bucket_process_24_Loop_1_proc98_U0/grp_bucket_process_24_Loop_1_proc98_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_30_U0/bucket_process_30_Loop_1_proc110_U0/grp_bucket_process_30_Loop_1_proc110_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_27_U0/bucket_process_27_Loop_1_proc104_U0/grp_bucket_process_27_Loop_1_proc104_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_14_U0/bucket_process_14_Loop_1_proc78_U0/grp_bucket_process_14_Loop_1_proc78_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_26_U0/bucket_process_26_Loop_1_proc102_U0/grp_bucket_process_26_Loop_1_proc102_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_22_U0/bucket_process_22_Loop_1_proc94_U0/grp_bucket_process_22_Loop_1_proc94_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_25_U0/bucket_process_25_Loop_1_proc100_U0/grp_bucket_process_25_Loop_1_proc100_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_18_U0/bucket_process_18_Loop_1_proc86_U0/grp_bucket_process_18_Loop_1_proc86_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_9_U0/bucket_process_9_Loop_1_proc68_U0/grp_bucket_process_9_Loop_1_proc68_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_12_U0/bucket_process_12_Loop_1_proc74_U0/grp_bucket_process_12_Loop_1_proc74_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_20_U0/bucket_process_20_Loop_1_proc90_U0/grp_bucket_process_20_Loop_1_proc90_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_8_U0/bucket_process_8_Loop_1_proc66_U0/grp_bucket_process_8_Loop_1_proc66_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_16_U0/bucket_process_16_Loop_1_proc82_U0/grp_bucket_process_16_Loop_1_proc82_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_7_U0/bucket_process_7_Loop_1_proc64_U0/grp_bucket_process_7_Loop_1_proc64_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_10_U0/bucket_process_10_Loop_1_proc70_U0/grp_bucket_process_10_Loop_1_proc70_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_39_U0/bucket_process_39_Loop_1_proc128_U0/grp_bucket_process_39_Loop_1_proc128_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_6_U0/bucket_process_6_Loop_1_proc62_U0/grp_bucket_process_6_Loop_1_proc62_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_41_U0/bucket_process_41_Loop_1_proc132_U0/grp_bucket_process_41_Loop_1_proc132_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_38_U0/bucket_process_38_Loop_1_proc126_U0/grp_bucket_process_38_Loop_1_proc126_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_padd_of /sys_test/uut/bucket_process_5_U0/bucket_process_5_Loop_1_proc60_U0/grp_bucket_process_5_Loop_1_proc60_Pipeline_VITIS_LOOP_52_1_fu_857/count_padd_of_V_fu_326
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_25_U0/bucket_process_25_Loop_1_proc100_U0/grp_bucket_process_25_Loop_1_proc100_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_18_U0/bucket_process_18_Loop_1_proc86_U0/grp_bucket_process_18_Loop_1_proc86_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_9_U0/bucket_process_9_Loop_1_proc68_U0/grp_bucket_process_9_Loop_1_proc68_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_12_U0/bucket_process_12_Loop_1_proc74_U0/grp_bucket_process_12_Loop_1_proc74_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_17_U0/bucket_process_17_Loop_1_proc84_U0/grp_bucket_process_17_Loop_1_proc84_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_2_U0/bucket_process_2_Loop_1_proc54_U0/grp_bucket_process_2_Loop_1_proc54_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_11_U0/bucket_process_11_Loop_1_proc72_U0/grp_bucket_process_11_Loop_1_proc72_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_16_U0/bucket_process_16_Loop_1_proc82_U0/grp_bucket_process_16_Loop_1_proc82_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_7_U0/bucket_process_7_Loop_1_proc64_U0/grp_bucket_process_7_Loop_1_proc64_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_10_U0/bucket_process_10_Loop_1_proc70_U0/grp_bucket_process_10_Loop_1_proc70_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_33_U0/bucket_process_33_Loop_1_proc116_U0/grp_bucket_process_33_Loop_1_proc116_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_15_U0/bucket_process_15_Loop_1_proc80_U0/grp_bucket_process_15_Loop_1_proc80_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_41_U0/bucket_process_41_Loop_1_proc132_U0/grp_bucket_process_41_Loop_1_proc132_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_38_U0/bucket_process_38_Loop_1_proc126_U0/grp_bucket_process_38_Loop_1_proc126_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_5_U0/bucket_process_5_Loop_1_proc60_U0/grp_bucket_process_5_Loop_1_proc60_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_31_U0/bucket_process_31_Loop_1_proc112_U0/grp_bucket_process_31_Loop_1_proc112_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_28_U0/bucket_process_28_Loop_1_proc106_U0/grp_bucket_process_28_Loop_1_proc106_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_24_U0/bucket_process_24_Loop_1_proc98_U0/grp_bucket_process_24_Loop_1_proc98_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_36_U0/bucket_process_36_Loop_1_proc122_U0/grp_bucket_process_36_Loop_1_proc122_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_23_U0/bucket_process_23_Loop_1_proc96_U0/grp_bucket_process_23_Loop_1_proc96_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_26_U0/bucket_process_26_Loop_1_proc102_U0/grp_bucket_process_26_Loop_1_proc102_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_22_U0/bucket_process_22_Loop_1_proc94_U0/grp_bucket_process_22_Loop_1_proc94_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_21_U0/bucket_process_21_Loop_1_proc92_U0/grp_bucket_process_21_Loop_1_proc92_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_3_U0/bucket_process_3_Loop_1_proc56_U0/grp_bucket_process_3_Loop_1_proc56_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_20_U0/bucket_process_20_Loop_1_proc90_U0/grp_bucket_process_20_Loop_1_proc90_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_8_U0/bucket_process_8_Loop_1_proc66_U0/grp_bucket_process_8_Loop_1_proc66_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_34_U0/bucket_process_34_Loop_1_proc118_U0/grp_bucket_process_34_Loop_1_proc118_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_1_U0/bucket_process_1_Loop_1_proc52_U0/grp_bucket_process_1_Loop_1_proc52_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_39_U0/bucket_process_39_Loop_1_proc128_U0/grp_bucket_process_39_Loop_1_proc128_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_6_U0/bucket_process_6_Loop_1_proc62_U0/grp_bucket_process_6_Loop_1_proc62_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_32_U0/bucket_process_32_Loop_1_proc114_U0/grp_bucket_process_32_Loop_1_proc114_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_29_U0/bucket_process_29_Loop_1_proc108_U0/grp_bucket_process_29_Loop_1_proc108_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_40_U0/bucket_process_40_Loop_1_proc130_U0/grp_bucket_process_40_Loop_1_proc130_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_37_U0/bucket_process_37_Loop_1_proc124_U0/grp_bucket_process_37_Loop_1_proc124_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_30_U0/bucket_process_30_Loop_1_proc110_U0/grp_bucket_process_30_Loop_1_proc110_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_27_U0/bucket_process_27_Loop_1_proc104_U0/grp_bucket_process_27_Loop_1_proc104_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_14_U0/bucket_process_14_Loop_1_proc78_U0/grp_bucket_process_14_Loop_1_proc78_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_35_U0/bucket_process_35_Loop_1_proc120_U0/grp_bucket_process_35_Loop_1_proc120_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_19_U0/bucket_process_19_Loop_1_proc88_U0/grp_bucket_process_19_Loop_1_proc88_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_13_U0/bucket_process_13_Loop_1_proc76_U0/grp_bucket_process_13_Loop_1_proc76_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate -expand -group count_if /sys_test/uut/bucket_process_4_U0/bucket_process_4_Loop_1_proc58_U0/grp_bucket_process_4_Loop_1_proc58_Pipeline_VITIS_LOOP_52_1_fu_857/count_if_V_fu_330
add wave -noupdate /sys_test/uut/Loop_msm_arr_dataflow_0_proc138_U0/i_4_fu_298
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_write_ce
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_write
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_din
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_read_ce
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_read
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_full_n
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_empty_n
add wave -noupdate /sys_test/uut/padd_input_fifo_U/if_dout
add wave -noupdate /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/total_num_padd_ops_dout
add wave -noupdate /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/total_num_padd_ops_empty_n
add wave -noupdate /sys_test/uut/Loop_msm_arr_dataflow_padd_proc140_U0/total_num_padd_ops_read
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7778850602 fs} 0}
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
WaveRestoreZoom {7487920687 fs} {7996711313 fs}

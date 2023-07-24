onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sys_test/ap_rst
add wave -noupdate /sys_test/uut/ap_done
add wave -noupdate /sys_test/uut/ap_ready
add wave -noupdate /sys_test/uut/ap_start
add wave -noupdate /sys_test/ap_clk
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
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_full_n
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_write_ce
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_write
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_din
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_empty_n
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_read_ce
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_read
add wave -noupdate -expand -group CFIFO /sys_test/uut/grp_bucket_unit_fu_275/CFIFO_U/if_dout
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_empty_n
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_read_ce
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_read
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_dout
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_full_n
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_write_ce
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_write
add wave -noupdate -expand -group OVFIFO /sys_test/uut/grp_bucket_unit_fu_275/OVFIFO_U/if_din
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_empty_n
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_read_ce
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_read
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_dout
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_full_n
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_write_ce
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_write
add wave -noupdate -expand -group B_8 /sys_test/uut/grp_bucket_unit_fu_275/B_8_U/if_din
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_empty_n
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_read_ce
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_read
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_dout
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_full_n
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_write_ce
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_write
add wave -noupdate -expand -group BFIFO_2 /sys_test/uut/grp_bucket_unit_fu_275/BFIFO_2_U/if_din
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_address0
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_ce0
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_d0
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_q0
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_we0
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_address1
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_ce1
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_d1
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_q1
add wave -noupdate -expand -group B_i /sys_test/uut/grp_bucket_unit_fu_275/B_i_we1
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p1_x
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p1_y
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p1_z
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p2_x
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p2_y
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/p2_z
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/ap_return_0
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/ap_return_1
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/ap_return_2
add wave -noupdate -expand -group padd /sys_test/uut/grp_bucket_unit_fu_275/bucket_unit_Loop_bucket_unit_label1_proc11_U0/grp_bucket_unit_Loop_bucket_unit_label1_proc11_Pipeline_bucket_unit_label1_fu_36/grp_padd_fu_97/ap_ce
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_empty_n
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_read_ce
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_read
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_dout
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_full_n
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_write_ce
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_write
add wave -noupdate -expand -group B_7 /sys_test/uut/grp_bucket_unit_fu_275/B_7_U/if_din
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_full_n
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_write_ce
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_write
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_din
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_empty_n
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_read_ce
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_read
add wave -noupdate -expand -group BFIFO_1 /sys_test/uut/BFIFO_1_fifo_U/if_dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2738981 ps} 0}
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
WaveRestoreZoom {0 ps} {2362500 ps}

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
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p1_x
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p1_y
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p1_z
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p2_x
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p2_y
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/p2_z
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/ap_return_0
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/ap_return_1
add wave -noupdate -expand -group padd /sys_test/uut/grp_padd_fu_235/ap_return_2
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/p_x
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/p_y
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/p_z
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/ap_return_0
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/ap_return_1
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/ap_return_2
add wave -noupdate -expand -group pdouble /sys_test/uut/grp_msm_arr_Pipeline_VITIS_LOOP_139_3_fu_219/grp_pdouble_fu_168/ap_ce
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
WaveRestoreZoom {0 ps} {4725 ns}

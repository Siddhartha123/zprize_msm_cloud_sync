find signals -r /sys_test/uut/bucket_process_*_U0/bucket_process_*_Loop_1_proc*_U0/grp_bucket_process_*_Loop_1_*_Pipeline_VITIS_LOOP_*_fu_*/count_padd_of_V_fu_*

find signals -r /sys_test/uut/bucket_process_*_U0/bucket_process_*_Loop_1_proc*_U0/grp_bucket_process_*_Loop_1_*_Pipeline_VITIS_LOOP_*_fu_*/count_if_V_fu_*

set signals_list [find signals -r "/sys_test/uut/bucket_process_*_U0/bucket_process_*_Loop_1_proc*_U0/grp_bucket_process_*_Loop_1_*_Pipeline_VITIS_LOOP_*_fu_*/count_padd_of_V_fu_*"]
foreach sig $signals_list { 
    add wave -group "count_padd_of" $sig
}

set signals_list [find signals -r "/sys_test/uut/bucket_process_*_U0/bucket_process_*_Loop_1_proc*_U0/grp_bucket_process_*_Loop_1_*_Pipeline_VITIS_LOOP_*_fu_*/count_if_V_fu_*"]
foreach sig $signals_list { 
    add wave -group "count_if" $sig
}
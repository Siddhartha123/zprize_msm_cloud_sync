# padd_input_fifo

# grp_alg_loop2and3_fu_i/grp_padd_fu
set signals_list [find signals -r "/sys_test/uut/*/grp_alg_loop_2and3_*/grp_padd_*/p*_x"]
foreach sig $signals_list { 
    add wave -group "alg_loop_2and3" $sig
}
set signals_list [find signals -r "/sys_test/uut/*/grp_alg_loop_2and3_*/grp_padd_*/p*_y"]
foreach sig $signals_list { 
    add wave -group "alg_loop_2and3" $sig
}
set signals_list [find signals -r "/sys_test/uut/*/grp_alg_loop_2and3_*/grp_padd_*/p*_z"]
foreach sig $signals_list { 
    add wave -group "alg_loop_2and3" $sig
}

# dataflow_padd/grp_padd_fu
set signals_list [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/p*_x"]
foreach sig $signals_list { 
    add wave -group "dataflow_padd" $sig
}
set signals_list [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/p*_y"]
foreach sig $signals_list { 
    add wave -group "dataflow_padd" $sig
}
set signals_list [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/p*_z"]
foreach sig $signals_list { 
    add wave -group "dataflow_padd" $sig
}
add wave -group "dataflow_padd" [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/ap_return_0"]
add wave -group "dataflow_padd" [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/ap_return_1"]
add wave -group "dataflow_padd" [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/ap_return_2"]
# add wave -group "dataflow_padd" [find signals -r "/sys_test/uut/padd_unit*/*msm_arr_dataflow_padd*/grp_padd_*/ap_ce"]


# padd_output_fifo_i
# CFIFO_i
# BFIFO_i
# bucket_process_Ui/OVFIFO

echo "Adding padd_output_fifo signals ..."
for {set i 0} {$i < 63} {incr i} {
    set signals_list [find signals -r "/sys_test/uut/padd_output_fifo_${i}_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "padd_output_$i" $sig
    }
}


set signals_list [find signals -r "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_*_write"];
foreach sig $signals_list { 
    add wave -group "padd_output_write" $sig
}

set signals_list [find signals -r "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_502_1_proc148_U0/grp_padd_unit2_Loop_VITIS_LOOP_502_1_proc148_Pipeline_VITIS_LOOP_647_1_fu_192/padd_output_fifo_*_full_n"];
foreach sig $signals_list { 
    add wave -group "padd_output_full_n" $sig
}



echo "Adding CFIFO signals ..."
for {set i 0} {$i < 63} {incr i} {
    set signals_list [find signals -r "/sys_test/uut/msm_arr*/CFIFO_${i}_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "CFIFO_$i" $sig
    }
}

echo "Adding BFIFO signals ..."
for {set i 0} {$i < 63} {incr i} {
    set signals_list [find signals -r "/sys_test/uut/msm_arr*/BFIFO_${i}_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "BFIFO_$i" $sig
    }
}

echo "Adding OVFIFO signals ..."
for {set i 0} {$i < 43} {incr i} {
    set k [expr {$i<1 ? "" : "_${i}"}]
    set signals_list [find signals -r "/sys_test/uut/msm_arr*/bucket_process${k}_U0/OVFIFO_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "OVFIFO_$i" $sig
    }
}

for {set j 0} {$j < 1} {incr j} {
    for {set i 0} {$i < 64} {incr i} {
        set k [expr {$j<1 ? "" : "_${j}"}]
        set signals_list [find signals -r "/sys_test/uut/msm_arr*/bucket_process${k}_U0/B_${i}*/if_*"];
        echo $signals_list
        foreach sig $signals_list { 
            add wave -group "B_${j}_$i" $sig
        }
    }
}
transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog ../syn/verilog/*.v
# vlog ../syn/verilog/separate_synth/*.v
vlog ../../../tester/*.v

vsim -default_radix unsigned -wlf wave.wlf sys_test
# add wave *
# do wave_find.do
# do count.do
# do wave.do
do wave_dataflow.do
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

echo "Adding SFIFO signals ..."
for {set i 0} {$i < 43} {incr i} {
    set k [expr {$i<1 ? "" : "_${i}"}]
    set signals_list [find signals -r "/sys_test/uut/msm_arr*/bucket_process${k}_U0/bucket_process_*/SFIFO_fifo_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "SFIFO_$i" $sig
    }
}

echo "Adding padd_output_fifo signals ..."
for {set i 0} {$i < 63} {incr i} {
    set signals_list [find signals -r "/sys_test/uut/padd_output_fifo_${i}_U/if_*"];
    foreach sig $signals_list { 
        add wave -group "padd_output_$i" $sig
    }
}

echo "Adding padd input/output signals ..."
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p1_x"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p1_y"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p1_z"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p2_x"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p2_y"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/p2_z"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/ap_ce"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/ap_return_0"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/ap_return_1"];
add wave -group "grp_padd" [find signals "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/grp_dataflow_padd_unit_fixed_fu_*/grp_padd_fu_*/ap_return_2"];

echo "Adding scratch_pad signals ..."
set signals_list [find signals -r "/sys_test/uut/padd_unit2_U0/padd_unit2_Loop_VITIS_LOOP_*/scratch_pad_*"];
foreach sig $signals_list { 
    add wave -group "scratch_pad" $sig
}
    

#run 10 us
set moduleName bucket_unit_csim_sr
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bucket_unit_csim_sr}
set C_modelType { void 0 }
set C_modelArgList {
	{ BFIFO_1176 int 43 regular {fifo 0 volatile }  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
	{ num_padd_ops int 13 regular  }
	{ count_B int 13 regular {array 16 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "BFIFO_1176", "interface" : "fifo", "bitwidth" : 43, "direction" : "READONLY"} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_padd_ops", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "count_B", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ BFIFO_1176_dout sc_in sc_lv 43 signal 0 } 
	{ BFIFO_1176_empty_n sc_in sc_logic 1 signal 0 } 
	{ BFIFO_1176_read sc_out sc_logic 1 signal 0 } 
	{ B_i_address0 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_i_d0 sc_out sc_lv 32 signal 1 } 
	{ B_i_q0 sc_in sc_lv 32 signal 1 } 
	{ B_i_we0 sc_out sc_logic 1 signal 1 } 
	{ B_i_address1 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_i_d1 sc_out sc_lv 32 signal 1 } 
	{ B_i_q1 sc_in sc_lv 32 signal 1 } 
	{ B_i_we1 sc_out sc_logic 1 signal 1 } 
	{ num_padd_ops sc_in sc_lv 13 signal 2 } 
	{ count_B_address0 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ count_B_d0 sc_out sc_lv 13 signal 3 } 
	{ count_B_q0 sc_in sc_lv 13 signal 3 } 
	{ count_B_we0 sc_out sc_logic 1 signal 3 } 
	{ count_B_address1 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce1 sc_out sc_logic 1 signal 3 } 
	{ count_B_d1 sc_out sc_lv 13 signal 3 } 
	{ count_B_q1 sc_in sc_lv 13 signal 3 } 
	{ count_B_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ num_padd_ops_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "BFIFO_1176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "dout" }} , 
 	{ "name": "BFIFO_1176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "empty_n" }} , 
 	{ "name": "BFIFO_1176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "read" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "q0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }} , 
 	{ "name": "B_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "q1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "num_padd_ops", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "default" }} , 
 	{ "name": "count_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address0" }} , 
 	{ "name": "count_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce0" }} , 
 	{ "name": "count_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "d0" }} , 
 	{ "name": "count_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q0" }} , 
 	{ "name": "count_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "we0" }} , 
 	{ "name": "count_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address1" }} , 
 	{ "name": "count_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce1" }} , 
 	{ "name": "count_B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "d1" }} , 
 	{ "name": "count_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q1" }} , 
 	{ "name": "count_B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "num_padd_ops_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "num_padd_ops", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "13", "39", "40", "41", "42"],
		"CDFG" : "bucket_unit_csim_sr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"},
			{"ID" : "13", "Name" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0"}],
		"Port" : [
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "BFIFO_1176"}]},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "B_i"}]},
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "count_B"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "bucket_unit_csim_sr_Block_split30_proc9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "BFIFO_1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "13", "DependentChan" : "39", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "40", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.padd_count_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.bcount_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.fill_count_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_0_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_2_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_3_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_4_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_5_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_6_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_7_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8226",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "40", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "39", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110", "Parent" : "13", "Child" : ["15", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "padd",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "14", "Child" : ["16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "pdouble",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "15"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "15"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "15"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "15"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "14"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "14"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "14"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "14"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "14"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "14"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "14"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "14"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "14"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "14"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "14"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "14"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "14"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "14"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "14"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "14"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BFIFO_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CFIFO_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_padd_ops_c_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bucket_unit_csim_sr {
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}}
	bucket_unit_csim_sr_Block_split30_proc9 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}
		BFIFO_2 {Type IO LastRead 13 FirstWrite -1}
		CFIFO {Type O LastRead -1 FirstWrite 33}
		num_padd_ops_out {Type O LastRead -1 FirstWrite 0}}
	bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		CFIFO {Type I LastRead 2 FirstWrite -1}
		BFIFO_2 {Type O LastRead -1 FirstWrite 35}}
	padd {
		p1_x {Type I LastRead 0 FirstWrite -1}
		p1_y {Type I LastRead 0 FirstWrite -1}
		p1_z {Type I LastRead 0 FirstWrite -1}
		p2_x {Type I LastRead 0 FirstWrite -1}
		p2_y {Type I LastRead 0 FirstWrite -1}
		p2_z {Type I LastRead 0 FirstWrite -1}}
	pdouble {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	BFIFO_1176 { ap_fifo {  { BFIFO_1176_dout fifo_data 0 43 }  { BFIFO_1176_empty_n fifo_status 0 1 }  { BFIFO_1176_read fifo_update 1 1 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_q0 mem_dout 0 32 }  { B_i_we0 mem_we 1 1 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 }  { B_i_q1 mem_dout 0 32 }  { B_i_we1 MemPortWE2 1 1 } } }
	num_padd_ops { ap_none {  { num_padd_ops in_data 0 13 }  { num_padd_ops_ap_vld in_vld 0 1 } } }
	count_B { ap_memory {  { count_B_address0 mem_address 1 4 }  { count_B_ce0 mem_ce 1 1 }  { count_B_d0 mem_din 1 13 }  { count_B_q0 mem_dout 0 13 }  { count_B_we0 mem_we 1 1 }  { count_B_address1 mem_address 1 4 }  { count_B_ce1 mem_ce 1 1 }  { count_B_d1 mem_din 1 13 }  { count_B_q1 mem_dout 0 13 }  { count_B_we1 mem_we 1 1 } } }
}
set moduleName bucket_unit_csim_sr
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bucket_unit_csim_sr}
set C_modelType { void 0 }
set C_modelArgList {
	{ BFIFO_1176 int 43 regular {fifo 0 volatile }  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
	{ num_padd_ops int 13 regular  }
	{ count_B int 13 regular {array 16 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "BFIFO_1176", "interface" : "fifo", "bitwidth" : 43, "direction" : "READONLY"} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_padd_ops", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "count_B", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ BFIFO_1176_dout sc_in sc_lv 43 signal 0 } 
	{ BFIFO_1176_empty_n sc_in sc_logic 1 signal 0 } 
	{ BFIFO_1176_read sc_out sc_logic 1 signal 0 } 
	{ B_i_address0 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_i_d0 sc_out sc_lv 32 signal 1 } 
	{ B_i_q0 sc_in sc_lv 32 signal 1 } 
	{ B_i_we0 sc_out sc_logic 1 signal 1 } 
	{ B_i_address1 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_i_d1 sc_out sc_lv 32 signal 1 } 
	{ B_i_q1 sc_in sc_lv 32 signal 1 } 
	{ B_i_we1 sc_out sc_logic 1 signal 1 } 
	{ num_padd_ops sc_in sc_lv 13 signal 2 } 
	{ count_B_address0 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ count_B_d0 sc_out sc_lv 13 signal 3 } 
	{ count_B_q0 sc_in sc_lv 13 signal 3 } 
	{ count_B_we0 sc_out sc_logic 1 signal 3 } 
	{ count_B_address1 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce1 sc_out sc_logic 1 signal 3 } 
	{ count_B_d1 sc_out sc_lv 13 signal 3 } 
	{ count_B_q1 sc_in sc_lv 13 signal 3 } 
	{ count_B_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ num_padd_ops_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "BFIFO_1176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "dout" }} , 
 	{ "name": "BFIFO_1176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "empty_n" }} , 
 	{ "name": "BFIFO_1176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "read" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "q0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }} , 
 	{ "name": "B_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "q1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "num_padd_ops", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "default" }} , 
 	{ "name": "count_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address0" }} , 
 	{ "name": "count_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce0" }} , 
 	{ "name": "count_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "d0" }} , 
 	{ "name": "count_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q0" }} , 
 	{ "name": "count_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "we0" }} , 
 	{ "name": "count_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address1" }} , 
 	{ "name": "count_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce1" }} , 
 	{ "name": "count_B_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "d1" }} , 
 	{ "name": "count_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q1" }} , 
 	{ "name": "count_B_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "num_padd_ops_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "num_padd_ops", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "13", "39", "40", "41", "42"],
		"CDFG" : "bucket_unit_csim_sr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"},
			{"ID" : "13", "Name" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0"}],
		"Port" : [
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "BFIFO_1176"}]},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "B_i"}]},
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "count_B"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "bucket_unit_csim_sr_Block_split30_proc9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "BFIFO_1176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "13", "DependentChan" : "39", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "40", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.padd_count_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.bcount_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.fill_count_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_0_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_2_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_3_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_4_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_5_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_6_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_7_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8226",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "40", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "39", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110", "Parent" : "13", "Child" : ["15", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "padd",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "14", "Child" : ["16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "pdouble",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "15"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "15"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "15"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "15"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "14"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "14"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "14"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "14"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "14"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "14"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "14"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "14"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "14"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "14"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "14"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "14"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "14"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "14"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "14"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "14"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BFIFO_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CFIFO_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_padd_ops_c_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bucket_unit_csim_sr {
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}}
	bucket_unit_csim_sr_Block_split30_proc9 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}
		BFIFO_2 {Type IO LastRead 13 FirstWrite -1}
		CFIFO {Type O LastRead -1 FirstWrite 33}
		num_padd_ops_out {Type O LastRead -1 FirstWrite 0}}
	bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		CFIFO {Type I LastRead 2 FirstWrite -1}
		BFIFO_2 {Type O LastRead -1 FirstWrite 35}}
	padd {
		p1_x {Type I LastRead 0 FirstWrite -1}
		p1_y {Type I LastRead 0 FirstWrite -1}
		p1_z {Type I LastRead 0 FirstWrite -1}
		p2_x {Type I LastRead 0 FirstWrite -1}
		p2_y {Type I LastRead 0 FirstWrite -1}
		p2_z {Type I LastRead 0 FirstWrite -1}}
	pdouble {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	BFIFO_1176 { ap_fifo {  { BFIFO_1176_dout fifo_data 0 43 }  { BFIFO_1176_empty_n fifo_status 0 1 }  { BFIFO_1176_read fifo_update 1 1 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_q0 mem_dout 0 32 }  { B_i_we0 mem_we 1 1 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 }  { B_i_q1 mem_dout 0 32 }  { B_i_we1 MemPortWE2 1 1 } } }
	num_padd_ops { ap_none {  { num_padd_ops in_data 0 13 }  { num_padd_ops_ap_vld in_vld 0 1 } } }
	count_B { ap_memory {  { count_B_address0 mem_address 1 4 }  { count_B_ce0 mem_ce 1 1 }  { count_B_d0 mem_din 1 13 }  { count_B_q0 mem_dout 0 13 }  { count_B_we0 mem_we 1 1 }  { count_B_address1 mem_address 1 4 }  { count_B_ce1 mem_ce 1 1 }  { count_B_d1 mem_din 1 13 }  { count_B_q1 mem_dout 0 13 }  { count_B_we1 mem_we 1 1 } } }
}

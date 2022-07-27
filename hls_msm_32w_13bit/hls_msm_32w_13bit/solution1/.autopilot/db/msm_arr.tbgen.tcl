set moduleName msm_arr
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {msm_arr}
set C_modelType { void 0 }
set C_modelArgList {
	{ P_arr_x int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ P_arr_y int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ P_arr_z int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ K_arr int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P_arr_x", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_x","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P_arr_y", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_y","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P_arr_z", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_z","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "K_arr", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "K_arr","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B_i","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P_arr_x_address0 sc_out sc_lv 7 signal 0 } 
	{ P_arr_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ P_arr_x_q0 sc_in sc_lv 16 signal 0 } 
	{ P_arr_y_address0 sc_out sc_lv 7 signal 1 } 
	{ P_arr_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ P_arr_y_q0 sc_in sc_lv 16 signal 1 } 
	{ P_arr_z_address0 sc_out sc_lv 7 signal 2 } 
	{ P_arr_z_ce0 sc_out sc_logic 1 signal 2 } 
	{ P_arr_z_q0 sc_in sc_lv 16 signal 2 } 
	{ K_arr_address0 sc_out sc_lv 7 signal 3 } 
	{ K_arr_ce0 sc_out sc_logic 1 signal 3 } 
	{ K_arr_q0 sc_in sc_lv 16 signal 3 } 
	{ B_i_address0 sc_out sc_lv 5 signal 4 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_i_we0 sc_out sc_logic 1 signal 4 } 
	{ B_i_d0 sc_out sc_lv 32 signal 4 } 
	{ B_i_address1 sc_out sc_lv 5 signal 4 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_i_we1 sc_out sc_logic 1 signal 4 } 
	{ B_i_d1 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P_arr_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_x", "role": "address0" }} , 
 	{ "name": "P_arr_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_x", "role": "ce0" }} , 
 	{ "name": "P_arr_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_x", "role": "q0" }} , 
 	{ "name": "P_arr_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_y", "role": "address0" }} , 
 	{ "name": "P_arr_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_y", "role": "ce0" }} , 
 	{ "name": "P_arr_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_y", "role": "q0" }} , 
 	{ "name": "P_arr_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_z", "role": "address0" }} , 
 	{ "name": "P_arr_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_z", "role": "ce0" }} , 
 	{ "name": "P_arr_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_z", "role": "q0" }} , 
 	{ "name": "K_arr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "K_arr", "role": "address0" }} , 
 	{ "name": "K_arr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_arr", "role": "ce0" }} , 
 	{ "name": "K_arr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K_arr", "role": "q0" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "47"],
		"CDFG" : "msm_arr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P_arr_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_arr_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_arr_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K_arr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bucket_unit_csim_sr_fu_430", "Port" : "B_i"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GBUFF_P_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GBUFF_K_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430", "Parent" : "0", "Child" : ["5", "17", "43", "44", "45", "46"],
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
			{"ID" : "5", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"},
			{"ID" : "17", "Name" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0"}],
		"Port" : [
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "BFIFO_1176"}]},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "B_i"}]},
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "count_B"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "17", "DependentChan" : "43", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "44", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.padd_count_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.bcount_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.fill_count_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_0_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_2_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_3_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_4_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_5_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_6_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_7_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0", "Parent" : "4", "Child" : ["18"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "44", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "43", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110", "Parent" : "17", "Child" : ["19", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "18", "Child" : ["20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "19"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "19"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "19"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "19"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "19"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "19"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "18"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "18"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "18"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "18"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "18"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "18"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "18"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "18"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "18"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "18"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "18"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "18"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "18"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "18"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "18"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "18"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.BFIFO_2_U", "Parent" : "4"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.CFIFO_U", "Parent" : "4"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.num_padd_ops_c_U", "Parent" : "4"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U", "Parent" : "4"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BFIFO_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	msm_arr {
		P_arr_x {Type I LastRead 8 FirstWrite -1}
		P_arr_y {Type I LastRead 8 FirstWrite -1}
		P_arr_z {Type I LastRead 8 FirstWrite -1}
		K_arr {Type I LastRead 8 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	P_arr_x { ap_memory {  { P_arr_x_address0 mem_address 1 7 }  { P_arr_x_ce0 mem_ce 1 1 }  { P_arr_x_q0 mem_dout 0 16 } } }
	P_arr_y { ap_memory {  { P_arr_y_address0 mem_address 1 7 }  { P_arr_y_ce0 mem_ce 1 1 }  { P_arr_y_q0 mem_dout 0 16 } } }
	P_arr_z { ap_memory {  { P_arr_z_address0 mem_address 1 7 }  { P_arr_z_ce0 mem_ce 1 1 }  { P_arr_z_q0 mem_dout 0 16 } } }
	K_arr { ap_memory {  { K_arr_address0 mem_address 1 7 }  { K_arr_ce0 mem_ce 1 1 }  { K_arr_q0 mem_dout 0 16 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_we0 mem_we 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_we1 MemPortWE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName msm_arr
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {msm_arr}
set C_modelType { void 0 }
set C_modelArgList {
	{ P_arr_x int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ P_arr_y int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ P_arr_z int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ K_arr int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P_arr_x", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_x","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P_arr_y", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_y","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P_arr_z", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P_arr_z","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "K_arr", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "K_arr","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B_i","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P_arr_x_address0 sc_out sc_lv 7 signal 0 } 
	{ P_arr_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ P_arr_x_q0 sc_in sc_lv 16 signal 0 } 
	{ P_arr_y_address0 sc_out sc_lv 7 signal 1 } 
	{ P_arr_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ P_arr_y_q0 sc_in sc_lv 16 signal 1 } 
	{ P_arr_z_address0 sc_out sc_lv 7 signal 2 } 
	{ P_arr_z_ce0 sc_out sc_logic 1 signal 2 } 
	{ P_arr_z_q0 sc_in sc_lv 16 signal 2 } 
	{ K_arr_address0 sc_out sc_lv 7 signal 3 } 
	{ K_arr_ce0 sc_out sc_logic 1 signal 3 } 
	{ K_arr_q0 sc_in sc_lv 16 signal 3 } 
	{ B_i_address0 sc_out sc_lv 5 signal 4 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_i_we0 sc_out sc_logic 1 signal 4 } 
	{ B_i_d0 sc_out sc_lv 32 signal 4 } 
	{ B_i_address1 sc_out sc_lv 5 signal 4 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_i_we1 sc_out sc_logic 1 signal 4 } 
	{ B_i_d1 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P_arr_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_x", "role": "address0" }} , 
 	{ "name": "P_arr_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_x", "role": "ce0" }} , 
 	{ "name": "P_arr_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_x", "role": "q0" }} , 
 	{ "name": "P_arr_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_y", "role": "address0" }} , 
 	{ "name": "P_arr_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_y", "role": "ce0" }} , 
 	{ "name": "P_arr_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_y", "role": "q0" }} , 
 	{ "name": "P_arr_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_arr_z", "role": "address0" }} , 
 	{ "name": "P_arr_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_arr_z", "role": "ce0" }} , 
 	{ "name": "P_arr_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_arr_z", "role": "q0" }} , 
 	{ "name": "K_arr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "K_arr", "role": "address0" }} , 
 	{ "name": "K_arr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_arr", "role": "ce0" }} , 
 	{ "name": "K_arr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K_arr", "role": "q0" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "47"],
		"CDFG" : "msm_arr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P_arr_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_arr_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_arr_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K_arr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bucket_unit_csim_sr_fu_430", "Port" : "B_i"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GBUFF_P_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GBUFF_K_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430", "Parent" : "0", "Child" : ["5", "17", "43", "44", "45", "46"],
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
			{"ID" : "5", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "bucket_unit_csim_sr_Block_split30_proc9_U0"},
			{"ID" : "17", "Name" : "bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0"}],
		"Port" : [
			{"Name" : "BFIFO_1176", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "BFIFO_1176"}]},
			{"Name" : "B_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "B_i"}]},
			{"Name" : "num_padd_ops", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "bucket_unit_csim_sr_Block_split30_proc9_U0", "Port" : "count_B"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "17", "DependentChan" : "43", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "44", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.padd_count_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.bcount_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.fill_count_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_0_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_2_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_3_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_4_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_5_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_6_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Block_split30_proc9_U0.B_V_7_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0", "Parent" : "4", "Child" : ["18"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U",
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "44", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "43", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110", "Parent" : "17", "Child" : ["19", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "18", "Child" : ["20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "19"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "19"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "19"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "19"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "19"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "19"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "18"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "18"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "18"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "18"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "18"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "18"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "18"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "18"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "18"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "18"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "18"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "18"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "18"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "18"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "18"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "18"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.BFIFO_2_U", "Parent" : "4"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.CFIFO_U", "Parent" : "4"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.num_padd_ops_c_U", "Parent" : "4"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bucket_unit_csim_sr_fu_430.start_for_bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10_U0_U", "Parent" : "4"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BFIFO_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	msm_arr {
		P_arr_x {Type I LastRead 8 FirstWrite -1}
		P_arr_y {Type I LastRead 8 FirstWrite -1}
		P_arr_z {Type I LastRead 8 FirstWrite -1}
		K_arr {Type I LastRead 8 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	P_arr_x { ap_memory {  { P_arr_x_address0 mem_address 1 7 }  { P_arr_x_ce0 mem_ce 1 1 }  { P_arr_x_q0 mem_dout 0 16 } } }
	P_arr_y { ap_memory {  { P_arr_y_address0 mem_address 1 7 }  { P_arr_y_ce0 mem_ce 1 1 }  { P_arr_y_q0 mem_dout 0 16 } } }
	P_arr_z { ap_memory {  { P_arr_z_address0 mem_address 1 7 }  { P_arr_z_ce0 mem_ce 1 1 }  { P_arr_z_q0 mem_dout 0 16 } } }
	K_arr { ap_memory {  { K_arr_address0 mem_address 1 7 }  { K_arr_ce0 mem_ce 1 1 }  { K_arr_q0 mem_dout 0 16 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_we0 mem_we 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_we1 MemPortWE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

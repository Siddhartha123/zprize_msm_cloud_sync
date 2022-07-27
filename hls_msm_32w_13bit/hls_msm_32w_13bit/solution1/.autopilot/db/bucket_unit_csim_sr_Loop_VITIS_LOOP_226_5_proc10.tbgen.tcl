set moduleName bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_padd_ops int 13 regular {fifo 0}  }
	{ CFIFO int 82 regular {fifo 0 volatile }  }
	{ BFIFO_2 int 43 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_padd_ops", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "CFIFO", "interface" : "fifo", "bitwidth" : 82, "direction" : "READONLY"} , 
 	{ "Name" : "BFIFO_2", "interface" : "fifo", "bitwidth" : 43, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_padd_ops_dout sc_in sc_lv 13 signal 0 } 
	{ num_padd_ops_empty_n sc_in sc_logic 1 signal 0 } 
	{ num_padd_ops_read sc_out sc_logic 1 signal 0 } 
	{ CFIFO_dout sc_in sc_lv 82 signal 1 } 
	{ CFIFO_empty_n sc_in sc_logic 1 signal 1 } 
	{ CFIFO_read sc_out sc_logic 1 signal 1 } 
	{ BFIFO_2_din sc_out sc_lv 43 signal 2 } 
	{ BFIFO_2_full_n sc_in sc_logic 1 signal 2 } 
	{ BFIFO_2_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_padd_ops_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "dout" }} , 
 	{ "name": "num_padd_ops_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "empty_n" }} , 
 	{ "name": "num_padd_ops_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "read" }} , 
 	{ "name": "CFIFO_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":82, "type": "signal", "bundle":{"name": "CFIFO", "role": "dout" }} , 
 	{ "name": "CFIFO_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "empty_n" }} , 
 	{ "name": "CFIFO_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "read" }} , 
 	{ "name": "BFIFO_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "din" }} , 
 	{ "name": "BFIFO_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "full_n" }} , 
 	{ "name": "BFIFO_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110", "Parent" : "0", "Child" : ["2", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "8226"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "8226"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_padd_ops { ap_fifo {  { num_padd_ops_dout fifo_data 0 13 }  { num_padd_ops_empty_n fifo_status 0 1 }  { num_padd_ops_read fifo_update 1 1 } } }
	CFIFO { ap_fifo {  { CFIFO_dout fifo_data 0 82 }  { CFIFO_empty_n fifo_status 0 1 }  { CFIFO_read fifo_update 1 1 } } }
	BFIFO_2 { ap_fifo {  { BFIFO_2_din fifo_data 1 43 }  { BFIFO_2_full_n fifo_status 0 1 }  { BFIFO_2_write fifo_update 1 1 } } }
}
set moduleName bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bucket_unit_csim_sr_Loop_VITIS_LOOP_226_5_proc10}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_padd_ops int 13 regular {fifo 0}  }
	{ CFIFO int 82 regular {fifo 0 volatile }  }
	{ BFIFO_2 int 43 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_padd_ops", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "CFIFO", "interface" : "fifo", "bitwidth" : 82, "direction" : "READONLY"} , 
 	{ "Name" : "BFIFO_2", "interface" : "fifo", "bitwidth" : 43, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_padd_ops_dout sc_in sc_lv 13 signal 0 } 
	{ num_padd_ops_empty_n sc_in sc_logic 1 signal 0 } 
	{ num_padd_ops_read sc_out sc_logic 1 signal 0 } 
	{ CFIFO_dout sc_in sc_lv 82 signal 1 } 
	{ CFIFO_empty_n sc_in sc_logic 1 signal 1 } 
	{ CFIFO_read sc_out sc_logic 1 signal 1 } 
	{ BFIFO_2_din sc_out sc_lv 43 signal 2 } 
	{ BFIFO_2_full_n sc_in sc_logic 1 signal 2 } 
	{ BFIFO_2_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_padd_ops_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "dout" }} , 
 	{ "name": "num_padd_ops_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "empty_n" }} , 
 	{ "name": "num_padd_ops_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "read" }} , 
 	{ "name": "CFIFO_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":82, "type": "signal", "bundle":{"name": "CFIFO", "role": "dout" }} , 
 	{ "name": "CFIFO_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "empty_n" }} , 
 	{ "name": "CFIFO_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "read" }} , 
 	{ "name": "BFIFO_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "din" }} , 
 	{ "name": "BFIFO_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "full_n" }} , 
 	{ "name": "BFIFO_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "num_padd_ops", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110", "Parent" : "0", "Child" : ["2", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U13", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U14", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U15", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U16", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U17", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U18", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.grp_pdouble_fu_102.mul_mul_13ns_13ns_26_4_1_U19", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U24", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U25", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U26", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U27", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U28", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U29", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U30", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U31", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U32", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U33", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U34", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U35", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U36", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U37", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U38", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_padd_fu_110.mul_mul_13ns_13ns_26_4_1_U39", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "8226"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "8226"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_padd_ops { ap_fifo {  { num_padd_ops_dout fifo_data 0 13 }  { num_padd_ops_empty_n fifo_status 0 1 }  { num_padd_ops_read fifo_update 1 1 } } }
	CFIFO { ap_fifo {  { CFIFO_dout fifo_data 0 82 }  { CFIFO_empty_n fifo_status 0 1 }  { CFIFO_read fifo_update 1 1 } } }
	BFIFO_2 { ap_fifo {  { BFIFO_2_din fifo_data 1 43 }  { BFIFO_2_full_n fifo_status 0 1 }  { BFIFO_2_write fifo_update 1 1 } } }
}

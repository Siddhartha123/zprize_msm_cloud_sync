set moduleName bucket_unit_csim_sr_Block_split30_proc9
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
set C_modelName {bucket_unit_csim_sr_Block_.split30_proc9}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_padd_ops int 13 regular  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
	{ BFIFO_1176 int 43 regular {fifo 0 volatile }  }
	{ count_B int 13 regular {array 16 { 1 3 } 1 1 }  }
	{ BFIFO_2 int 43 regular {fifo 2 volatile }  }
	{ CFIFO int 82 regular {fifo 1 volatile }  }
	{ num_padd_ops_out int 13 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_padd_ops", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "BFIFO_1176", "interface" : "fifo", "bitwidth" : 43, "direction" : "READONLY"} , 
 	{ "Name" : "count_B", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "BFIFO_2", "interface" : "fifo", "bitwidth" : 43, "direction" : "READWRITE"} , 
 	{ "Name" : "CFIFO", "interface" : "fifo", "bitwidth" : 82, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_padd_ops_out", "interface" : "fifo", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ num_padd_ops sc_in sc_lv 13 signal 0 } 
	{ B_i_address0 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_i_we0 sc_out sc_logic 1 signal 1 } 
	{ B_i_d0 sc_out sc_lv 32 signal 1 } 
	{ B_i_address1 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_i_we1 sc_out sc_logic 1 signal 1 } 
	{ B_i_d1 sc_out sc_lv 32 signal 1 } 
	{ BFIFO_1176_dout sc_in sc_lv 43 signal 2 } 
	{ BFIFO_1176_empty_n sc_in sc_logic 1 signal 2 } 
	{ BFIFO_1176_read sc_out sc_logic 1 signal 2 } 
	{ count_B_address0 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ count_B_q0 sc_in sc_lv 13 signal 3 } 
	{ BFIFO_2_dout sc_in sc_lv 43 signal 4 } 
	{ BFIFO_2_empty_n sc_in sc_logic 1 signal 4 } 
	{ BFIFO_2_read sc_out sc_logic 1 signal 4 } 
	{ BFIFO_2_din sc_out sc_lv 43 signal 4 } 
	{ BFIFO_2_full_n sc_in sc_logic 1 signal 4 } 
	{ BFIFO_2_write sc_out sc_logic 1 signal 4 } 
	{ CFIFO_din sc_out sc_lv 82 signal 5 } 
	{ CFIFO_full_n sc_in sc_logic 1 signal 5 } 
	{ CFIFO_write sc_out sc_logic 1 signal 5 } 
	{ num_padd_ops_out_din sc_out sc_lv 13 signal 6 } 
	{ num_padd_ops_out_full_n sc_in sc_logic 1 signal 6 } 
	{ num_padd_ops_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "num_padd_ops", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "default" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }} , 
 	{ "name": "BFIFO_1176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "dout" }} , 
 	{ "name": "BFIFO_1176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "empty_n" }} , 
 	{ "name": "BFIFO_1176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "read" }} , 
 	{ "name": "count_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address0" }} , 
 	{ "name": "count_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce0" }} , 
 	{ "name": "count_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q0" }} , 
 	{ "name": "BFIFO_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "dout" }} , 
 	{ "name": "BFIFO_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "empty_n" }} , 
 	{ "name": "BFIFO_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "read" }} , 
 	{ "name": "BFIFO_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "din" }} , 
 	{ "name": "BFIFO_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "full_n" }} , 
 	{ "name": "BFIFO_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "write" }} , 
 	{ "name": "CFIFO_din", "direction": "out", "datatype": "sc_lv", "bitwidth":82, "type": "signal", "bundle":{"name": "CFIFO", "role": "din" }} , 
 	{ "name": "CFIFO_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "full_n" }} , 
 	{ "name": "CFIFO_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "write" }} , 
 	{ "name": "num_padd_ops_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "din" }} , 
 	{ "name": "num_padd_ops_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "full_n" }} , 
 	{ "name": "num_padd_ops_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padd_count_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bcount_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fill_count_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_6_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bucket_unit_csim_sr_Block_split30_proc9 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}
		BFIFO_2 {Type IO LastRead 13 FirstWrite -1}
		CFIFO {Type O LastRead -1 FirstWrite 33}
		num_padd_ops_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	num_padd_ops { ap_none {  { num_padd_ops in_data 0 13 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_we0 mem_we 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_we1 MemPortWE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 } } }
	BFIFO_1176 { ap_fifo {  { BFIFO_1176_dout fifo_data 0 43 }  { BFIFO_1176_empty_n fifo_status 0 1 }  { BFIFO_1176_read fifo_update 1 1 } } }
	count_B { ap_memory {  { count_B_address0 mem_address 1 4 }  { count_B_ce0 mem_ce 1 1 }  { count_B_q0 mem_dout 0 13 } } }
	BFIFO_2 { ap_fifo {  { BFIFO_2_dout fifo_data 0 43 }  { BFIFO_2_empty_n fifo_status 0 1 }  { BFIFO_2_read fifo_update 1 1 }  { BFIFO_2_din fifo_data 1 43 }  { BFIFO_2_full_n fifo_status 0 1 }  { BFIFO_2_write fifo_update 1 1 } } }
	CFIFO { ap_fifo {  { CFIFO_din fifo_data 1 82 }  { CFIFO_full_n fifo_status 0 1 }  { CFIFO_write fifo_update 1 1 } } }
	num_padd_ops_out { ap_fifo {  { num_padd_ops_out_din fifo_data 1 13 }  { num_padd_ops_out_full_n fifo_status 0 1 }  { num_padd_ops_out_write fifo_update 1 1 } } }
}
set moduleName bucket_unit_csim_sr_Block_split30_proc9
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
set C_modelName {bucket_unit_csim_sr_Block_.split30_proc9}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_padd_ops int 13 regular  }
	{ B_i int 32 regular {array 30 { 0 0 } 0 1 }  }
	{ BFIFO_1176 int 43 regular {fifo 0 volatile }  }
	{ count_B int 13 regular {array 16 { 1 3 } 1 1 }  }
	{ BFIFO_2 int 43 regular {fifo 2 volatile }  }
	{ CFIFO int 82 regular {fifo 1 volatile }  }
	{ num_padd_ops_out int 13 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_padd_ops", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "B_i", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "BFIFO_1176", "interface" : "fifo", "bitwidth" : 43, "direction" : "READONLY"} , 
 	{ "Name" : "count_B", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "BFIFO_2", "interface" : "fifo", "bitwidth" : 43, "direction" : "READWRITE"} , 
 	{ "Name" : "CFIFO", "interface" : "fifo", "bitwidth" : 82, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_padd_ops_out", "interface" : "fifo", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ num_padd_ops sc_in sc_lv 13 signal 0 } 
	{ B_i_address0 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_i_we0 sc_out sc_logic 1 signal 1 } 
	{ B_i_d0 sc_out sc_lv 32 signal 1 } 
	{ B_i_address1 sc_out sc_lv 5 signal 1 } 
	{ B_i_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_i_we1 sc_out sc_logic 1 signal 1 } 
	{ B_i_d1 sc_out sc_lv 32 signal 1 } 
	{ BFIFO_1176_dout sc_in sc_lv 43 signal 2 } 
	{ BFIFO_1176_empty_n sc_in sc_logic 1 signal 2 } 
	{ BFIFO_1176_read sc_out sc_logic 1 signal 2 } 
	{ count_B_address0 sc_out sc_lv 4 signal 3 } 
	{ count_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ count_B_q0 sc_in sc_lv 13 signal 3 } 
	{ BFIFO_2_dout sc_in sc_lv 43 signal 4 } 
	{ BFIFO_2_empty_n sc_in sc_logic 1 signal 4 } 
	{ BFIFO_2_read sc_out sc_logic 1 signal 4 } 
	{ BFIFO_2_din sc_out sc_lv 43 signal 4 } 
	{ BFIFO_2_full_n sc_in sc_logic 1 signal 4 } 
	{ BFIFO_2_write sc_out sc_logic 1 signal 4 } 
	{ CFIFO_din sc_out sc_lv 82 signal 5 } 
	{ CFIFO_full_n sc_in sc_logic 1 signal 5 } 
	{ CFIFO_write sc_out sc_logic 1 signal 5 } 
	{ num_padd_ops_out_din sc_out sc_lv 13 signal 6 } 
	{ num_padd_ops_out_full_n sc_in sc_logic 1 signal 6 } 
	{ num_padd_ops_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "num_padd_ops", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops", "role": "default" }} , 
 	{ "name": "B_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address0" }} , 
 	{ "name": "B_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce0" }} , 
 	{ "name": "B_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we0" }} , 
 	{ "name": "B_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d0" }} , 
 	{ "name": "B_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_i", "role": "address1" }} , 
 	{ "name": "B_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "ce1" }} , 
 	{ "name": "B_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_i", "role": "we1" }} , 
 	{ "name": "B_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_i", "role": "d1" }} , 
 	{ "name": "BFIFO_1176_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "dout" }} , 
 	{ "name": "BFIFO_1176_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "empty_n" }} , 
 	{ "name": "BFIFO_1176_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_1176", "role": "read" }} , 
 	{ "name": "count_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "count_B", "role": "address0" }} , 
 	{ "name": "count_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_B", "role": "ce0" }} , 
 	{ "name": "count_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "count_B", "role": "q0" }} , 
 	{ "name": "BFIFO_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "dout" }} , 
 	{ "name": "BFIFO_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "empty_n" }} , 
 	{ "name": "BFIFO_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "read" }} , 
 	{ "name": "BFIFO_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "din" }} , 
 	{ "name": "BFIFO_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "full_n" }} , 
 	{ "name": "BFIFO_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BFIFO_2", "role": "write" }} , 
 	{ "name": "CFIFO_din", "direction": "out", "datatype": "sc_lv", "bitwidth":82, "type": "signal", "bundle":{"name": "CFIFO", "role": "din" }} , 
 	{ "name": "CFIFO_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "full_n" }} , 
 	{ "name": "CFIFO_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CFIFO", "role": "write" }} , 
 	{ "name": "num_padd_ops_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "din" }} , 
 	{ "name": "num_padd_ops_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "full_n" }} , 
 	{ "name": "num_padd_ops_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_padd_ops_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
			{"Name" : "BFIFO_2", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "BFIFO_2_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CFIFO", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "CFIFO_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_padd_ops_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "num_padd_ops_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padd_count_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bcount_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fill_count_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_6_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bucket_unit_csim_sr_Block_split30_proc9 {
		num_padd_ops {Type I LastRead 0 FirstWrite -1}
		B_i {Type O LastRead -1 FirstWrite 14}
		BFIFO_1176 {Type I LastRead 13 FirstWrite -1}
		count_B {Type I LastRead 14 FirstWrite -1}
		BFIFO_2 {Type IO LastRead 13 FirstWrite -1}
		CFIFO {Type O LastRead -1 FirstWrite 33}
		num_padd_ops_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	num_padd_ops { ap_none {  { num_padd_ops in_data 0 13 } } }
	B_i { ap_memory {  { B_i_address0 mem_address 1 5 }  { B_i_ce0 mem_ce 1 1 }  { B_i_we0 mem_we 1 1 }  { B_i_d0 mem_din 1 32 }  { B_i_address1 MemPortADDR2 1 5 }  { B_i_ce1 MemPortCE2 1 1 }  { B_i_we1 MemPortWE2 1 1 }  { B_i_d1 MemPortDIN2 1 32 } } }
	BFIFO_1176 { ap_fifo {  { BFIFO_1176_dout fifo_data 0 43 }  { BFIFO_1176_empty_n fifo_status 0 1 }  { BFIFO_1176_read fifo_update 1 1 } } }
	count_B { ap_memory {  { count_B_address0 mem_address 1 4 }  { count_B_ce0 mem_ce 1 1 }  { count_B_q0 mem_dout 0 13 } } }
	BFIFO_2 { ap_fifo {  { BFIFO_2_dout fifo_data 0 43 }  { BFIFO_2_empty_n fifo_status 0 1 }  { BFIFO_2_read fifo_update 1 1 }  { BFIFO_2_din fifo_data 1 43 }  { BFIFO_2_full_n fifo_status 0 1 }  { BFIFO_2_write fifo_update 1 1 } } }
	CFIFO { ap_fifo {  { CFIFO_din fifo_data 1 82 }  { CFIFO_full_n fifo_status 0 1 }  { CFIFO_write fifo_update 1 1 } } }
	num_padd_ops_out { ap_fifo {  { num_padd_ops_out_din fifo_data 1 13 }  { num_padd_ops_out_full_n fifo_status 0 1 }  { num_padd_ops_out_write fifo_update 1 1 } } }
}

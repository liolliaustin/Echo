set C_TypeInfoList {{ 
"Echo" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"change": [[], {"reference": "0"}] }, {"value_in": [[], {"reference": "1"}] }, {"value_out": [[], {"reference": "1"}] }, {"delay": [[], {"scalar": "int"}] }, {"scale": [[], {"scalar": "int"}] }],[],""], 
"0": [ "stream<int>", {"hls_type": {"stream": [[[[], {"scalar": "int"}]],"2"]}}], 
"1": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"2"]}}],
"2": ["hls", ""]
}}
set moduleName Echo
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Echo}
set C_modelType { void 0 }
set C_modelArgList {
	{ change_V int 32 regular {axi_s 0 volatile  { change_V Data } }  }
	{ value_in_V float 32 regular {axi_s 0 volatile  { value_in_V Data } }  }
	{ value_out_V float 32 regular {axi_s 1 volatile  { value_out_V Data } }  }
	{ delay int 32 regular {axi_slave 0}  }
	{ scale int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "change_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "change.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "value_in_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value_in.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "value_out_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value_out.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "delay", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "delay","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "scale", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scale","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ change_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ change_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ change_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ value_in_V_TDATA sc_in sc_lv 32 signal 1 } 
	{ value_in_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ value_in_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ value_out_V_TDATA sc_out sc_lv 32 signal 2 } 
	{ value_out_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ value_out_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ scale sc_in sc_lv 32 signal 4 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"delay","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "change_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "change_V", "role": "TDATA" }} , 
 	{ "name": "change_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "change_V", "role": "TVALID" }} , 
 	{ "name": "change_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "change_V", "role": "TREADY" }} , 
 	{ "name": "value_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_in_V", "role": "TDATA" }} , 
 	{ "name": "value_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "value_in_V", "role": "TVALID" }} , 
 	{ "name": "value_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "value_in_V", "role": "TREADY" }} , 
 	{ "name": "value_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_out_V", "role": "TDATA" }} , 
 	{ "name": "value_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "value_out_V", "role": "TVALID" }} , 
 	{ "name": "value_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "value_out_V", "role": "TREADY" }} , 
 	{ "name": "scale", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "Echo",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "change_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "change_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "value_in_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "value_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "value_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "value_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "delay", "Type" : "None", "Direction" : "I"},
			{"Name" : "scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "delayCount", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "readBuffer1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "readBuffer2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "readBuffer3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "readBuffer4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "writeBuffer", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_r_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_fadd_32ns_32bkb_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_fptrunc_64nscud_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_fpext_32ns_6dEe_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_fpext_32ns_6dEe_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_dadd_64ns_64eOg_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_dmul_64ns_64fYi_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_dmul_64ns_64fYi_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Echo_sitodp_32ns_g8j_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Echo {
		change_V {Type I LastRead 0 FirstWrite -1}
		value_in_V {Type I LastRead 2 FirstWrite -1}
		value_out_V {Type O LastRead -1 FirstWrite 53}
		delay {Type I LastRead 0 FirstWrite -1}
		scale {Type I LastRead 0 FirstWrite -1}
		delayCount {Type IO LastRead -1 FirstWrite -1}
		readBuffer1 {Type IO LastRead -1 FirstWrite -1}
		readBuffer2 {Type IO LastRead -1 FirstWrite -1}
		readBuffer3 {Type IO LastRead -1 FirstWrite -1}
		readBuffer4 {Type IO LastRead -1 FirstWrite -1}
		writeBuffer {Type IO LastRead -1 FirstWrite -1}
		buffer_r {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "54", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	change_V { axis {  { change_V_TDATA in_data 0 32 }  { change_V_TVALID in_vld 0 1 }  { change_V_TREADY in_acc 1 1 } } }
	value_in_V { axis {  { value_in_V_TDATA in_data 0 32 }  { value_in_V_TVALID in_vld 0 1 }  { value_in_V_TREADY in_acc 1 1 } } }
	value_out_V { axis {  { value_out_V_TDATA out_data 1 32 }  { value_out_V_TVALID out_vld 1 1 }  { value_out_V_TREADY out_acc 0 1 } } }
	scale { ap_none {  { scale in_data 0 32 } } }
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

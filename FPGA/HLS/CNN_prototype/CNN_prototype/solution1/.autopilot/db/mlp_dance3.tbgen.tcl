set moduleName mlp_dance3
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mlp_dance3}
set C_modelType { void 0 }
set C_modelArgList {
	{ S_AXIS_V_data float 32 regular {axi_s 0 volatile  { S_AXIS Data } }  }
	{ S_AXIS_V_last int 1 regular {axi_s 0 volatile  { S_AXIS Last } }  }
	{ M_AXIS_V_data float 32 regular {axi_s 1 volatile  { M_AXIS Data } }  }
	{ M_AXIS_V_last int 1 regular {axi_s 1 volatile  { M_AXIS Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "S_AXIS_V_data", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S_AXIS.V.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_AXIS_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "S_AXIS.V.last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "M_AXIS_V_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M_AXIS.V.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "M_AXIS_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "M_AXIS.V.last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ S_AXIS_TDATA sc_in sc_lv 32 signal 0 } 
	{ S_AXIS_TVALID sc_in sc_logic 1 invld 1 } 
	{ S_AXIS_TREADY sc_out sc_logic 1 inacc 1 } 
	{ S_AXIS_TLAST sc_in sc_logic 1 signal 1 } 
	{ M_AXIS_TDATA sc_out sc_lv 32 signal 2 } 
	{ M_AXIS_TVALID sc_out sc_logic 1 outvld 3 } 
	{ M_AXIS_TREADY sc_in sc_logic 1 outacc 3 } 
	{ M_AXIS_TLAST sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "S_AXIS_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_AXIS_V_data", "role": "default" }} , 
 	{ "name": "S_AXIS_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "S_AXIS_V_last", "role": "default" }} , 
 	{ "name": "S_AXIS_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "S_AXIS_V_last", "role": "default" }} , 
 	{ "name": "S_AXIS_TLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_AXIS_V_last", "role": "default" }} , 
 	{ "name": "M_AXIS_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_AXIS_V_data", "role": "default" }} , 
 	{ "name": "M_AXIS_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M_AXIS_V_last", "role": "default" }} , 
 	{ "name": "M_AXIS_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "M_AXIS_V_last", "role": "default" }} , 
 	{ "name": "M_AXIS_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_AXIS_V_last", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "29", "34", "39", "44", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "mlp_dance3",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "S_AXIS_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "S_AXIS_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "S_AXIS_V_last", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "M_AXIS_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "M_AXIS_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "M_AXIS_V_last", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_4_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_0_pos_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_pos_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_pos_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_3_pos_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_0_pos_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_1_pos_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_2_pos_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_3_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_4_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_1_fu_1186", "Parent" : "0", "Child" : ["25", "26", "27", "28"],
		"CDFG" : "calculate_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "519", "EstimateLatencyMin" : "519", "EstimateLatencyMax" : "519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_1_fu_1186.mlp_dance3_fadd_3bkb_U24", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_1_fu_1186.mlp_dance3_fadd_3bkb_U25", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_1_fu_1186.mlp_dance3_fmul_3cud_U26", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_1_fu_1186.mlp_dance3_fmul_3cud_U27", "Parent" : "24"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_2_fu_1197", "Parent" : "0", "Child" : ["30", "31", "32", "33"],
		"CDFG" : "calculate_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "519", "EstimateLatencyMin" : "519", "EstimateLatencyMax" : "519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_2_fu_1197.mlp_dance3_fadd_3bkb_U1", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_2_fu_1197.mlp_dance3_fadd_3bkb_U2", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_2_fu_1197.mlp_dance3_fmul_3cud_U3", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_2_fu_1197.mlp_dance3_fmul_3cud_U4", "Parent" : "29"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_2_fu_1205", "Parent" : "0", "Child" : ["35", "36", "37", "38"],
		"CDFG" : "calculate_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "519", "EstimateLatencyMin" : "519", "EstimateLatencyMax" : "519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_2_fu_1205.mlp_dance3_fadd_3bkb_U31", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_2_fu_1205.mlp_dance3_fadd_3bkb_U32", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_2_fu_1205.mlp_dance3_fmul_3cud_U33", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_2_fu_1205.mlp_dance3_fmul_3cud_U34", "Parent" : "34"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_fu_1213", "Parent" : "0", "Child" : ["40", "41", "42", "43"],
		"CDFG" : "calculate_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "135", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_fu_1213.mlp_dance3_fadd_3bkb_U10", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_fu_1213.mlp_dance3_fadd_3bkb_U11", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_fu_1213.mlp_dance3_fmul_3cud_U12", "Parent" : "39"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_1_fu_1213.mlp_dance3_fmul_3cud_U13", "Parent" : "39"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_fu_1222", "Parent" : "0", "Child" : ["45", "46", "47", "48"],
		"CDFG" : "calculate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "135", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_fu_1222.mlp_dance3_fadd_3bkb_U17", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_fu_1222.mlp_dance3_fadd_3bkb_U18", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_fu_1222.mlp_dance3_fmul_3cud_U19", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculate_fu_1222.mlp_dance3_fmul_3cud_U20", "Parent" : "44"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_dance3_fadd_3bkb_U38", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_dance3_fcmp_3pcA_U39", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_dance3_mux_32qcK_U40", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_S_AXIS_V_data_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_w1_S_AXIS_V_last_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_M_AXIS_V_data_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_w1_M_AXIS_V_last_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mlp_dance3 {
		S_AXIS_V_data {Type I LastRead 11 FirstWrite -1}
		S_AXIS_V_last {Type I LastRead 11 FirstWrite -1}
		M_AXIS_V_data {Type O LastRead -1 FirstWrite 11}
		M_AXIS_V_last {Type O LastRead -1 FirstWrite 11}}
	calculate_1_1 {
		a {Type I LastRead 64 FirstWrite -1}
		b {Type I LastRead 64 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	calculate_1_2 {
		a {Type I LastRead 64 FirstWrite -1}
		b {Type I LastRead 64 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	calculate_2 {
		a {Type I LastRead 64 FirstWrite -1}
		b {Type I LastRead 64 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	calculate_1 {
		a {Type I LastRead 16 FirstWrite -1}
		b {Type I LastRead 16 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	calculate {
		a {Type I LastRead 16 FirstWrite -1}
		b {Type I LastRead 16 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
]}

set Spec2ImplPortList { 
	S_AXIS_V_data { axis {  { S_AXIS_TDATA in_data 0 32 } } }
	S_AXIS_V_last { axis {  { S_AXIS_TVALID in_vld 0 1 }  { S_AXIS_TREADY in_acc 1 1 }  { S_AXIS_TLAST in_data 0 1 } } }
	M_AXIS_V_data { axis {  { M_AXIS_TDATA out_data 1 32 } } }
	M_AXIS_V_last { axis {  { M_AXIS_TVALID out_vld 1 1 }  { M_AXIS_TREADY out_acc 0 1 }  { M_AXIS_TLAST out_data 1 1 } } }
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

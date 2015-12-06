set moduleName runQueue
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName runQueue
set C_modelType { int 32 }
set C_modelArgList { 
	{ priorityOut_V int 4 regular {pointer 1 volatile }  }
	{ priorityIn_V int 4 regular {pointer 0 volatile }  }
	{ cmdOut_V int 2 regular {pointer 1 volatile }  }
	{ empty int 1 regular {pointer 0 volatile }  }
	{ full int 1 regular {pointer 0 volatile }  }
	{ fullOut int 1 regular {pointer 1 volatile }  }
	{ iterations int 32 regular  }
	{ finished int 1 regular {pointer 1}  }
	{ currentIteration int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "priorityOut_V", "interface" : "wire", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "priorityOut.V","cData": "uint4","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "priorityIn_V", "interface" : "wire", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "priorityIn.V","cData": "uint4","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cmdOut_V", "interface" : "wire", "bitwidth" : 2,"bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "cmdOut.V","cData": "uint2","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "empty","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "full", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "full","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fullOut", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fullOut","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "iterations", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "iterations","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "finished", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "finished","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "currentIteration", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "currentIteration","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ priorityOut_V sc_out sc_lv 4 signal 0 } 
	{ priorityIn_V sc_in sc_lv 4 signal 1 } 
	{ cmdOut_V sc_out sc_lv 2 signal 2 } 
	{ empty sc_in sc_logic 1 signal 3 } 
	{ full sc_in sc_logic 1 signal 4 } 
	{ fullOut sc_out sc_logic 1 signal 5 } 
	{ iterations sc_in sc_lv 32 signal 6 } 
	{ iterations_ap_vld sc_in sc_logic 1 invld 6 } 
	{ finished sc_out sc_logic 1 signal 7 } 
	{ finished_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ currentIteration sc_out sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "priorityOut_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "priorityOut_V", "role": "default" }} , 
 	{ "name": "priorityIn_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "priorityIn_V", "role": "default" }} , 
 	{ "name": "cmdOut_V", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cmdOut_V", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "full", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "full", "role": "default" }} , 
 	{ "name": "fullOut", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullOut", "role": "default" }} , 
 	{ "name": "iterations", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iterations", "role": "default" }} , 
 	{ "name": "iterations_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "iterations", "role": "ap_vld" }} , 
 	{ "name": "finished", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finished", "role": "default" }} , 
 	{ "name": "finished_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "finished", "role": "ap_vld" }} , 
 	{ "name": "currentIteration", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "currentIteration", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	priorityOut_V { ap_none {  { priorityOut_V out_data 1 4 } } }
	priorityIn_V { ap_none {  { priorityIn_V in_data 0 4 } } }
	cmdOut_V { ap_none {  { cmdOut_V out_data 1 2 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	full { ap_none {  { full in_data 0 1 } } }
	fullOut { ap_none {  { fullOut out_data 1 1 } } }
	iterations { ap_vld {  { iterations in_data 0 32 }  { iterations_ap_vld in_vld 0 1 } } }
	finished { ap_ovld {  { finished out_data 1 1 }  { finished_ap_vld out_vld 1 1 } } }
	currentIteration { ap_none {  { currentIteration out_data 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

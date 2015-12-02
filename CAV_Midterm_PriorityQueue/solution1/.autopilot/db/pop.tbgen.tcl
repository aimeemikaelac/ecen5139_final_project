set moduleName pop
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName pop
set C_modelType { int 96 }
set C_modelArgList { 
	{ size int 32 regular  }
	{ tempData_priority int 32 regular {array 400 { 2 2 } 1 1 } {global 2}  }
	{ tempData_data int 32 regular {array 400 { 2 2 } 1 1 } {global 2}  }
	{ queueData_priority int 32 regular {array 400 { 2 2 } 1 1 } {global 2}  }
	{ queueData_data int 32 regular {array 400 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "tempData_priority", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "tempData_data", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "queueData_priority", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "queueData_data", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ size sc_in sc_lv 32 signal 0 } 
	{ tempData_priority_address0 sc_out sc_lv 9 signal 1 } 
	{ tempData_priority_ce0 sc_out sc_logic 1 signal 1 } 
	{ tempData_priority_we0 sc_out sc_logic 1 signal 1 } 
	{ tempData_priority_d0 sc_out sc_lv 32 signal 1 } 
	{ tempData_priority_q0 sc_in sc_lv 32 signal 1 } 
	{ tempData_priority_address1 sc_out sc_lv 9 signal 1 } 
	{ tempData_priority_ce1 sc_out sc_logic 1 signal 1 } 
	{ tempData_priority_we1 sc_out sc_logic 1 signal 1 } 
	{ tempData_priority_d1 sc_out sc_lv 32 signal 1 } 
	{ tempData_priority_q1 sc_in sc_lv 32 signal 1 } 
	{ tempData_data_address0 sc_out sc_lv 9 signal 2 } 
	{ tempData_data_ce0 sc_out sc_logic 1 signal 2 } 
	{ tempData_data_we0 sc_out sc_logic 1 signal 2 } 
	{ tempData_data_d0 sc_out sc_lv 32 signal 2 } 
	{ tempData_data_q0 sc_in sc_lv 32 signal 2 } 
	{ tempData_data_address1 sc_out sc_lv 9 signal 2 } 
	{ tempData_data_ce1 sc_out sc_logic 1 signal 2 } 
	{ tempData_data_we1 sc_out sc_logic 1 signal 2 } 
	{ tempData_data_d1 sc_out sc_lv 32 signal 2 } 
	{ tempData_data_q1 sc_in sc_lv 32 signal 2 } 
	{ queueData_priority_address0 sc_out sc_lv 9 signal 3 } 
	{ queueData_priority_ce0 sc_out sc_logic 1 signal 3 } 
	{ queueData_priority_we0 sc_out sc_logic 1 signal 3 } 
	{ queueData_priority_d0 sc_out sc_lv 32 signal 3 } 
	{ queueData_priority_q0 sc_in sc_lv 32 signal 3 } 
	{ queueData_priority_address1 sc_out sc_lv 9 signal 3 } 
	{ queueData_priority_ce1 sc_out sc_logic 1 signal 3 } 
	{ queueData_priority_we1 sc_out sc_logic 1 signal 3 } 
	{ queueData_priority_d1 sc_out sc_lv 32 signal 3 } 
	{ queueData_priority_q1 sc_in sc_lv 32 signal 3 } 
	{ queueData_data_address0 sc_out sc_lv 9 signal 4 } 
	{ queueData_data_ce0 sc_out sc_logic 1 signal 4 } 
	{ queueData_data_we0 sc_out sc_logic 1 signal 4 } 
	{ queueData_data_d0 sc_out sc_lv 32 signal 4 } 
	{ queueData_data_q0 sc_in sc_lv 32 signal 4 } 
	{ queueData_data_address1 sc_out sc_lv 9 signal 4 } 
	{ queueData_data_ce1 sc_out sc_logic 1 signal 4 } 
	{ queueData_data_we1 sc_out sc_logic 1 signal 4 } 
	{ queueData_data_d1 sc_out sc_lv 32 signal 4 } 
	{ queueData_data_q1 sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }} , 
 	{ "name": "tempData_priority_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tempData_priority", "role": "address0" }} , 
 	{ "name": "tempData_priority_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_priority", "role": "ce0" }} , 
 	{ "name": "tempData_priority_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_priority", "role": "we0" }} , 
 	{ "name": "tempData_priority_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_priority", "role": "d0" }} , 
 	{ "name": "tempData_priority_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_priority", "role": "q0" }} , 
 	{ "name": "tempData_priority_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tempData_priority", "role": "address1" }} , 
 	{ "name": "tempData_priority_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_priority", "role": "ce1" }} , 
 	{ "name": "tempData_priority_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_priority", "role": "we1" }} , 
 	{ "name": "tempData_priority_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_priority", "role": "d1" }} , 
 	{ "name": "tempData_priority_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_priority", "role": "q1" }} , 
 	{ "name": "tempData_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tempData_data", "role": "address0" }} , 
 	{ "name": "tempData_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_data", "role": "ce0" }} , 
 	{ "name": "tempData_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_data", "role": "we0" }} , 
 	{ "name": "tempData_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_data", "role": "d0" }} , 
 	{ "name": "tempData_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_data", "role": "q0" }} , 
 	{ "name": "tempData_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tempData_data", "role": "address1" }} , 
 	{ "name": "tempData_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_data", "role": "ce1" }} , 
 	{ "name": "tempData_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tempData_data", "role": "we1" }} , 
 	{ "name": "tempData_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_data", "role": "d1" }} , 
 	{ "name": "tempData_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempData_data", "role": "q1" }} , 
 	{ "name": "queueData_priority_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "queueData_priority", "role": "address0" }} , 
 	{ "name": "queueData_priority_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_priority", "role": "ce0" }} , 
 	{ "name": "queueData_priority_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_priority", "role": "we0" }} , 
 	{ "name": "queueData_priority_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_priority", "role": "d0" }} , 
 	{ "name": "queueData_priority_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_priority", "role": "q0" }} , 
 	{ "name": "queueData_priority_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "queueData_priority", "role": "address1" }} , 
 	{ "name": "queueData_priority_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_priority", "role": "ce1" }} , 
 	{ "name": "queueData_priority_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_priority", "role": "we1" }} , 
 	{ "name": "queueData_priority_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_priority", "role": "d1" }} , 
 	{ "name": "queueData_priority_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_priority", "role": "q1" }} , 
 	{ "name": "queueData_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "queueData_data", "role": "address0" }} , 
 	{ "name": "queueData_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_data", "role": "ce0" }} , 
 	{ "name": "queueData_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_data", "role": "we0" }} , 
 	{ "name": "queueData_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_data", "role": "d0" }} , 
 	{ "name": "queueData_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_data", "role": "q0" }} , 
 	{ "name": "queueData_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "queueData_data", "role": "address1" }} , 
 	{ "name": "queueData_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_data", "role": "ce1" }} , 
 	{ "name": "queueData_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queueData_data", "role": "we1" }} , 
 	{ "name": "queueData_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_data", "role": "d1" }} , 
 	{ "name": "queueData_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "queueData_data", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}
set Spec2ImplPortList { 
	size { ap_none {  { size in_data 0 32 } } }
	tempData_priority { ap_memory {  { tempData_priority_address0 mem_address 1 9 }  { tempData_priority_ce0 mem_ce 1 1 }  { tempData_priority_we0 mem_we 1 1 }  { tempData_priority_d0 mem_din 1 32 }  { tempData_priority_q0 mem_dout 0 32 }  { tempData_priority_address1 mem_address 1 9 }  { tempData_priority_ce1 mem_ce 1 1 }  { tempData_priority_we1 mem_we 1 1 }  { tempData_priority_d1 mem_din 1 32 }  { tempData_priority_q1 mem_dout 0 32 } } }
	tempData_data { ap_memory {  { tempData_data_address0 mem_address 1 9 }  { tempData_data_ce0 mem_ce 1 1 }  { tempData_data_we0 mem_we 1 1 }  { tempData_data_d0 mem_din 1 32 }  { tempData_data_q0 mem_dout 0 32 }  { tempData_data_address1 mem_address 1 9 }  { tempData_data_ce1 mem_ce 1 1 }  { tempData_data_we1 mem_we 1 1 }  { tempData_data_d1 mem_din 1 32 }  { tempData_data_q1 mem_dout 0 32 } } }
	queueData_priority { ap_memory {  { queueData_priority_address0 mem_address 1 9 }  { queueData_priority_ce0 mem_ce 1 1 }  { queueData_priority_we0 mem_we 1 1 }  { queueData_priority_d0 mem_din 1 32 }  { queueData_priority_q0 mem_dout 0 32 }  { queueData_priority_address1 mem_address 1 9 }  { queueData_priority_ce1 mem_ce 1 1 }  { queueData_priority_we1 mem_we 1 1 }  { queueData_priority_d1 mem_din 1 32 }  { queueData_priority_q1 mem_dout 0 32 } } }
	queueData_data { ap_memory {  { queueData_data_address0 mem_address 1 9 }  { queueData_data_ce0 mem_ce 1 1 }  { queueData_data_we0 mem_we 1 1 }  { queueData_data_d0 mem_din 1 32 }  { queueData_data_q0 mem_dout 0 32 }  { queueData_data_address1 mem_address 1 9 }  { queueData_data_ce1 mem_ce 1 1 }  { queueData_data_we1 mem_we 1 1 }  { queueData_data_d1 mem_din 1 32 }  { queueData_data_q1 mem_dout 0 32 } } }
}

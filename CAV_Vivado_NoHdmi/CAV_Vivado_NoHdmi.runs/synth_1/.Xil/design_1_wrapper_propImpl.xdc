set_property SRC_FILE_INFO {cfile:/home/michael/ecen5139_final_project/CAV_Vivado_NoHdmi/CAV_Vivado_NoHdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc rfile:../../../CAV_Vivado_NoHdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/michael/ecen5139_final_project/CAV_Vivado_NoHdmi/CAV_Vivado_NoHdmi.srcs/sources_1/ipshared/ngn.cs.colorado.edu/pqueue_v1_0/1d519e33/constrs_1/imports/verilog/runQueue.xdc rfile:../../../CAV_Vivado_NoHdmi.srcs/sources_1/ipshared/ngn.cs.colorado.edu/pqueue_v1_0/1d519e33/constrs_1/imports/verilog/runQueue.xdc id:2 order:EARLY scoped_inst:design_1_i/pqueue_0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.3
set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name CLK -period 10.000000 -waveform "0.000000 5.0" ap_clk

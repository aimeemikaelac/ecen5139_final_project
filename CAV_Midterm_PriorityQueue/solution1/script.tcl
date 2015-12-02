############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project CAV_Midterm_PriorityQueue
set_top runQueue
add_files CAV_Midterm_PriorityQueue/source/priorityQueueMidterm.h
add_files CAV_Midterm_PriorityQueue/source/priorityQueueMidterm.cpp
add_files -tb CAV_Midterm_PriorityQueue/source/priorityQueueMidterm_testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./CAV_Midterm_PriorityQueue/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none -rtl verilog -tool xsim
export_design -format ip_catalog

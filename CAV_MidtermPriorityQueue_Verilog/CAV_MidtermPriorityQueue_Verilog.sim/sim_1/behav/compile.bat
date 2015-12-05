@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/Xilinx/SDK/2014.2/bin:/Xilinx/Vivado/2014.2/ids_lite/ISE/bin/lin64;/Xilinx/Vivado/2014.2/ids_lite/ISE/lib/lin64;/Xilinx/Vivado/2014.2/bin;%PATH%
set XILINX_PLANAHEAD=/Xilinx/Vivado/2014.2

xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav --prj /home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog/CAV_MidtermPriorityQueue_Verilog.sim/sim_1/behav/testbench.prj   xil_defaultlib.testbench   xil_defaultlib.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)

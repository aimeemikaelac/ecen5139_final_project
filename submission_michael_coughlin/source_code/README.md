# ECEN 5139 Final Project

Submitted by: Michael Coughlin
michael.coughlin@colorado.edu

The final submission for this project consists of three Vivado 2014.2 projects, one Vivado HLS 2014.1 project, and a software
intefacefor the HLS project, as well as the final paper and presentation for the project. The subfolders inside of the `vivado_projects`
folder, `minheap_verilog` and `midterm_queue_verilog` contain the Vivado projects neccessary to synthesis a the min-heap priority 
queue and Tagged Up/Down Sorter priority queues that are discussed in the paper. The subfolder `CAV_MidtermPriorityQueue_Verilog_Runner` 
is a Vivado High-level synthesis project that implements the in-FPGA testbench described in the paper. The subfolder `CAV_Vivado_NoHdmi`
implements a static design for the Zedboard that can implement either queue and can then be programmed to the FPGA, along with
a second-stage bootloader, that is compiled into a first-stage bootloader using the Xilinx SDK, to boot a Linux OS. The full
details of booting Linux on the Zedboard are very involved and too lengthy to describe here. Please contact me for the procedure
and/or compatible hardware. The second-stage bootloader is also included in the `u-boot.elf` file.

The subfolder `software_interface` is the code run in the Linux OS to control the in-FPGA testbench and requires a compatible
bitstream in the FPGA as well as a correctly configured kernel and devicetree. However, the code can be build using the included
Makefile, but not executed, as it requires both root and access to specific memory-mapped peripherals that only exist with the
proper configuration on the Zedboard and the correct bitstreams.

The files devicetree.dtb, uImage and the various bitstreams in the `bitstreams` folder can be used to boot the Zedboards from
a properly configured SD card with a Linux file system. Please contact me for details. These folders are inside of the `boot_files`
subfolder.


xelab xil_defaultlib.apatb_runQueue_top -prj runQueue.prj --lib "ieee_proposed=./ieee_proposed" -s runQueue 
xsim --noieeewarnings runQueue -tclbatch runQueue.tcl


# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set N [ipgui::add_param $IPINST -parent $Page0 -name N]
	set MSB [ipgui::add_param $IPINST -parent $Page0 -name MSB]
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}

proc update_PARAM_VALUE.MSB { PARAM_VALUE.MSB } {
	# Procedure called to update MSB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MSB { PARAM_VALUE.MSB } {
	# Procedure called to validate MSB
	return true
}


proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.MSB { MODELPARAM_VALUE.MSB PARAM_VALUE.MSB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MSB}] ${MODELPARAM_VALUE.MSB}
}


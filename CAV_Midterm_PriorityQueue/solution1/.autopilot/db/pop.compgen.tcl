# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name tempData_priority \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tempData_priority \
    op interface \
    ports { tempData_priority_address0 { O 9 vector } tempData_priority_ce0 { O 1 bit } tempData_priority_we0 { O 1 bit } tempData_priority_d0 { O 32 vector } tempData_priority_q0 { I 32 vector } tempData_priority_address1 { O 9 vector } tempData_priority_ce1 { O 1 bit } tempData_priority_we1 { O 1 bit } tempData_priority_d1 { O 32 vector } tempData_priority_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tempData_priority'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name tempData_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tempData_data \
    op interface \
    ports { tempData_data_address0 { O 9 vector } tempData_data_ce0 { O 1 bit } tempData_data_we0 { O 1 bit } tempData_data_d0 { O 32 vector } tempData_data_q0 { I 32 vector } tempData_data_address1 { O 9 vector } tempData_data_ce1 { O 1 bit } tempData_data_we1 { O 1 bit } tempData_data_d1 { O 32 vector } tempData_data_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tempData_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name queueData_priority \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename queueData_priority \
    op interface \
    ports { queueData_priority_address0 { O 9 vector } queueData_priority_ce0 { O 1 bit } queueData_priority_we0 { O 1 bit } queueData_priority_d0 { O 32 vector } queueData_priority_q0 { I 32 vector } queueData_priority_address1 { O 9 vector } queueData_priority_ce1 { O 1 bit } queueData_priority_we1 { O 1 bit } queueData_priority_d1 { O 32 vector } queueData_priority_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'queueData_priority'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name queueData_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename queueData_data \
    op interface \
    ports { queueData_data_address0 { O 9 vector } queueData_data_ce0 { O 1 bit } queueData_data_we0 { O 1 bit } queueData_data_d0 { O 32 vector } queueData_data_q0 { I 32 vector } queueData_data_address1 { O 9 vector } queueData_data_ce1 { O 1 bit } queueData_data_we1 { O 1 bit } queueData_data_d1 { O 32 vector } queueData_data_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'queueData_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size \
    op interface \
    ports { size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}



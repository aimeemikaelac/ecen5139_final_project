# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1
set MemName runQueue_random_priorities
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 9
set AddrRange 200
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "101000101" "110110101" "100100110" "011000101" "100100111" "010110010" "101000101" "111110100" "011001111" "110000000" "000010000" "000010101" "001011111" "111101011" "101101000" "000010110" "000001010" "100000111" "100110111" "110011010" "101111101" "101001101" "001000001" "010111111" "010001001" "010111000" "101100010" "001011110" "100101110" "001101010" "100111100" "110100101" "010100110" "111011011" "101101100" "011111010" "001011011" "100010001" "111110100" "101111111" "101001001" "110110111" "111011011" "011101010" "110110111" "111101011" "011101011" "011110000" "100110110" "101101010" "011001011" "000110101" "001001110" "110011111" "101001111" "011010110" "001100100" "110110011" "100101000" "001000101" "110111111" "001111101" "001111100" "101110110" "001000001" "011010101" "100101000" "101010011" "011010011" "101110110" "111011110" "110010010" "001010101" "101100001" "001000010" "011001000" "111001111" "010110101" "100001101" "100001111" "110011100" "000111010" "101011000" "111011010" "001011010" "001101001" "000010100" "010011100" "110010110" "100110101" "111101011" "110011111" "100001110" "001011100" "110101100" "000010000" "011100011" "110111001" "000110001" "101111001" "110100010" "110101000" "110100001" "001000010" "011110001" "101001001" "010011101" "010011010" "011100010" "110110111" "011110110" "000011100" "000100100" "110100111" "110011011" "000001100" "010101101" "011100010" "010101100" "010010110" "100101010" "110010110" "001010000" "101000101" "101100110" "110111110" "110000010" "001001011" "100011100" "110100001" "010001111" "000011000" "010101000" "100101001" "000000011" "001110100" "000100101" "010111010" "101100111" "011011110" "000101001" "001111000" "101110111" "100010111" "101101110" "101100010" "110010011" "000111110" "110101101" "110010101" "010000101" "100101111" "110000100" "011000001" "000010000" "100011011" "110101011" "011101001" "010101111" "111000111" "010000001" "010011110" "100110101" "000111011" "101101110" "001101100" "110010111" "110000011" "011011000" "101111101" "001110110" "101010110" "000001100" "000111101" "110011011" "001101110" "111001001" "001011000" "011000111" "110100011" "111011010" "001110100" "010010001" "000001000" "010010000" "000100000" "001101010" "111000011" "011111101" "001110011" "011001010" "111101110" "011101111" "010111100" "101011111" "010011011" "000011100" "011100011" "100001000" "010111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num 2 \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num 2 \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename AXI4LiteS
set opts {
    {
        id 7
        name fullOut
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode SIG_OUT_VLD_OFF:SIG_OUT_ACC_OFF
    }
    {
        id 8
        name iterations
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 32
        mode SIG_IN_VLD_ON:SIG_IN_ACC_OFF
    }
    {
        id 9
        name finished
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode SIG_OUT_VLD_ON:SIG_OUT_ACC_OFF
    }
    {
        id 10
        name currentIteration
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 32
        mode SIG_OUT_VLD_OFF:SIG_OUT_ACC_OFF
    }
    {
        id 11
        name total
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 32
        mode SIG_OUT_VLD_OFF:SIG_OUT_ACC_OFF
    }
    {
        id -1
        name ap_start
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 1
        mode ap_ctrl
    }
    {
        id -2
        name ap_ready
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -3
        name ap_done
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -4
        name ap_idle
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -5
        name ap_return
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 32
        mode SIG_OUT_VLD_OFF:SIG_OUT_ACC_OFF
    }
}
set portmap { }
set metadata { -bus_bundle}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name priorityOut_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_priorityOut_V \
    op interface \
    ports { priorityOut_V { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name priorityIn_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_priorityIn_V \
    op interface \
    ports { priorityIn_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name cmdOut_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmdOut_V \
    op interface \
    ports { cmdOut_V { O 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name full \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_full \
    op interface \
    ports { full { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -6 \
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
    id -7 \
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



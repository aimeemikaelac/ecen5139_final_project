// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "max.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic max::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic max::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> max::ap_ST_st1_fsm_0 = "0";
const sc_lv<1> max::ap_ST_st2_fsm_1 = "1";

max::max(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_agg_result_data_write_assign_fu_47_p3);
    sensitive << ( first_data );
    sensitive << ( second_data );
    sensitive << ( tmp_fu_37_p2 );

    SC_METHOD(thread_agg_result_priority_write_assign_fu_41_p3);
    sensitive << ( first_priority );
    sensitive << ( second_priority );
    sensitive << ( tmp_fu_37_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( agg_result_priority_write_assign_fu_41_p3 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( agg_result_data_write_assign_fu_47_p3 );

    SC_METHOD(thread_tmp_fu_37_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( first_priority );
    sensitive << ( second_priority );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    ap_CS_fsm = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "max_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, first_priority, "(port)first_priority");
    sc_trace(mVcdFile, first_data, "(port)first_data");
    sc_trace(mVcdFile, second_priority, "(port)second_priority");
    sc_trace(mVcdFile, second_data, "(port)second_data");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, tmp_fu_37_p2, "tmp_fu_37_p2");
    sc_trace(mVcdFile, agg_result_priority_write_assign_fu_41_p3, "agg_result_priority_write_assign_fu_41_p3");
    sc_trace(mVcdFile, agg_result_data_write_assign_fu_47_p3, "agg_result_data_write_assign_fu_47_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

max::~max() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void max::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
}

void max::thread_agg_result_data_write_assign_fu_47_p3() {
    agg_result_data_write_assign_fu_47_p3 = (!tmp_fu_37_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_fu_37_p2.read()[0].to_bool())? second_data.read(): first_data.read());
}

void max::thread_agg_result_priority_write_assign_fu_41_p3() {
    agg_result_priority_write_assign_fu_41_p3 = (!tmp_fu_37_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_fu_37_p2.read()[0].to_bool())? second_priority.read(): first_priority.read());
}

void max::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void max::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void max::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void max::thread_ap_return_0() {
    ap_return_0 = agg_result_priority_write_assign_fu_41_p3.read();
}

void max::thread_ap_return_1() {
    ap_return_1 = agg_result_data_write_assign_fu_47_p3.read();
}

void max::thread_tmp_fu_37_p2() {
    tmp_fu_37_p2 = (!first_priority.read().is_01() || !second_priority.read().is_01())? sc_lv<1>(): (sc_bigint<32>(first_priority.read()) < sc_bigint<32>(second_priority.read()));
}

void max::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}
}


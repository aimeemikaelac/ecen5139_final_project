// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _runQueue_HH_
#define _runQueue_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "runTest.h"

namespace ap_rtl {

struct runQueue : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    runQueue(sc_module_name name);
    SC_HAS_PROCESS(runQueue);

    ~runQueue();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    runTest* grp_runTest_fu_70;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_lv<14> > i_1_fu_92_p2;
    sc_signal< sc_lv<14> > i_1_reg_107;
    sc_signal< sc_lv<1> > result_1_fu_98_p2;
    sc_signal< sc_logic > grp_runTest_fu_70_ap_done;
    sc_signal< sc_logic > grp_runTest_fu_70_ap_start;
    sc_signal< sc_logic > grp_runTest_fu_70_ap_idle;
    sc_signal< sc_logic > grp_runTest_fu_70_ap_ready;
    sc_signal< sc_lv<1> > grp_runTest_fu_70_ap_return;
    sc_signal< sc_lv<1> > result_reg_46;
    sc_signal< sc_lv<14> > i_reg_58;
    sc_signal< sc_logic > grp_runTest_fu_70_ap_start_ap_start_reg;
    sc_signal< sc_lv<1> > exitcond_fu_86_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<2> ap_ST_st3_fsm_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<14> ap_const_lv14_2710;
    static const sc_lv<14> ap_const_lv14_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_exitcond_fu_86_p2();
    void thread_grp_runTest_fu_70_ap_start();
    void thread_i_1_fu_92_p2();
    void thread_result_1_fu_98_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

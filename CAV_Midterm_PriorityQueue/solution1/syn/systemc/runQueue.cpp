// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "runQueue.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic runQueue::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic runQueue::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> runQueue::ap_ST_st1_fsm_0 = "00";
const sc_lv<2> runQueue::ap_ST_st2_fsm_1 = "1";
const sc_lv<2> runQueue::ap_ST_st3_fsm_2 = "10";
const sc_lv<1> runQueue::ap_const_lv1_1 = "1";
const sc_lv<14> runQueue::ap_const_lv14_0 = "00000000000000";
const sc_lv<1> runQueue::ap_const_lv1_0 = "0";
const sc_lv<14> runQueue::ap_const_lv14_2710 = "10011100010000";
const sc_lv<14> runQueue::ap_const_lv14_1 = "1";

runQueue::runQueue(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_runTest_fu_70 = new runTest("grp_runTest_fu_70");
    grp_runTest_fu_70->ap_clk(ap_clk);
    grp_runTest_fu_70->ap_rst(ap_rst);
    grp_runTest_fu_70->ap_start(grp_runTest_fu_70_ap_start);
    grp_runTest_fu_70->ap_done(grp_runTest_fu_70_ap_done);
    grp_runTest_fu_70->ap_idle(grp_runTest_fu_70_ap_idle);
    grp_runTest_fu_70->ap_ready(grp_runTest_fu_70_ap_ready);
    grp_runTest_fu_70->ap_return(grp_runTest_fu_70_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_86_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_86_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm );
    sensitive << ( result_reg_46 );
    sensitive << ( exitcond_fu_86_p2 );

    SC_METHOD(thread_exitcond_fu_86_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_reg_58 );

    SC_METHOD(thread_grp_runTest_fu_70_ap_start);
    sensitive << ( grp_runTest_fu_70_ap_start_ap_start_reg );

    SC_METHOD(thread_i_1_fu_92_p2);
    sensitive << ( i_reg_58 );

    SC_METHOD(thread_result_1_fu_98_p2);
    sensitive << ( grp_runTest_fu_70_ap_return );
    sensitive << ( result_reg_46 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_runTest_fu_70_ap_done );
    sensitive << ( exitcond_fu_86_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00";
    grp_runTest_fu_70_ap_start_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "runQueue_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, i_1_fu_92_p2, "i_1_fu_92_p2");
    sc_trace(mVcdFile, i_1_reg_107, "i_1_reg_107");
    sc_trace(mVcdFile, result_1_fu_98_p2, "result_1_fu_98_p2");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_done, "grp_runTest_fu_70_ap_done");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_start, "grp_runTest_fu_70_ap_start");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_idle, "grp_runTest_fu_70_ap_idle");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_ready, "grp_runTest_fu_70_ap_ready");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_return, "grp_runTest_fu_70_ap_return");
    sc_trace(mVcdFile, result_reg_46, "result_reg_46");
    sc_trace(mVcdFile, i_reg_58, "i_reg_58");
    sc_trace(mVcdFile, grp_runTest_fu_70_ap_start_ap_start_reg, "grp_runTest_fu_70_ap_start_ap_start_reg");
    sc_trace(mVcdFile, exitcond_fu_86_p2, "exitcond_fu_86_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("runQueue.hdltvin.dat");
    mHdltvoutHandle.open("runQueue.hdltvout.dat");
}

runQueue::~runQueue() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_runTest_fu_70;
}

void runQueue::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_runTest_fu_70_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
             esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0))) {
            grp_runTest_fu_70_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_runTest_fu_70_ap_ready.read())) {
            grp_runTest_fu_70_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,2,2>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_runTest_fu_70_ap_done.read()))) {
        i_reg_58 = i_1_reg_107.read();
    } else if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_58 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,2,2>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_runTest_fu_70_ap_done.read()))) {
        result_reg_46 = result_1_fu_98_p2.read();
    } else if ((esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        result_reg_46 = ap_const_lv1_1;
    }
    if (esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_1_reg_107 = i_1_fu_92_p2.read();
    }
}

void runQueue::thread_ap_done() {
    if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void runQueue::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,2,2>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void runQueue::thread_ap_ready() {
    if ((esl_seteq<1,2,2>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void runQueue::thread_ap_return() {
    ap_return = result_reg_46.read();
}

void runQueue::thread_exitcond_fu_86_p2() {
    exitcond_fu_86_p2 = (!i_reg_58.read().is_01() || !ap_const_lv14_2710.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_58.read() == ap_const_lv14_2710);
}

void runQueue::thread_grp_runTest_fu_70_ap_start() {
    grp_runTest_fu_70_ap_start = grp_runTest_fu_70_ap_start_ap_start_reg.read();
}

void runQueue::thread_i_1_fu_92_p2() {
    i_1_fu_92_p2 = (!i_reg_58.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_bigint<14>(i_reg_58.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void runQueue::thread_result_1_fu_98_p2() {
    result_1_fu_98_p2 = (grp_runTest_fu_70_ap_return.read() & result_reg_46.read());
}

void runQueue::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_runTest_fu_70_ap_done.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}
void runQueue::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "runTest.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic runTest::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic runTest::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> runTest::ap_ST_st1_fsm_0 = "0000";
const sc_lv<4> runTest::ap_ST_st2_fsm_1 = "1";
const sc_lv<4> runTest::ap_ST_st3_fsm_2 = "10";
const sc_lv<4> runTest::ap_ST_st4_fsm_3 = "11";
const sc_lv<4> runTest::ap_ST_st5_fsm_4 = "100";
const sc_lv<4> runTest::ap_ST_st6_fsm_5 = "101";
const sc_lv<4> runTest::ap_ST_st7_fsm_6 = "110";
const sc_lv<4> runTest::ap_ST_st8_fsm_7 = "111";
const sc_lv<4> runTest::ap_ST_st9_fsm_8 = "1000";
const sc_lv<4> runTest::ap_ST_st10_fsm_9 = "1001";
const sc_lv<4> runTest::ap_ST_st11_fsm_10 = "1010";
const sc_lv<4> runTest::ap_ST_st12_fsm_11 = "1011";
const sc_lv<4> runTest::ap_ST_st13_fsm_12 = "1100";
const sc_lv<1> runTest::ap_const_lv1_0 = "0";
const sc_lv<8> runTest::ap_const_lv8_0 = "00000000";
const sc_lv<1> runTest::ap_const_lv1_1 = "1";
const sc_lv<32> runTest::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<9> runTest::ap_const_lv9_0 = "000000000";
const sc_lv<32> runTest::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const sc_lv<8> runTest::ap_const_lv8_C8 = "11001000";
const sc_lv<8> runTest::ap_const_lv8_1 = "1";
const sc_lv<8> runTest::ap_const_lv8_C7 = "11000111";
const sc_lv<32> runTest::ap_const_lv32_C8 = "11001000";
const sc_lv<32> runTest::ap_const_lv32_1 = "1";

runTest::runTest(sc_module_name name) : sc_module(name), mVcdFile(0) {
    random_priorities_U = new runTest_random_priorities("random_priorities_U");
    random_priorities_U->clk(ap_clk);
    random_priorities_U->reset(ap_rst);
    random_priorities_U->address0(random_priorities_address0);
    random_priorities_U->ce0(random_priorities_ce0);
    random_priorities_U->q0(random_priorities_q0);
    dequeuedItems_U = new runTest_dequeuedItems("dequeuedItems_U");
    dequeuedItems_U->clk(ap_clk);
    dequeuedItems_U->reset(ap_rst);
    dequeuedItems_U->address0(dequeuedItems_address0);
    dequeuedItems_U->ce0(dequeuedItems_ce0);
    dequeuedItems_U->we0(dequeuedItems_we0);
    dequeuedItems_U->d0(dequeuedItems_d0);
    dequeuedItems_U->q0(dequeuedItems_q0);
    grp_queue_fu_170 = new queue("grp_queue_fu_170");
    grp_queue_fu_170->ap_clk(ap_clk);
    grp_queue_fu_170->ap_rst(ap_rst);
    grp_queue_fu_170->ap_start(grp_queue_fu_170_ap_start);
    grp_queue_fu_170->ap_done(grp_queue_fu_170_ap_done);
    grp_queue_fu_170->ap_idle(grp_queue_fu_170_ap_idle);
    grp_queue_fu_170->ap_ready(grp_queue_fu_170_ap_ready);
    grp_queue_fu_170->isPush(grp_queue_fu_170_isPush);
    grp_queue_fu_170->inData_priority(grp_queue_fu_170_inData_priority);
    grp_queue_fu_170->inData_data(grp_queue_fu_170_inData_data);
    grp_queue_fu_170->ap_return_0(grp_queue_fu_170_ap_return_0);
    grp_queue_fu_170->ap_return_1(grp_queue_fu_170_ap_return_1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_310_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_310_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm );
    sensitive << ( result_2_reg_147 );
    sensitive << ( exitcond_fu_310_p2 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_current_data_1_fu_286_p2);
    sensitive << ( i_2_reg_112 );

    SC_METHOD(thread_current_data_fu_208_p2);
    sensitive << ( current_priority_reg_77 );

    SC_METHOD(thread_current_priority_cast6_cast_fu_215_p1);
    sensitive << ( current_priority_reg_77 );

    SC_METHOD(thread_dequeuedItems_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dequeuedItems_addr_1_reg_457 );
    sensitive << ( tmp_9_fu_305_p1 );
    sensitive << ( tmp_1_fu_328_p1 );

    SC_METHOD(thread_dequeuedItems_ce0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_queue_fu_170_ap_done );

    SC_METHOD(thread_dequeuedItems_d0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( out_data_1_reg_446 );

    SC_METHOD(thread_dequeuedItems_we0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond1_fu_293_p2 );

    SC_METHOD(thread_exitcond1_fu_293_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_3_reg_124 );

    SC_METHOD(thread_exitcond2_fu_269_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_2_reg_112 );

    SC_METHOD(thread_exitcond3_fu_224_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_1_reg_100 );

    SC_METHOD(thread_exitcond4_fu_196_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( current_priority_reg_77 );

    SC_METHOD(thread_exitcond_fu_310_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_4_reg_158 );

    SC_METHOD(thread_grp_queue_fu_170_ap_start);
    sensitive << ( grp_queue_fu_170_ap_start_ap_start_reg );

    SC_METHOD(thread_grp_queue_fu_170_inData_data);
    sensitive << ( ap_CS_fsm );
    sensitive << ( current_data_reg_374 );
    sensitive << ( current_data_1_reg_415 );

    SC_METHOD(thread_grp_queue_fu_170_inData_priority);
    sensitive << ( ap_CS_fsm );
    sensitive << ( current_priority_cast6_cast_reg_379 );
    sensitive << ( current_priority_1_reg_420 );

    SC_METHOD(thread_grp_queue_fu_170_isPush);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_i_1_cast5_fu_220_p1);
    sensitive << ( i_1_reg_100 );

    SC_METHOD(thread_i_5_fu_275_p2);
    sensitive << ( i_2_reg_112 );

    SC_METHOD(thread_i_6_fu_230_p2);
    sensitive << ( i_1_reg_100 );

    SC_METHOD(thread_i_7_fu_299_p2);
    sensitive << ( i_3_reg_124 );

    SC_METHOD(thread_i_8_fu_316_p2);
    sensitive << ( i_4_reg_158 );

    SC_METHOD(thread_i_fu_202_p2);
    sensitive << ( current_priority_reg_77 );

    SC_METHOD(thread_notlhs_fu_338_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( out_data_1_reg_446 );

    SC_METHOD(thread_notrhs_fu_343_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dequeuedItems_q0 );

    SC_METHOD(thread_random_priorities_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_281_p1 );

    SC_METHOD(thread_random_priorities_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_result_4_fu_361_p2);
    sensitive << ( tmp_7_reg_462 );
    sensitive << ( result_2_reg_147 );

    SC_METHOD(thread_result_s_fu_263_p2);
    sensitive << ( result_reg_88 );
    sensitive << ( tmp_2_fu_257_p2 );

    SC_METHOD(thread_rev1_fu_333_p2);
    sensitive << ( slt_reg_452 );

    SC_METHOD(thread_slt_fu_322_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_queue_fu_170_ap_done );
    sensitive << ( grp_queue_fu_170_ap_return_0 );
    sensitive << ( last_reg_135 );

    SC_METHOD(thread_tmp2_fu_349_p2);
    sensitive << ( notlhs_fu_338_p2 );
    sensitive << ( notrhs_fu_343_p2 );

    SC_METHOD(thread_tmp_1_fu_328_p1);
    sensitive << ( grp_queue_fu_170_ap_return_1 );

    SC_METHOD(thread_tmp_2_fu_257_p2);
    sensitive << ( tmp_4_fu_251_p2 );
    sensitive << ( tmp_fu_236_p2 );

    SC_METHOD(thread_tmp_3_cast_fu_247_p1);
    sensitive << ( tmp_3_fu_241_p2 );

    SC_METHOD(thread_tmp_3_fu_241_p2);
    sensitive << ( i_1_reg_100 );

    SC_METHOD(thread_tmp_4_fu_251_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_queue_fu_170_ap_done );
    sensitive << ( grp_queue_fu_170_ap_return_1 );
    sensitive << ( tmp_3_cast_fu_247_p1 );

    SC_METHOD(thread_tmp_6_fu_281_p1);
    sensitive << ( i_2_reg_112 );

    SC_METHOD(thread_tmp_7_fu_355_p2);
    sensitive << ( tmp2_fu_349_p2 );
    sensitive << ( rev1_fu_333_p2 );

    SC_METHOD(thread_tmp_9_fu_305_p1);
    sensitive << ( i_3_reg_124 );

    SC_METHOD(thread_tmp_fu_236_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_1_cast5_reg_384 );
    sensitive << ( grp_queue_fu_170_ap_done );
    sensitive << ( grp_queue_fu_170_ap_return_0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond4_fu_196_p2 );
    sensitive << ( grp_queue_fu_170_ap_done );
    sensitive << ( exitcond2_fu_269_p2 );
    sensitive << ( exitcond3_fu_224_p2 );
    sensitive << ( exitcond1_fu_293_p2 );
    sensitive << ( exitcond_fu_310_p2 );

    ap_CS_fsm = "0000";
    grp_queue_fu_170_ap_start_ap_start_reg = SC_LOGIC_0;
    ap_return_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "runTest_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, random_priorities_address0, "random_priorities_address0");
    sc_trace(mVcdFile, random_priorities_ce0, "random_priorities_ce0");
    sc_trace(mVcdFile, random_priorities_q0, "random_priorities_q0");
    sc_trace(mVcdFile, i_fu_202_p2, "i_fu_202_p2");
    sc_trace(mVcdFile, i_reg_369, "i_reg_369");
    sc_trace(mVcdFile, current_data_fu_208_p2, "current_data_fu_208_p2");
    sc_trace(mVcdFile, current_data_reg_374, "current_data_reg_374");
    sc_trace(mVcdFile, exitcond4_fu_196_p2, "exitcond4_fu_196_p2");
    sc_trace(mVcdFile, current_priority_cast6_cast_fu_215_p1, "current_priority_cast6_cast_fu_215_p1");
    sc_trace(mVcdFile, current_priority_cast6_cast_reg_379, "current_priority_cast6_cast_reg_379");
    sc_trace(mVcdFile, i_1_cast5_fu_220_p1, "i_1_cast5_fu_220_p1");
    sc_trace(mVcdFile, i_1_cast5_reg_384, "i_1_cast5_reg_384");
    sc_trace(mVcdFile, i_6_fu_230_p2, "i_6_fu_230_p2");
    sc_trace(mVcdFile, i_6_reg_392, "i_6_reg_392");
    sc_trace(mVcdFile, result_s_fu_263_p2, "result_s_fu_263_p2");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_done, "grp_queue_fu_170_ap_done");
    sc_trace(mVcdFile, i_5_fu_275_p2, "i_5_fu_275_p2");
    sc_trace(mVcdFile, i_5_reg_405, "i_5_reg_405");
    sc_trace(mVcdFile, exitcond2_fu_269_p2, "exitcond2_fu_269_p2");
    sc_trace(mVcdFile, current_data_1_fu_286_p2, "current_data_1_fu_286_p2");
    sc_trace(mVcdFile, current_data_1_reg_415, "current_data_1_reg_415");
    sc_trace(mVcdFile, current_priority_1_reg_420, "current_priority_1_reg_420");
    sc_trace(mVcdFile, i_7_fu_299_p2, "i_7_fu_299_p2");
    sc_trace(mVcdFile, i_8_fu_316_p2, "i_8_fu_316_p2");
    sc_trace(mVcdFile, i_8_reg_436, "i_8_reg_436");
    sc_trace(mVcdFile, out_priority_2_reg_441, "out_priority_2_reg_441");
    sc_trace(mVcdFile, out_data_1_reg_446, "out_data_1_reg_446");
    sc_trace(mVcdFile, slt_fu_322_p2, "slt_fu_322_p2");
    sc_trace(mVcdFile, slt_reg_452, "slt_reg_452");
    sc_trace(mVcdFile, dequeuedItems_addr_1_reg_457, "dequeuedItems_addr_1_reg_457");
    sc_trace(mVcdFile, tmp_7_fu_355_p2, "tmp_7_fu_355_p2");
    sc_trace(mVcdFile, tmp_7_reg_462, "tmp_7_reg_462");
    sc_trace(mVcdFile, result_4_fu_361_p2, "result_4_fu_361_p2");
    sc_trace(mVcdFile, dequeuedItems_address0, "dequeuedItems_address0");
    sc_trace(mVcdFile, dequeuedItems_ce0, "dequeuedItems_ce0");
    sc_trace(mVcdFile, dequeuedItems_we0, "dequeuedItems_we0");
    sc_trace(mVcdFile, dequeuedItems_d0, "dequeuedItems_d0");
    sc_trace(mVcdFile, dequeuedItems_q0, "dequeuedItems_q0");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_start, "grp_queue_fu_170_ap_start");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_idle, "grp_queue_fu_170_ap_idle");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_ready, "grp_queue_fu_170_ap_ready");
    sc_trace(mVcdFile, grp_queue_fu_170_isPush, "grp_queue_fu_170_isPush");
    sc_trace(mVcdFile, grp_queue_fu_170_inData_priority, "grp_queue_fu_170_inData_priority");
    sc_trace(mVcdFile, grp_queue_fu_170_inData_data, "grp_queue_fu_170_inData_data");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_return_0, "grp_queue_fu_170_ap_return_0");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_return_1, "grp_queue_fu_170_ap_return_1");
    sc_trace(mVcdFile, current_priority_reg_77, "current_priority_reg_77");
    sc_trace(mVcdFile, result_reg_88, "result_reg_88");
    sc_trace(mVcdFile, i_1_reg_100, "i_1_reg_100");
    sc_trace(mVcdFile, i_2_reg_112, "i_2_reg_112");
    sc_trace(mVcdFile, exitcond3_fu_224_p2, "exitcond3_fu_224_p2");
    sc_trace(mVcdFile, i_3_reg_124, "i_3_reg_124");
    sc_trace(mVcdFile, exitcond1_fu_293_p2, "exitcond1_fu_293_p2");
    sc_trace(mVcdFile, last_reg_135, "last_reg_135");
    sc_trace(mVcdFile, result_2_reg_147, "result_2_reg_147");
    sc_trace(mVcdFile, i_4_reg_158, "i_4_reg_158");
    sc_trace(mVcdFile, grp_queue_fu_170_ap_start_ap_start_reg, "grp_queue_fu_170_ap_start_ap_start_reg");
    sc_trace(mVcdFile, exitcond_fu_310_p2, "exitcond_fu_310_p2");
    sc_trace(mVcdFile, tmp_6_fu_281_p1, "tmp_6_fu_281_p1");
    sc_trace(mVcdFile, tmp_9_fu_305_p1, "tmp_9_fu_305_p1");
    sc_trace(mVcdFile, tmp_1_fu_328_p1, "tmp_1_fu_328_p1");
    sc_trace(mVcdFile, tmp_3_fu_241_p2, "tmp_3_fu_241_p2");
    sc_trace(mVcdFile, tmp_3_cast_fu_247_p1, "tmp_3_cast_fu_247_p1");
    sc_trace(mVcdFile, tmp_4_fu_251_p2, "tmp_4_fu_251_p2");
    sc_trace(mVcdFile, tmp_fu_236_p2, "tmp_fu_236_p2");
    sc_trace(mVcdFile, tmp_2_fu_257_p2, "tmp_2_fu_257_p2");
    sc_trace(mVcdFile, notlhs_fu_338_p2, "notlhs_fu_338_p2");
    sc_trace(mVcdFile, notrhs_fu_343_p2, "notrhs_fu_343_p2");
    sc_trace(mVcdFile, tmp2_fu_349_p2, "tmp2_fu_349_p2");
    sc_trace(mVcdFile, rev1_fu_333_p2, "rev1_fu_333_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

runTest::~runTest() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete random_priorities_U;
    delete dequeuedItems_U;
    delete grp_queue_fu_170;
}

void runTest::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read()))) {
            ap_return_preg = result_2_reg_147.read();
        }
    }
    if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()) && 
         esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()))) {
        current_priority_reg_77 = i_reg_369.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        current_priority_reg_77 = ap_const_lv8_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_queue_fu_170_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(exitcond4_fu_196_p2.read(), ap_const_lv1_0)) || 
             esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
             (esl_seteq<1,4,4>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_224_p2.read())) || 
             (esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read())))) {
            grp_queue_fu_170_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_queue_fu_170_ap_ready.read())) {
            grp_queue_fu_170_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond4_fu_196_p2.read(), ap_const_lv1_0))) {
        i_1_reg_100 = ap_const_lv8_0;
    } else if ((esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()))) {
        i_1_reg_100 = i_6_reg_392.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_224_p2.read()))) {
        i_2_reg_112 = ap_const_lv8_0;
    } else if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()) && 
                esl_seteq<1,4,4>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        i_2_reg_112 = i_5_reg_405.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_269_p2.read()))) {
        i_3_reg_124 = ap_const_lv8_0;
    } else if ((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read()))) {
        i_3_reg_124 = i_7_fu_299_p2.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read()))) {
        i_4_reg_158 = ap_const_lv8_0;
    } else if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        i_4_reg_158 = i_8_reg_436.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read()))) {
        last_reg_135 = ap_const_lv32_0;
    } else if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        last_reg_135 = out_priority_2_reg_441.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read()))) {
        result_2_reg_147 = result_reg_88.read();
    } else if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        result_2_reg_147 = result_4_fu_361_p2.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond4_fu_196_p2.read(), ap_const_lv1_0))) {
        result_reg_88 = ap_const_lv1_1;
    } else if ((esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()))) {
        result_reg_88 = result_s_fu_263_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        current_data_1_reg_415 = current_data_1_fu_286_p2.read();
        current_priority_1_reg_420 = random_priorities_q0.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && esl_seteq<1,1,1>(exitcond4_fu_196_p2.read(), ap_const_lv1_0))) {
        current_data_reg_374 = current_data_fu_208_p2.read();
        current_priority_cast6_cast_reg_379 = current_priority_cast6_cast_fu_215_p1.read();
    }
    if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()) && esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read()))) {
        dequeuedItems_addr_1_reg_457 =  (sc_lv<8>) (tmp_1_fu_328_p1.read());
        out_data_1_reg_446 = grp_queue_fu_170_ap_return_1.read();
        out_priority_2_reg_441 = grp_queue_fu_170_ap_return_0.read();
        slt_reg_452 = slt_fu_322_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        i_1_cast5_reg_384 = i_1_cast5_fu_220_p1.read();
        i_6_reg_392 = i_6_fu_230_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        i_5_reg_405 = i_5_fu_275_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
        i_8_reg_436 = i_8_fu_316_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_reg_369 = i_fu_202_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        tmp_7_reg_462 = tmp_7_fu_355_p2.read();
    }
}

void runTest::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) || 
         (esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void runTest::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void runTest::thread_ap_ready() {
    if ((esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void runTest::thread_ap_return() {
    if ((esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read()))) {
        ap_return = result_2_reg_147.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void runTest::thread_current_data_1_fu_286_p2() {
    current_data_1_fu_286_p2 = (!ap_const_lv8_C7.is_01() || !i_2_reg_112.read().is_01())? sc_lv<8>(): (sc_bigint<8>(ap_const_lv8_C7) - sc_biguint<8>(i_2_reg_112.read()));
}

void runTest::thread_current_data_fu_208_p2() {
    current_data_fu_208_p2 = (!ap_const_lv8_C7.is_01() || !current_priority_reg_77.read().is_01())? sc_lv<8>(): (sc_bigint<8>(ap_const_lv8_C7) - sc_biguint<8>(current_priority_reg_77.read()));
}

void runTest::thread_current_priority_cast6_cast_fu_215_p1() {
    current_priority_cast6_cast_fu_215_p1 = esl_zext<9,8>(current_priority_reg_77.read());
}

void runTest::thread_dequeuedItems_address0() {
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        dequeuedItems_address0 = dequeuedItems_addr_1_reg_457.read();
    } else if (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        dequeuedItems_address0 =  (sc_lv<8>) (tmp_9_fu_305_p1.read());
    } else if (esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read())) {
        dequeuedItems_address0 =  (sc_lv<8>) (tmp_1_fu_328_p1.read());
    } else {
        dequeuedItems_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void runTest::thread_dequeuedItems_ce0() {
    if ((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) || 
         (!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read()) && 
          esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read())) || 
         esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()))) {
        dequeuedItems_ce0 = ap_const_logic_1;
    } else {
        dequeuedItems_ce0 = ap_const_logic_0;
    }
}

void runTest::thread_dequeuedItems_d0() {
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        dequeuedItems_d0 = out_data_1_reg_446.read();
    } else if (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        dequeuedItems_d0 = ap_const_lv32_FFFFFFFF;
    } else {
        dequeuedItems_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void runTest::thread_dequeuedItems_we0() {
    if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) || 
         (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read())))) {
        dequeuedItems_we0 = ap_const_logic_1;
    } else {
        dequeuedItems_we0 = ap_const_logic_0;
    }
}

void runTest::thread_exitcond1_fu_293_p2() {
    exitcond1_fu_293_p2 = (!i_3_reg_124.read().is_01() || !ap_const_lv8_C8.is_01())? sc_lv<1>(): sc_lv<1>(i_3_reg_124.read() == ap_const_lv8_C8);
}

void runTest::thread_exitcond2_fu_269_p2() {
    exitcond2_fu_269_p2 = (!i_2_reg_112.read().is_01() || !ap_const_lv8_C8.is_01())? sc_lv<1>(): sc_lv<1>(i_2_reg_112.read() == ap_const_lv8_C8);
}

void runTest::thread_exitcond3_fu_224_p2() {
    exitcond3_fu_224_p2 = (!i_1_reg_100.read().is_01() || !ap_const_lv8_C8.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_100.read() == ap_const_lv8_C8);
}

void runTest::thread_exitcond4_fu_196_p2() {
    exitcond4_fu_196_p2 = (!current_priority_reg_77.read().is_01() || !ap_const_lv8_C8.is_01())? sc_lv<1>(): sc_lv<1>(current_priority_reg_77.read() == ap_const_lv8_C8);
}

void runTest::thread_exitcond_fu_310_p2() {
    exitcond_fu_310_p2 = (!i_4_reg_158.read().is_01() || !ap_const_lv8_C8.is_01())? sc_lv<1>(): sc_lv<1>(i_4_reg_158.read() == ap_const_lv8_C8);
}

void runTest::thread_grp_queue_fu_170_ap_start() {
    grp_queue_fu_170_ap_start = grp_queue_fu_170_ap_start_ap_start_reg.read();
}

void runTest::thread_grp_queue_fu_170_inData_data() {
    if (esl_seteq<1,4,4>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        grp_queue_fu_170_inData_data = current_data_1_reg_415.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) || 
                esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read()))) {
        grp_queue_fu_170_inData_data = ap_const_lv8_0;
    } else if (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        grp_queue_fu_170_inData_data = current_data_reg_374.read();
    } else {
        grp_queue_fu_170_inData_data =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void runTest::thread_grp_queue_fu_170_inData_priority() {
    if (esl_seteq<1,4,4>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        grp_queue_fu_170_inData_priority = current_priority_1_reg_420.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) || 
                esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read()))) {
        grp_queue_fu_170_inData_priority = ap_const_lv9_0;
    } else if (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        grp_queue_fu_170_inData_priority = current_priority_cast6_cast_reg_379.read();
    } else {
        grp_queue_fu_170_inData_priority = "XXXXXXXXX";
    }
}

void runTest::thread_grp_queue_fu_170_isPush() {
    if ((esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) || 
         esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read()))) {
        grp_queue_fu_170_isPush =  (sc_logic) (ap_const_lv1_0[0]);
    } else if ((esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) || 
                esl_seteq<1,4,4>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        grp_queue_fu_170_isPush =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        grp_queue_fu_170_isPush = sc_logic('X');
    }
}

void runTest::thread_i_1_cast5_fu_220_p1() {
    i_1_cast5_fu_220_p1 = esl_zext<32,8>(i_1_reg_100.read());
}

void runTest::thread_i_5_fu_275_p2() {
    i_5_fu_275_p2 = (!i_2_reg_112.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(i_2_reg_112.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void runTest::thread_i_6_fu_230_p2() {
    i_6_fu_230_p2 = (!i_1_reg_100.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_reg_100.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void runTest::thread_i_7_fu_299_p2() {
    i_7_fu_299_p2 = (!i_3_reg_124.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(i_3_reg_124.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void runTest::thread_i_8_fu_316_p2() {
    i_8_fu_316_p2 = (!i_4_reg_158.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(i_4_reg_158.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void runTest::thread_i_fu_202_p2() {
    i_fu_202_p2 = (!current_priority_reg_77.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(current_priority_reg_77.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void runTest::thread_notlhs_fu_338_p2() {
    notlhs_fu_338_p2 = (!out_data_1_reg_446.read().is_01() || !ap_const_lv32_C8.is_01())? sc_lv<1>(): (sc_bigint<32>(out_data_1_reg_446.read()) < sc_bigint<32>(ap_const_lv32_C8));
}

void runTest::thread_notrhs_fu_343_p2() {
    notrhs_fu_343_p2 = (!dequeuedItems_q0.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<1>(): (sc_bigint<32>(dequeuedItems_q0.read()) < sc_bigint<32>(ap_const_lv32_1));
}

void runTest::thread_random_priorities_address0() {
    random_priorities_address0 =  (sc_lv<8>) (tmp_6_fu_281_p1.read());
}

void runTest::thread_random_priorities_ce0() {
    if (esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        random_priorities_ce0 = ap_const_logic_1;
    } else {
        random_priorities_ce0 = ap_const_logic_0;
    }
}

void runTest::thread_result_4_fu_361_p2() {
    result_4_fu_361_p2 = (result_2_reg_147.read() & tmp_7_reg_462.read());
}

void runTest::thread_result_s_fu_263_p2() {
    result_s_fu_263_p2 = (result_reg_88.read() & tmp_2_fu_257_p2.read());
}

void runTest::thread_rev1_fu_333_p2() {
    rev1_fu_333_p2 = (slt_reg_452.read() ^ ap_const_lv1_1);
}

void runTest::thread_slt_fu_322_p2() {
    slt_fu_322_p2 = (!grp_queue_fu_170_ap_return_0.read().is_01() || !last_reg_135.read().is_01())? sc_lv<1>(): (sc_bigint<32>(grp_queue_fu_170_ap_return_0.read()) < sc_bigint<32>(last_reg_135.read()));
}

void runTest::thread_tmp2_fu_349_p2() {
    tmp2_fu_349_p2 = (notlhs_fu_338_p2.read() & notrhs_fu_343_p2.read());
}

void runTest::thread_tmp_1_fu_328_p1() {
    tmp_1_fu_328_p1 = esl_sext<64,32>(grp_queue_fu_170_ap_return_1.read());
}

void runTest::thread_tmp_2_fu_257_p2() {
    tmp_2_fu_257_p2 = (tmp_4_fu_251_p2.read() & tmp_fu_236_p2.read());
}

void runTest::thread_tmp_3_cast_fu_247_p1() {
    tmp_3_cast_fu_247_p1 = esl_zext<32,8>(tmp_3_fu_241_p2.read());
}

void runTest::thread_tmp_3_fu_241_p2() {
    tmp_3_fu_241_p2 = (!ap_const_lv8_C7.is_01() || !i_1_reg_100.read().is_01())? sc_lv<8>(): (sc_bigint<8>(ap_const_lv8_C7) - sc_biguint<8>(i_1_reg_100.read()));
}

void runTest::thread_tmp_4_fu_251_p2() {
    tmp_4_fu_251_p2 = (!grp_queue_fu_170_ap_return_1.read().is_01() || !tmp_3_cast_fu_247_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(grp_queue_fu_170_ap_return_1.read() == tmp_3_cast_fu_247_p1.read());
}

void runTest::thread_tmp_6_fu_281_p1() {
    tmp_6_fu_281_p1 = esl_zext<64,8>(i_2_reg_112.read());
}

void runTest::thread_tmp_7_fu_355_p2() {
    tmp_7_fu_355_p2 = (tmp2_fu_349_p2.read() & rev1_fu_333_p2.read());
}

void runTest::thread_tmp_9_fu_305_p1() {
    tmp_9_fu_305_p1 = esl_zext<64,8>(i_3_reg_124.read());
}

void runTest::thread_tmp_fu_236_p2() {
    tmp_fu_236_p2 = (!grp_queue_fu_170_ap_return_0.read().is_01() || !i_1_cast5_reg_384.read().is_01())? sc_lv<1>(): sc_lv<1>(grp_queue_fu_170_ap_return_0.read() == i_1_cast5_reg_384.read());
}

void runTest::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(exitcond4_fu_196_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 3 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_224_p2.read())) {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        case 4 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        case 5 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_269_p2.read())) {
                ap_NS_fsm = ap_ST_st9_fsm_8;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 7 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read())) {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            } else {
                ap_NS_fsm = ap_ST_st8_fsm_7;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_293_p2.read())) {
                ap_NS_fsm = ap_ST_st9_fsm_8;
            } else {
                ap_NS_fsm = ap_ST_st10_fsm_9;
            }
            break;
        case 9 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_310_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            }
            break;
        case 10 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_queue_fu_170_ap_done.read())) {
                ap_NS_fsm = ap_ST_st12_fsm_11;
            } else {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            }
            break;
        case 11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}
}

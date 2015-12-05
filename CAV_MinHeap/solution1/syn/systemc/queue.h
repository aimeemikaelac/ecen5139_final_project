// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _queue_HH_
#define _queue_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "min_heapify.h"
#include "queue_queueDataHeap_priority.h"

namespace ap_rtl {

struct queue : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > isPush;
    sc_in< sc_lv<9> > inData_priority;
    sc_in< sc_lv<8> > inData_data;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    queue(sc_module_name name);
    SC_HAS_PROCESS(queue);

    ~queue();

    sc_trace_file* mVcdFile;

    queue_queueDataHeap_priority* queueDataHeap_priority_U;
    queue_queueDataHeap_priority* queueDataHeap_data_U;
    min_heapify* grp_min_heapify_fu_169;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_lv<32> > size;
    sc_signal< sc_lv<8> > queueDataHeap_priority_address0;
    sc_signal< sc_logic > queueDataHeap_priority_ce0;
    sc_signal< sc_logic > queueDataHeap_priority_we0;
    sc_signal< sc_lv<32> > queueDataHeap_priority_d0;
    sc_signal< sc_lv<32> > queueDataHeap_priority_q0;
    sc_signal< sc_lv<8> > queueDataHeap_priority_address1;
    sc_signal< sc_logic > queueDataHeap_priority_ce1;
    sc_signal< sc_logic > queueDataHeap_priority_we1;
    sc_signal< sc_lv<32> > queueDataHeap_priority_d1;
    sc_signal< sc_lv<32> > queueDataHeap_priority_q1;
    sc_signal< sc_lv<8> > queueDataHeap_data_address0;
    sc_signal< sc_logic > queueDataHeap_data_ce0;
    sc_signal< sc_logic > queueDataHeap_data_we0;
    sc_signal< sc_lv<32> > queueDataHeap_data_d0;
    sc_signal< sc_lv<32> > queueDataHeap_data_q0;
    sc_signal< sc_lv<8> > queueDataHeap_data_address1;
    sc_signal< sc_logic > queueDataHeap_data_ce1;
    sc_signal< sc_logic > queueDataHeap_data_we1;
    sc_signal< sc_lv<32> > queueDataHeap_data_d1;
    sc_signal< sc_lv<32> > queueDataHeap_data_q1;
    sc_signal< sc_lv<32> > inData_data_cast_fu_181_p1;
    sc_signal< sc_lv<32> > inData_data_cast_reg_406;
    sc_signal< sc_lv<32> > inData_priority_cast_fu_186_p1;
    sc_signal< sc_lv<32> > inData_priority_cast_reg_411;
    sc_signal< sc_lv<32> > size_load_reg_416;
    sc_signal< sc_lv<1> > isPush_read_read_fu_58_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_195_p2;
    sc_signal< sc_lv<32> > n_assign_fu_213_p2;
    sc_signal< sc_lv<32> > n_assign_reg_438;
    sc_signal< sc_lv<1> > tmp_fu_207_p2;
    sc_signal< sc_lv<32> > i_fu_273_p3;
    sc_signal< sc_lv<32> > queueDataHeap_priority_load_reg_449;
    sc_signal< sc_lv<32> > queueDataHeap_data_load_reg_454;
    sc_signal< sc_lv<32> > n_assign_1_fu_281_p2;
    sc_signal< sc_lv<32> > n_assign_1_reg_459;
    sc_signal< sc_lv<32> > i_9_fu_333_p3;
    sc_signal< sc_lv<32> > i_11_cast_fu_357_p1;
    sc_signal< sc_lv<32> > i_11_cast_reg_473;
    sc_signal< sc_lv<1> > tmp_i_i1_fu_341_p2;
    sc_signal< sc_lv<32> > i_10_cast_fu_382_p1;
    sc_signal< sc_lv<32> > i_10_cast_reg_481;
    sc_signal< sc_lv<1> > tmp_i_i_fu_366_p2;
    sc_signal< sc_logic > grp_min_heapify_fu_169_ap_start;
    sc_signal< sc_logic > grp_min_heapify_fu_169_ap_done;
    sc_signal< sc_logic > grp_min_heapify_fu_169_ap_idle;
    sc_signal< sc_logic > grp_min_heapify_fu_169_ap_ready;
    sc_signal< sc_lv<8> > grp_min_heapify_fu_169_a_priority_address0;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_priority_ce0;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_priority_we0;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_priority_d0;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_priority_q0;
    sc_signal< sc_lv<8> > grp_min_heapify_fu_169_a_priority_address1;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_priority_ce1;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_priority_we1;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_priority_d1;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_priority_q1;
    sc_signal< sc_lv<8> > grp_min_heapify_fu_169_a_data_address0;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_data_ce0;
    sc_signal< sc_logic > grp_min_heapify_fu_169_a_data_we0;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_data_d0;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_a_data_q0;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_i;
    sc_signal< sc_lv<32> > grp_min_heapify_fu_169_n;
    sc_signal< sc_lv<32> > i9_i_i1_reg_116;
    sc_signal< sc_lv<32> > i9_i_i_reg_126;
    sc_signal< sc_lv<32> > outData_priority_2_reg_136;
    sc_signal< sc_lv<32> > outData_data_2_reg_152;
    sc_signal< sc_logic > grp_min_heapify_fu_169_ap_start_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_i1_fu_201_p1;
    sc_signal< sc_lv<64> > tmp_i_fu_219_p1;
    sc_signal< sc_lv<31> > p_neg_i_i_cast_fu_233_p4;
    sc_signal< sc_lv<31> > p_lshr_i_i_fu_243_p2;
    sc_signal< sc_lv<32> > p_lshr_i_i_cast_fu_249_p1;
    sc_signal< sc_lv<31> > p_lshr_f_i_i_fu_259_p4;
    sc_signal< sc_lv<1> > tmp_19_fu_225_p3;
    sc_signal< sc_lv<32> > p_neg_t_i_i_fu_253_p2;
    sc_signal< sc_lv<32> > tmp_16_fu_269_p1;
    sc_signal< sc_lv<32> > p_neg_i_i7_fu_294_p2;
    sc_signal< sc_lv<31> > p_lshr_i_i8_fu_299_p4;
    sc_signal< sc_lv<32> > tmp_17_fu_309_p1;
    sc_signal< sc_lv<31> > p_lshr_f_i_i1_fu_319_p4;
    sc_signal< sc_lv<1> > tmp_20_fu_286_p3;
    sc_signal< sc_lv<32> > p_neg_t_i_i9_fu_313_p2;
    sc_signal< sc_lv<32> > tmp_18_fu_329_p1;
    sc_signal< sc_lv<31> > tmp_22_fu_347_p1;
    sc_signal< sc_lv<31> > i_11_fu_351_p2;
    sc_signal< sc_lv<31> > tmp_21_fu_372_p1;
    sc_signal< sc_lv<31> > i_10_fu_376_p2;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_st3_fsm_2;
    static const sc_lv<3> ap_ST_st4_fsm_3;
    static const sc_lv<3> ap_ST_st5_fsm_4;
    static const sc_lv<3> ap_ST_st6_fsm_5;
    static const sc_lv<3> ap_ST_st7_fsm_6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_7FFFFFFF;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_C8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_7FFFFFFF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_grp_min_heapify_fu_169_a_data_q0();
    void thread_grp_min_heapify_fu_169_a_priority_q0();
    void thread_grp_min_heapify_fu_169_a_priority_q1();
    void thread_grp_min_heapify_fu_169_ap_start();
    void thread_grp_min_heapify_fu_169_i();
    void thread_grp_min_heapify_fu_169_n();
    void thread_i_10_cast_fu_382_p1();
    void thread_i_10_fu_376_p2();
    void thread_i_11_cast_fu_357_p1();
    void thread_i_11_fu_351_p2();
    void thread_i_9_fu_333_p3();
    void thread_i_fu_273_p3();
    void thread_inData_data_cast_fu_181_p1();
    void thread_inData_priority_cast_fu_186_p1();
    void thread_isPush_read_read_fu_58_p2();
    void thread_n_assign_1_fu_281_p2();
    void thread_n_assign_fu_213_p2();
    void thread_p_lshr_f_i_i1_fu_319_p4();
    void thread_p_lshr_f_i_i_fu_259_p4();
    void thread_p_lshr_i_i8_fu_299_p4();
    void thread_p_lshr_i_i_cast_fu_249_p1();
    void thread_p_lshr_i_i_fu_243_p2();
    void thread_p_neg_i_i7_fu_294_p2();
    void thread_p_neg_i_i_cast_fu_233_p4();
    void thread_p_neg_t_i_i9_fu_313_p2();
    void thread_p_neg_t_i_i_fu_253_p2();
    void thread_queueDataHeap_data_address0();
    void thread_queueDataHeap_data_address1();
    void thread_queueDataHeap_data_ce0();
    void thread_queueDataHeap_data_ce1();
    void thread_queueDataHeap_data_d0();
    void thread_queueDataHeap_data_d1();
    void thread_queueDataHeap_data_we0();
    void thread_queueDataHeap_data_we1();
    void thread_queueDataHeap_priority_address0();
    void thread_queueDataHeap_priority_address1();
    void thread_queueDataHeap_priority_ce0();
    void thread_queueDataHeap_priority_ce1();
    void thread_queueDataHeap_priority_d0();
    void thread_queueDataHeap_priority_d1();
    void thread_queueDataHeap_priority_we0();
    void thread_queueDataHeap_priority_we1();
    void thread_tmp_16_fu_269_p1();
    void thread_tmp_17_fu_309_p1();
    void thread_tmp_18_fu_329_p1();
    void thread_tmp_19_fu_225_p3();
    void thread_tmp_20_fu_286_p3();
    void thread_tmp_21_fu_372_p1();
    void thread_tmp_22_fu_347_p1();
    void thread_tmp_fu_207_p2();
    void thread_tmp_i1_fu_201_p1();
    void thread_tmp_i_fu_219_p1();
    void thread_tmp_i_i1_fu_341_p2();
    void thread_tmp_i_i_fu_366_p2();
    void thread_tmp_s_fu_195_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

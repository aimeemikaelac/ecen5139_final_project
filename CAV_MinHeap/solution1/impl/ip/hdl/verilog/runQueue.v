// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="runQueue,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.640000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module runQueue (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b00;
parameter    ap_ST_st2_fsm_1 = 2'b1;
parameter    ap_ST_st3_fsm_2 = 2'b10;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv14_0 = 14'b00000000000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv14_2710 = 14'b10011100010000;
parameter    ap_const_lv14_1 = 14'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg   [1:0] ap_CS_fsm = 2'b00;
wire   [13:0] i_1_fu_84_p2;
reg   [13:0] i_1_reg_99;
wire   [0:0] result_1_fu_90_p2;
wire    grp_runTest_fu_66_ap_done;
wire    grp_runTest_fu_66_ap_start;
wire    grp_runTest_fu_66_ap_idle;
wire    grp_runTest_fu_66_ap_ready;
wire   [0:0] grp_runTest_fu_66_ap_return;
reg   [0:0] result_reg_42;
reg   [13:0] i_reg_54;
reg    grp_runTest_fu_66_ap_start_ap_start_reg = 1'b0;
wire   [0:0] exitcond_fu_78_p2;
reg   [1:0] ap_NS_fsm;


runTest grp_runTest_fu_66(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_runTest_fu_66_ap_start ),
    .ap_done( grp_runTest_fu_66_ap_done ),
    .ap_idle( grp_runTest_fu_66_ap_idle ),
    .ap_ready( grp_runTest_fu_66_ap_ready ),
    .ap_return( grp_runTest_fu_66_ap_return )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// grp_runTest_fu_66_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_runTest_fu_66_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_runTest_fu_66_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (exitcond_fu_78_p2 == ap_const_lv1_0))) begin
            grp_runTest_fu_66_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_runTest_fu_66_ap_ready)) begin
            grp_runTest_fu_66_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_runTest_fu_66_ap_done))) begin
        i_reg_54 <= i_1_reg_99;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_54 <= ap_const_lv14_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_runTest_fu_66_ap_done))) begin
        result_reg_42 <= result_1_fu_90_p2;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        result_reg_42 <= ap_const_lv1_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        i_1_reg_99 <= i_1_fu_84_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or exitcond_fu_78_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_78_p2 == ap_const_lv1_0))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or exitcond_fu_78_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_78_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or grp_runTest_fu_66_ap_done or exitcond_fu_78_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            if (~(exitcond_fu_78_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        ap_ST_st3_fsm_2 : 
            if (~(ap_const_logic_0 == grp_runTest_fu_66_ap_done)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign ap_return = result_reg_42;
assign exitcond_fu_78_p2 = (i_reg_54 == ap_const_lv14_2710? 1'b1: 1'b0);
assign grp_runTest_fu_66_ap_start = grp_runTest_fu_66_ap_start_ap_start_reg;
assign i_1_fu_84_p2 = (i_reg_54 + ap_const_lv14_1);
assign result_1_fu_90_p2 = (grp_runTest_fu_66_ap_return & result_reg_42);


endmodule //runQueue


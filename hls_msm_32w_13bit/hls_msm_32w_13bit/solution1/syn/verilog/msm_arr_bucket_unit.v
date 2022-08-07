// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module msm_arr_bucket_unit (
        BFIFO_1176_dout,
        BFIFO_1176_empty_n,
        BFIFO_1176_read,
        B_i_address0,
        B_i_ce0,
        B_i_d0,
        B_i_q0,
        B_i_we0,
        B_i_address1,
        B_i_ce1,
        B_i_d1,
        B_i_q1,
        B_i_we1,
        num_padd_ops,
        count_B_address0,
        count_B_ce0,
        count_B_d0,
        count_B_q0,
        count_B_we0,
        count_B_address1,
        count_B_ce1,
        count_B_d1,
        count_B_q1,
        count_B_we1,
        ap_clk,
        ap_rst,
        num_padd_ops_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [42:0] BFIFO_1176_dout;
input   BFIFO_1176_empty_n;
output   BFIFO_1176_read;
output  [4:0] B_i_address0;
output   B_i_ce0;
output  [31:0] B_i_d0;
input  [31:0] B_i_q0;
output   B_i_we0;
output  [4:0] B_i_address1;
output   B_i_ce1;
output  [31:0] B_i_d1;
input  [31:0] B_i_q1;
output   B_i_we1;
input  [12:0] num_padd_ops;
output  [3:0] count_B_address0;
output   count_B_ce0;
output  [12:0] count_B_d0;
input  [12:0] count_B_q0;
output   count_B_we0;
output  [3:0] count_B_address1;
output   count_B_ce1;
output  [12:0] count_B_d1;
input  [12:0] count_B_q1;
output   count_B_we1;
input   ap_clk;
input   ap_rst;
input   num_padd_ops_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    bucket_unit_Loop_1_proc15_U0_ap_start;
wire    bucket_unit_Loop_1_proc15_U0_ap_done;
wire    bucket_unit_Loop_1_proc15_U0_ap_continue;
wire    bucket_unit_Loop_1_proc15_U0_ap_idle;
wire    bucket_unit_Loop_1_proc15_U0_ap_ready;
wire    bucket_unit_Loop_1_proc15_U0_start_out;
wire    bucket_unit_Loop_1_proc15_U0_start_write;
wire   [4:0] bucket_unit_Loop_1_proc15_U0_B_i_address0;
wire    bucket_unit_Loop_1_proc15_U0_B_i_ce0;
wire    bucket_unit_Loop_1_proc15_U0_B_i_we0;
wire   [31:0] bucket_unit_Loop_1_proc15_U0_B_i_d0;
wire   [4:0] bucket_unit_Loop_1_proc15_U0_B_i_address1;
wire    bucket_unit_Loop_1_proc15_U0_B_i_ce1;
wire    bucket_unit_Loop_1_proc15_U0_B_i_we1;
wire   [31:0] bucket_unit_Loop_1_proc15_U0_B_i_d1;
wire    bucket_unit_Loop_1_proc15_U0_BFIFO_1176_read;
wire   [3:0] bucket_unit_Loop_1_proc15_U0_count_B_address0;
wire    bucket_unit_Loop_1_proc15_U0_count_B_ce0;
wire    bucket_unit_Loop_1_proc15_U0_BFIFO_2_read;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_0_din;
wire    bucket_unit_Loop_1_proc15_U0_B_0_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_1_din;
wire    bucket_unit_Loop_1_proc15_U0_B_1_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_2_din;
wire    bucket_unit_Loop_1_proc15_U0_B_2_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_3_din;
wire    bucket_unit_Loop_1_proc15_U0_B_3_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_4_din;
wire    bucket_unit_Loop_1_proc15_U0_B_4_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_5_din;
wire    bucket_unit_Loop_1_proc15_U0_B_5_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_6_din;
wire    bucket_unit_Loop_1_proc15_U0_B_6_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_7_din;
wire    bucket_unit_Loop_1_proc15_U0_B_7_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_8_din;
wire    bucket_unit_Loop_1_proc15_U0_B_8_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_9_din;
wire    bucket_unit_Loop_1_proc15_U0_B_9_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_10_din;
wire    bucket_unit_Loop_1_proc15_U0_B_10_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_11_din;
wire    bucket_unit_Loop_1_proc15_U0_B_11_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_12_din;
wire    bucket_unit_Loop_1_proc15_U0_B_12_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_13_din;
wire    bucket_unit_Loop_1_proc15_U0_B_13_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_14_din;
wire    bucket_unit_Loop_1_proc15_U0_B_14_write;
wire   [38:0] bucket_unit_Loop_1_proc15_U0_B_15_din;
wire    bucket_unit_Loop_1_proc15_U0_B_15_write;
wire   [42:0] bucket_unit_Loop_1_proc15_U0_OVFIFO_din;
wire    bucket_unit_Loop_1_proc15_U0_OVFIFO_write;
wire   [12:0] bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_din;
wire    bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_write;
wire    ap_sync_continue;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_start;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_done;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_continue;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_idle;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_ready;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_start_out;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_start_write;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_read;
wire   [81:0] bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_din;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_write;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_0_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_OVFIFO_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_1_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_2_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_3_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_4_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_5_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_6_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_7_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_8_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_9_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_10_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_11_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_12_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_13_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_14_read;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_15_read;
wire   [12:0] bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_din;
wire    bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_write;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_start;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_done;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_continue;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_idle;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_ready;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_num_padd_ops_read;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_CFIFO_read;
wire   [42:0] bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_din;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_write;
wire    BFIFO_2_full_n;
wire   [42:0] BFIFO_2_dout;
wire    BFIFO_2_empty_n;
wire    B_0_full_n;
wire   [38:0] B_0_dout;
wire    B_0_empty_n;
wire    B_1_full_n;
wire   [38:0] B_1_dout;
wire    B_1_empty_n;
wire    B_2_full_n;
wire   [38:0] B_2_dout;
wire    B_2_empty_n;
wire    B_3_full_n;
wire   [38:0] B_3_dout;
wire    B_3_empty_n;
wire    B_4_full_n;
wire   [38:0] B_4_dout;
wire    B_4_empty_n;
wire    B_5_full_n;
wire   [38:0] B_5_dout;
wire    B_5_empty_n;
wire    B_6_full_n;
wire   [38:0] B_6_dout;
wire    B_6_empty_n;
wire    B_7_full_n;
wire   [38:0] B_7_dout;
wire    B_7_empty_n;
wire    B_8_full_n;
wire   [38:0] B_8_dout;
wire    B_8_empty_n;
wire    B_9_full_n;
wire   [38:0] B_9_dout;
wire    B_9_empty_n;
wire    B_10_full_n;
wire   [38:0] B_10_dout;
wire    B_10_empty_n;
wire    B_11_full_n;
wire   [38:0] B_11_dout;
wire    B_11_empty_n;
wire    B_12_full_n;
wire   [38:0] B_12_dout;
wire    B_12_empty_n;
wire    B_13_full_n;
wire   [38:0] B_13_dout;
wire    B_13_empty_n;
wire    B_14_full_n;
wire   [38:0] B_14_dout;
wire    B_14_empty_n;
wire    B_15_full_n;
wire   [38:0] B_15_dout;
wire    B_15_empty_n;
wire    OVFIFO_full_n;
wire   [42:0] OVFIFO_dout;
wire    OVFIFO_empty_n;
wire    num_padd_ops_c_full_n;
wire   [12:0] num_padd_ops_c_dout;
wire    num_padd_ops_c_empty_n;
wire    CFIFO_full_n;
wire   [81:0] CFIFO_dout;
wire    CFIFO_empty_n;
wire    num_padd_ops_c322_full_n;
wire   [12:0] num_padd_ops_c322_dout;
wire    num_padd_ops_c322_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_din;
wire    start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_full_n;
wire   [0:0] start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_dout;
wire    start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_empty_n;
wire   [0:0] start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_din;
wire    start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_full_n;
wire   [0:0] start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_dout;
wire    start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_empty_n;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_start_full_n;
wire    bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_start_write;

msm_arr_bucket_unit_Loop_1_proc15 bucket_unit_Loop_1_proc15_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(bucket_unit_Loop_1_proc15_U0_ap_start),
    .start_full_n(start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_full_n),
    .ap_done(bucket_unit_Loop_1_proc15_U0_ap_done),
    .ap_continue(bucket_unit_Loop_1_proc15_U0_ap_continue),
    .ap_idle(bucket_unit_Loop_1_proc15_U0_ap_idle),
    .ap_ready(bucket_unit_Loop_1_proc15_U0_ap_ready),
    .start_out(bucket_unit_Loop_1_proc15_U0_start_out),
    .start_write(bucket_unit_Loop_1_proc15_U0_start_write),
    .num_padd_ops(num_padd_ops),
    .B_i_address0(bucket_unit_Loop_1_proc15_U0_B_i_address0),
    .B_i_ce0(bucket_unit_Loop_1_proc15_U0_B_i_ce0),
    .B_i_we0(bucket_unit_Loop_1_proc15_U0_B_i_we0),
    .B_i_d0(bucket_unit_Loop_1_proc15_U0_B_i_d0),
    .B_i_address1(bucket_unit_Loop_1_proc15_U0_B_i_address1),
    .B_i_ce1(bucket_unit_Loop_1_proc15_U0_B_i_ce1),
    .B_i_we1(bucket_unit_Loop_1_proc15_U0_B_i_we1),
    .B_i_d1(bucket_unit_Loop_1_proc15_U0_B_i_d1),
    .BFIFO_1176_dout(BFIFO_1176_dout),
    .BFIFO_1176_empty_n(BFIFO_1176_empty_n),
    .BFIFO_1176_read(bucket_unit_Loop_1_proc15_U0_BFIFO_1176_read),
    .count_B_address0(bucket_unit_Loop_1_proc15_U0_count_B_address0),
    .count_B_ce0(bucket_unit_Loop_1_proc15_U0_count_B_ce0),
    .count_B_q0(count_B_q0),
    .BFIFO_2_dout(BFIFO_2_dout),
    .BFIFO_2_empty_n(BFIFO_2_empty_n),
    .BFIFO_2_read(bucket_unit_Loop_1_proc15_U0_BFIFO_2_read),
    .B_0_din(bucket_unit_Loop_1_proc15_U0_B_0_din),
    .B_0_full_n(B_0_full_n),
    .B_0_write(bucket_unit_Loop_1_proc15_U0_B_0_write),
    .B_1_din(bucket_unit_Loop_1_proc15_U0_B_1_din),
    .B_1_full_n(B_1_full_n),
    .B_1_write(bucket_unit_Loop_1_proc15_U0_B_1_write),
    .B_2_din(bucket_unit_Loop_1_proc15_U0_B_2_din),
    .B_2_full_n(B_2_full_n),
    .B_2_write(bucket_unit_Loop_1_proc15_U0_B_2_write),
    .B_3_din(bucket_unit_Loop_1_proc15_U0_B_3_din),
    .B_3_full_n(B_3_full_n),
    .B_3_write(bucket_unit_Loop_1_proc15_U0_B_3_write),
    .B_4_din(bucket_unit_Loop_1_proc15_U0_B_4_din),
    .B_4_full_n(B_4_full_n),
    .B_4_write(bucket_unit_Loop_1_proc15_U0_B_4_write),
    .B_5_din(bucket_unit_Loop_1_proc15_U0_B_5_din),
    .B_5_full_n(B_5_full_n),
    .B_5_write(bucket_unit_Loop_1_proc15_U0_B_5_write),
    .B_6_din(bucket_unit_Loop_1_proc15_U0_B_6_din),
    .B_6_full_n(B_6_full_n),
    .B_6_write(bucket_unit_Loop_1_proc15_U0_B_6_write),
    .B_7_din(bucket_unit_Loop_1_proc15_U0_B_7_din),
    .B_7_full_n(B_7_full_n),
    .B_7_write(bucket_unit_Loop_1_proc15_U0_B_7_write),
    .B_8_din(bucket_unit_Loop_1_proc15_U0_B_8_din),
    .B_8_full_n(B_8_full_n),
    .B_8_write(bucket_unit_Loop_1_proc15_U0_B_8_write),
    .B_9_din(bucket_unit_Loop_1_proc15_U0_B_9_din),
    .B_9_full_n(B_9_full_n),
    .B_9_write(bucket_unit_Loop_1_proc15_U0_B_9_write),
    .B_10_din(bucket_unit_Loop_1_proc15_U0_B_10_din),
    .B_10_full_n(B_10_full_n),
    .B_10_write(bucket_unit_Loop_1_proc15_U0_B_10_write),
    .B_11_din(bucket_unit_Loop_1_proc15_U0_B_11_din),
    .B_11_full_n(B_11_full_n),
    .B_11_write(bucket_unit_Loop_1_proc15_U0_B_11_write),
    .B_12_din(bucket_unit_Loop_1_proc15_U0_B_12_din),
    .B_12_full_n(B_12_full_n),
    .B_12_write(bucket_unit_Loop_1_proc15_U0_B_12_write),
    .B_13_din(bucket_unit_Loop_1_proc15_U0_B_13_din),
    .B_13_full_n(B_13_full_n),
    .B_13_write(bucket_unit_Loop_1_proc15_U0_B_13_write),
    .B_14_din(bucket_unit_Loop_1_proc15_U0_B_14_din),
    .B_14_full_n(B_14_full_n),
    .B_14_write(bucket_unit_Loop_1_proc15_U0_B_14_write),
    .B_15_din(bucket_unit_Loop_1_proc15_U0_B_15_din),
    .B_15_full_n(B_15_full_n),
    .B_15_write(bucket_unit_Loop_1_proc15_U0_B_15_write),
    .OVFIFO_din(bucket_unit_Loop_1_proc15_U0_OVFIFO_din),
    .OVFIFO_full_n(OVFIFO_full_n),
    .OVFIFO_write(bucket_unit_Loop_1_proc15_U0_OVFIFO_write),
    .num_padd_ops_out_din(bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_din),
    .num_padd_ops_out_full_n(num_padd_ops_c_full_n),
    .num_padd_ops_out_write(bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_write)
);

msm_arr_bucket_unit_Loop_VITIS_LOOP_430_2_proc16 bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_start),
    .start_full_n(start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_full_n),
    .ap_done(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_done),
    .ap_continue(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_continue),
    .ap_idle(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_idle),
    .ap_ready(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_ready),
    .start_out(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_start_out),
    .start_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_start_write),
    .num_padd_ops_dout(num_padd_ops_c_dout),
    .num_padd_ops_empty_n(num_padd_ops_c_empty_n),
    .num_padd_ops_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_read),
    .CFIFO_din(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_din),
    .CFIFO_full_n(CFIFO_full_n),
    .CFIFO_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_write),
    .B_0_dout(B_0_dout),
    .B_0_empty_n(B_0_empty_n),
    .B_0_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_0_read),
    .OVFIFO_dout(OVFIFO_dout),
    .OVFIFO_empty_n(OVFIFO_empty_n),
    .OVFIFO_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_OVFIFO_read),
    .B_1_dout(B_1_dout),
    .B_1_empty_n(B_1_empty_n),
    .B_1_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_1_read),
    .B_2_dout(B_2_dout),
    .B_2_empty_n(B_2_empty_n),
    .B_2_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_2_read),
    .B_3_dout(B_3_dout),
    .B_3_empty_n(B_3_empty_n),
    .B_3_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_3_read),
    .B_4_dout(B_4_dout),
    .B_4_empty_n(B_4_empty_n),
    .B_4_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_4_read),
    .B_5_dout(B_5_dout),
    .B_5_empty_n(B_5_empty_n),
    .B_5_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_5_read),
    .B_6_dout(B_6_dout),
    .B_6_empty_n(B_6_empty_n),
    .B_6_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_6_read),
    .B_7_dout(B_7_dout),
    .B_7_empty_n(B_7_empty_n),
    .B_7_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_7_read),
    .B_8_dout(B_8_dout),
    .B_8_empty_n(B_8_empty_n),
    .B_8_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_8_read),
    .B_9_dout(B_9_dout),
    .B_9_empty_n(B_9_empty_n),
    .B_9_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_9_read),
    .B_10_dout(B_10_dout),
    .B_10_empty_n(B_10_empty_n),
    .B_10_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_10_read),
    .B_11_dout(B_11_dout),
    .B_11_empty_n(B_11_empty_n),
    .B_11_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_11_read),
    .B_12_dout(B_12_dout),
    .B_12_empty_n(B_12_empty_n),
    .B_12_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_12_read),
    .B_13_dout(B_13_dout),
    .B_13_empty_n(B_13_empty_n),
    .B_13_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_13_read),
    .B_14_dout(B_14_dout),
    .B_14_empty_n(B_14_empty_n),
    .B_14_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_14_read),
    .B_15_dout(B_15_dout),
    .B_15_empty_n(B_15_empty_n),
    .B_15_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_15_read),
    .num_padd_ops_out_din(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_din),
    .num_padd_ops_out_full_n(num_padd_ops_c322_full_n),
    .num_padd_ops_out_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_write)
);

msm_arr_bucket_unit_Loop_VITIS_LOOP_440_3_proc17 bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_start),
    .ap_done(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_done),
    .ap_continue(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_continue),
    .ap_idle(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_idle),
    .ap_ready(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_ready),
    .num_padd_ops_dout(num_padd_ops_c322_dout),
    .num_padd_ops_empty_n(num_padd_ops_c322_empty_n),
    .num_padd_ops_read(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_num_padd_ops_read),
    .CFIFO_dout(CFIFO_dout),
    .CFIFO_empty_n(CFIFO_empty_n),
    .CFIFO_read(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_CFIFO_read),
    .BFIFO_2_din(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_din),
    .BFIFO_2_full_n(BFIFO_2_full_n),
    .BFIFO_2_write(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_write)
);

msm_arr_fifo_w43_d15_S BFIFO_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_din),
    .if_full_n(BFIFO_2_full_n),
    .if_write(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_BFIFO_2_write),
    .if_dout(BFIFO_2_dout),
    .if_empty_n(BFIFO_2_empty_n),
    .if_read(bucket_unit_Loop_1_proc15_U0_BFIFO_2_read)
);

msm_arr_fifo_w39_d1_S B_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_0_din),
    .if_full_n(B_0_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_0_write),
    .if_dout(B_0_dout),
    .if_empty_n(B_0_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_0_read)
);

msm_arr_fifo_w39_d1_S B_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_1_din),
    .if_full_n(B_1_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_1_write),
    .if_dout(B_1_dout),
    .if_empty_n(B_1_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_1_read)
);

msm_arr_fifo_w39_d1_S B_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_2_din),
    .if_full_n(B_2_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_2_write),
    .if_dout(B_2_dout),
    .if_empty_n(B_2_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_2_read)
);

msm_arr_fifo_w39_d1_S B_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_3_din),
    .if_full_n(B_3_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_3_write),
    .if_dout(B_3_dout),
    .if_empty_n(B_3_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_3_read)
);

msm_arr_fifo_w39_d1_S B_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_4_din),
    .if_full_n(B_4_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_4_write),
    .if_dout(B_4_dout),
    .if_empty_n(B_4_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_4_read)
);

msm_arr_fifo_w39_d1_S B_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_5_din),
    .if_full_n(B_5_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_5_write),
    .if_dout(B_5_dout),
    .if_empty_n(B_5_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_5_read)
);

msm_arr_fifo_w39_d1_S B_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_6_din),
    .if_full_n(B_6_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_6_write),
    .if_dout(B_6_dout),
    .if_empty_n(B_6_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_6_read)
);

msm_arr_fifo_w39_d1_S B_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_7_din),
    .if_full_n(B_7_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_7_write),
    .if_dout(B_7_dout),
    .if_empty_n(B_7_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_7_read)
);

msm_arr_fifo_w39_d1_S B_8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_8_din),
    .if_full_n(B_8_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_8_write),
    .if_dout(B_8_dout),
    .if_empty_n(B_8_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_8_read)
);

msm_arr_fifo_w39_d1_S B_9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_9_din),
    .if_full_n(B_9_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_9_write),
    .if_dout(B_9_dout),
    .if_empty_n(B_9_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_9_read)
);

msm_arr_fifo_w39_d1_S B_10_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_10_din),
    .if_full_n(B_10_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_10_write),
    .if_dout(B_10_dout),
    .if_empty_n(B_10_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_10_read)
);

msm_arr_fifo_w39_d1_S B_11_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_11_din),
    .if_full_n(B_11_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_11_write),
    .if_dout(B_11_dout),
    .if_empty_n(B_11_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_11_read)
);

msm_arr_fifo_w39_d1_S B_12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_12_din),
    .if_full_n(B_12_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_12_write),
    .if_dout(B_12_dout),
    .if_empty_n(B_12_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_12_read)
);

msm_arr_fifo_w39_d1_S B_13_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_13_din),
    .if_full_n(B_13_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_13_write),
    .if_dout(B_13_dout),
    .if_empty_n(B_13_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_13_read)
);

msm_arr_fifo_w39_d1_S B_14_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_14_din),
    .if_full_n(B_14_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_14_write),
    .if_dout(B_14_dout),
    .if_empty_n(B_14_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_14_read)
);

msm_arr_fifo_w39_d1_S B_15_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_B_15_din),
    .if_full_n(B_15_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_B_15_write),
    .if_dout(B_15_dout),
    .if_empty_n(B_15_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_B_15_read)
);

msm_arr_fifo_w43_d15_S OVFIFO_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_OVFIFO_din),
    .if_full_n(OVFIFO_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_OVFIFO_write),
    .if_dout(OVFIFO_dout),
    .if_empty_n(OVFIFO_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_OVFIFO_read)
);

msm_arr_fifo_w13_d2_S num_padd_ops_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_din),
    .if_full_n(num_padd_ops_c_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_num_padd_ops_out_write),
    .if_dout(num_padd_ops_c_dout),
    .if_empty_n(num_padd_ops_c_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_read)
);

msm_arr_fifo_w82_d48_A CFIFO_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_din),
    .if_full_n(CFIFO_full_n),
    .if_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_CFIFO_write),
    .if_dout(CFIFO_dout),
    .if_empty_n(CFIFO_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_CFIFO_read)
);

msm_arr_fifo_w13_d2_S num_padd_ops_c322_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_din),
    .if_full_n(num_padd_ops_c322_full_n),
    .if_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_num_padd_ops_out_write),
    .if_dout(num_padd_ops_c322_dout),
    .if_empty_n(num_padd_ops_c322_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_num_padd_ops_read)
);

msm_arr_start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0 start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_din),
    .if_full_n(start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_full_n),
    .if_write(bucket_unit_Loop_1_proc15_U0_start_write),
    .if_dout(start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_dout),
    .if_empty_n(start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_ready)
);

msm_arr_start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0 start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_din),
    .if_full_n(start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_full_n),
    .if_write(bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_start_write),
    .if_dout(start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_dout),
    .if_empty_n(start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_empty_n),
    .if_read(bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_ready)
);

assign BFIFO_1176_read = bucket_unit_Loop_1_proc15_U0_BFIFO_1176_read;

assign B_i_address0 = bucket_unit_Loop_1_proc15_U0_B_i_address0;

assign B_i_address1 = bucket_unit_Loop_1_proc15_U0_B_i_address1;

assign B_i_ce0 = bucket_unit_Loop_1_proc15_U0_B_i_ce0;

assign B_i_ce1 = bucket_unit_Loop_1_proc15_U0_B_i_ce1;

assign B_i_d0 = bucket_unit_Loop_1_proc15_U0_B_i_d0;

assign B_i_d1 = bucket_unit_Loop_1_proc15_U0_B_i_d1;

assign B_i_we0 = bucket_unit_Loop_1_proc15_U0_B_i_we0;

assign B_i_we1 = bucket_unit_Loop_1_proc15_U0_B_i_we1;

assign ap_done = ap_sync_done;

assign ap_idle = (bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_idle & bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_idle & bucket_unit_Loop_1_proc15_U0_ap_idle);

assign ap_ready = bucket_unit_Loop_1_proc15_U0_ap_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_done & bucket_unit_Loop_1_proc15_U0_ap_done);

assign ap_sync_ready = bucket_unit_Loop_1_proc15_U0_ap_ready;

assign bucket_unit_Loop_1_proc15_U0_ap_continue = ap_sync_continue;

assign bucket_unit_Loop_1_proc15_U0_ap_start = ap_start;

assign bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_continue = 1'b1;

assign bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_ap_start = start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_empty_n;

assign bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_continue = ap_sync_continue;

assign bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_ap_start = start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_empty_n;

assign bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_start_full_n = 1'b1;

assign bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_start_write = 1'b0;

assign count_B_address0 = bucket_unit_Loop_1_proc15_U0_count_B_address0;

assign count_B_address1 = 4'd0;

assign count_B_ce0 = bucket_unit_Loop_1_proc15_U0_count_B_ce0;

assign count_B_ce1 = 1'b0;

assign count_B_d0 = 13'd0;

assign count_B_d1 = 13'd0;

assign count_B_we0 = 1'b0;

assign count_B_we1 = 1'b0;

assign start_for_bucket_unit_Loop_VITIS_LOOP_430_2_proc16_U0_din = 1'b1;

assign start_for_bucket_unit_Loop_VITIS_LOOP_440_3_proc17_U0_din = 1'b1;

endmodule //msm_arr_bucket_unit
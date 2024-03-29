// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="msm_arr_msm_arr,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.833250,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=8418,HLS_SYN_LUT=13965,HLS_VERSION=2020_2}" *)

module msm_arr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        P_arr_x_address0,
        P_arr_x_ce0,
        P_arr_x_q0,
        P_arr_y_address0,
        P_arr_y_ce0,
        P_arr_y_q0,
        P_arr_z_address0,
        P_arr_z_ce0,
        P_arr_z_q0,
        K_arr_address0,
        K_arr_ce0,
        K_arr_q0,
        B_i_address0,
        B_i_ce0,
        B_i_we0,
        B_i_d0,
        B_i_address1,
        B_i_ce1,
        B_i_we1,
        B_i_d1
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_pp0_stage0 = 15'd256;
parameter    ap_ST_fsm_state11 = 15'd512;
parameter    ap_ST_fsm_pp1_stage0 = 15'd1024;
parameter    ap_ST_fsm_state15 = 15'd2048;
parameter    ap_ST_fsm_pp2_stage0 = 15'd4096;
parameter    ap_ST_fsm_state18 = 15'd8192;
parameter    ap_ST_fsm_state19 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] P_arr_x_address0;
output   P_arr_x_ce0;
input  [15:0] P_arr_x_q0;
output  [6:0] P_arr_y_address0;
output   P_arr_y_ce0;
input  [15:0] P_arr_y_q0;
output  [6:0] P_arr_z_address0;
output   P_arr_z_ce0;
input  [15:0] P_arr_z_q0;
output  [6:0] K_arr_address0;
output   K_arr_ce0;
input  [15:0] K_arr_q0;
output  [4:0] B_i_address0;
output   B_i_ce0;
output   B_i_we0;
output  [31:0] B_i_d0;
output  [4:0] B_i_address1;
output   B_i_ce1;
output   B_i_we1;
output  [31:0] B_i_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg P_arr_x_ce0;
reg P_arr_y_ce0;
reg P_arr_z_ce0;
reg K_arr_ce0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] i_reg_387;
reg   [7:0] i_1_reg_398;
reg   [4:0] i_2_reg_409;
reg   [12:0] num_padd_ops_V_reg_420;
wire   [7:0] add_ln98_fu_444_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state9_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln98_fu_450_p2;
reg   [0:0] icmp_ln98_reg_636;
wire   [63:0] zext_ln98_fu_456_p1;
reg   [63:0] zext_ln98_reg_640;
wire   [7:0] add_ln108_fu_502_p2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state12_pp1_stage0_iter0;
wire    ap_block_state13_pp1_stage0_iter1;
wire   [42:0] BFIFO_1_din;
wire    BFIFO_1_full_n;
reg    BFIFO_1_write;
reg   [0:0] icmp_ln108_reg_671;
reg   [0:0] icmp_ln108_reg_671_pp1_iter1_reg;
reg    ap_block_state14_pp1_stage0_iter2;
reg    ap_enable_reg_pp1_iter2;
reg    ap_block_pp1_stage0_11001;
wire   [0:0] icmp_ln108_fu_508_p2;
wire   [63:0] zext_ln108_fu_514_p1;
reg   [63:0] zext_ln108_reg_675;
wire   [3:0] GBUFF_K_V_q0;
reg   [3:0] p_Val2_s_reg_685;
reg    ap_enable_reg_pp1_iter1;
reg   [3:0] count_B_V_addr_16_reg_690;
wire   [0:0] addr_cmp_fu_527_p2;
reg   [0:0] addr_cmp_reg_696;
wire   [0:0] icmp_ln117_fu_568_p2;
reg   [0:0] icmp_ln117_reg_706;
wire    ap_CS_fsm_pp2_stage0;
wire    ap_block_state16_pp2_stage0_iter0;
wire    ap_block_state17_pp2_stage0_iter1;
wire    ap_block_pp2_stage0_11001;
wire   [4:0] add_ln117_fu_574_p2;
reg    ap_enable_reg_pp2_iter0;
wire   [12:0] num_padd_ops_V_2_fu_603_p3;
reg    ap_enable_reg_pp2_iter1;
wire    ap_CS_fsm_state8;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_state11;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state12;
wire    ap_CS_fsm_state15;
wire    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state16;
reg   [6:0] GBUFF_P_V_address0;
reg    GBUFF_P_V_ce0;
reg    GBUFF_P_V_we0;
wire   [38:0] GBUFF_P_V_d0;
wire   [38:0] GBUFF_P_V_q0;
reg   [6:0] GBUFF_K_V_address0;
reg    GBUFF_K_V_ce0;
reg    GBUFF_K_V_we0;
wire   [3:0] GBUFF_K_V_d0;
reg   [3:0] count_B_V_address0;
reg    count_B_V_ce0;
reg    count_B_V_we0;
reg   [12:0] count_B_V_d0;
wire   [12:0] count_B_V_q0;
reg   [3:0] count_B_V_address1;
reg    count_B_V_ce1;
reg    count_B_V_we1;
wire   [12:0] count_B_V_q1;
wire    grp_bucket_unit_fu_432_BFIFO_1176_read;
wire   [4:0] grp_bucket_unit_fu_432_B_i_address0;
wire    grp_bucket_unit_fu_432_B_i_ce0;
wire   [31:0] grp_bucket_unit_fu_432_B_i_d0;
wire    grp_bucket_unit_fu_432_B_i_we0;
wire   [4:0] grp_bucket_unit_fu_432_B_i_address1;
wire    grp_bucket_unit_fu_432_B_i_ce1;
wire   [31:0] grp_bucket_unit_fu_432_B_i_d1;
wire    grp_bucket_unit_fu_432_B_i_we1;
wire   [3:0] grp_bucket_unit_fu_432_count_B_address0;
wire    grp_bucket_unit_fu_432_count_B_ce0;
wire   [12:0] grp_bucket_unit_fu_432_count_B_d0;
wire    grp_bucket_unit_fu_432_count_B_we0;
wire   [3:0] grp_bucket_unit_fu_432_count_B_address1;
wire    grp_bucket_unit_fu_432_count_B_ce1;
wire   [12:0] grp_bucket_unit_fu_432_count_B_d1;
wire    grp_bucket_unit_fu_432_count_B_we1;
wire    grp_bucket_unit_fu_432_ap_start;
wire    grp_bucket_unit_fu_432_ap_done;
wire    grp_bucket_unit_fu_432_ap_ready;
wire    grp_bucket_unit_fu_432_ap_idle;
reg    grp_bucket_unit_fu_432_ap_continue;
wire    ap_block_pp2_stage0;
reg    grp_bucket_unit_fu_432_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_sync_grp_bucket_unit_fu_432_ap_ready;
wire    ap_sync_grp_bucket_unit_fu_432_ap_done;
reg    ap_block_state19_on_subcall_done;
reg    ap_sync_reg_grp_bucket_unit_fu_432_ap_ready;
reg    ap_sync_reg_grp_bucket_unit_fu_432_ap_done;
wire   [42:0] BFIFO_1_dout;
wire    BFIFO_1_empty_n;
reg    BFIFO_1_read;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_block_pp0_stage0;
wire    ap_block_pp1_stage0;
wire   [63:0] zext_ln534_fu_519_p1;
wire   [63:0] zext_ln117_fu_580_p1;
reg   [63:0] reuse_addr_reg_fu_112;
reg   [12:0] reuse_reg_fu_116;
wire   [12:0] add_ln691_fu_548_p2;
reg    ap_block_pp1_stage0_01001;
wire   [12:0] v1_V_fu_472_p1;
wire   [12:0] v2_V_2_fu_468_p1;
wire   [12:0] v2_V_fu_464_p1;
wire   [12:0] reuse_select_fu_541_p3;
wire   [12:0] add_ln691_1_fu_591_p2;
wire   [0:0] icmp_ln874_fu_585_p2;
wire   [12:0] num_padd_ops_V_1_fu_597_p2;
reg   [14:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bucket_unit_fu_432_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_bucket_unit_fu_432_ap_ready = 1'b0;
#0 ap_sync_reg_grp_bucket_unit_fu_432_ap_done = 1'b0;
end

msm_arr_GBUFF_P_V #(
    .DataWidth( 39 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
GBUFF_P_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(GBUFF_P_V_address0),
    .ce0(GBUFF_P_V_ce0),
    .we0(GBUFF_P_V_we0),
    .d0(GBUFF_P_V_d0),
    .q0(GBUFF_P_V_q0)
);

msm_arr_GBUFF_K_V #(
    .DataWidth( 4 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
GBUFF_K_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(GBUFF_K_V_address0),
    .ce0(GBUFF_K_V_ce0),
    .we0(GBUFF_K_V_we0),
    .d0(GBUFF_K_V_d0),
    .q0(GBUFF_K_V_q0)
);

msm_arr_count_B_V #(
    .DataWidth( 13 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
count_B_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(count_B_V_address0),
    .ce0(count_B_V_ce0),
    .we0(count_B_V_we0),
    .d0(count_B_V_d0),
    .q0(count_B_V_q0),
    .address1(count_B_V_address1),
    .ce1(count_B_V_ce1),
    .we1(count_B_V_we1),
    .d1(13'd0),
    .q1(count_B_V_q1)
);

msm_arr_bucket_unit grp_bucket_unit_fu_432(
    .BFIFO_1176_dout(BFIFO_1_dout),
    .BFIFO_1176_empty_n(BFIFO_1_empty_n),
    .BFIFO_1176_read(grp_bucket_unit_fu_432_BFIFO_1176_read),
    .B_i_address0(grp_bucket_unit_fu_432_B_i_address0),
    .B_i_ce0(grp_bucket_unit_fu_432_B_i_ce0),
    .B_i_d0(grp_bucket_unit_fu_432_B_i_d0),
    .B_i_q0(32'd0),
    .B_i_we0(grp_bucket_unit_fu_432_B_i_we0),
    .B_i_address1(grp_bucket_unit_fu_432_B_i_address1),
    .B_i_ce1(grp_bucket_unit_fu_432_B_i_ce1),
    .B_i_d1(grp_bucket_unit_fu_432_B_i_d1),
    .B_i_q1(32'd0),
    .B_i_we1(grp_bucket_unit_fu_432_B_i_we1),
    .num_padd_ops(num_padd_ops_V_reg_420),
    .count_B_address0(grp_bucket_unit_fu_432_count_B_address0),
    .count_B_ce0(grp_bucket_unit_fu_432_count_B_ce0),
    .count_B_d0(grp_bucket_unit_fu_432_count_B_d0),
    .count_B_q0(count_B_V_q0),
    .count_B_we0(grp_bucket_unit_fu_432_count_B_we0),
    .count_B_address1(grp_bucket_unit_fu_432_count_B_address1),
    .count_B_ce1(grp_bucket_unit_fu_432_count_B_ce1),
    .count_B_d1(grp_bucket_unit_fu_432_count_B_d1),
    .count_B_q1(13'd0),
    .count_B_we1(grp_bucket_unit_fu_432_count_B_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .num_padd_ops_ap_vld(1'b1),
    .ap_start(grp_bucket_unit_fu_432_ap_start),
    .ap_done(grp_bucket_unit_fu_432_ap_done),
    .ap_ready(grp_bucket_unit_fu_432_ap_ready),
    .ap_idle(grp_bucket_unit_fu_432_ap_idle),
    .ap_continue(grp_bucket_unit_fu_432_ap_continue)
);

msm_arr_fifo_w43_d128_A BFIFO_1_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(BFIFO_1_din),
    .if_full_n(BFIFO_1_full_n),
    .if_write(BFIFO_1_write),
    .if_dout(BFIFO_1_dout),
    .if_empty_n(BFIFO_1_empty_n),
    .if_read(BFIFO_1_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state9))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state9))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state12) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state12)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state12);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state16) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state15)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state16))) begin
            ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state16);
        end else if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end else if ((1'b1 == ap_CS_fsm_state15)) begin
            ap_enable_reg_pp2_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_bucket_unit_fu_432_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_sync_reg_grp_bucket_unit_fu_432_ap_done <= 1'b0;
        end else if ((grp_bucket_unit_fu_432_ap_done == 1'b1)) begin
            ap_sync_reg_grp_bucket_unit_fu_432_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_bucket_unit_fu_432_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_sync_reg_grp_bucket_unit_fu_432_ap_ready <= 1'b0;
        end else if ((grp_bucket_unit_fu_432_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_bucket_unit_fu_432_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bucket_unit_fu_432_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state18) | ((ap_sync_grp_bucket_unit_fu_432_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state19)))) begin
            grp_bucket_unit_fu_432_ap_start_reg <= 1'b1;
        end else if ((grp_bucket_unit_fu_432_ap_ready == 1'b1)) begin
            grp_bucket_unit_fu_432_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_1_reg_398 <= 8'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln108_fu_508_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        i_1_reg_398 <= add_ln108_fu_502_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i_2_reg_409 <= 5'd1;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln117_fu_568_p2 == 1'd0))) begin
        i_2_reg_409 <= add_ln117_fu_574_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_387 <= 8'd0;
    end else if (((icmp_ln98_fu_450_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_387 <= add_ln98_fu_444_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        num_padd_ops_V_reg_420 <= 13'd0;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (icmp_ln117_reg_706 == 1'd0))) begin
        num_padd_ops_V_reg_420 <= num_padd_ops_V_2_fu_603_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        reuse_addr_reg_fu_112 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln108_reg_671 == 1'd0))) begin
        reuse_addr_reg_fu_112 <= zext_ln534_fu_519_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        reuse_reg_fu_116 <= 13'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0))) begin
        reuse_reg_fu_116 <= add_ln691_fu_548_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln108_reg_671 == 1'd0))) begin
        addr_cmp_reg_696 <= addr_cmp_fu_527_p2;
        count_B_V_addr_16_reg_690 <= zext_ln534_fu_519_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln108_reg_671 <= icmp_ln108_fu_508_p2;
        icmp_ln108_reg_671_pp1_iter1_reg <= icmp_ln108_reg_671;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        icmp_ln117_reg_706 <= icmp_ln117_fu_568_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln98_reg_636 <= icmp_ln98_fu_450_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln108_reg_671 == 1'd0))) begin
        p_Val2_s_reg_685 <= GBUFF_K_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln108_fu_508_p2 == 1'd0))) begin
        zext_ln108_reg_675[7 : 0] <= zext_ln108_fu_514_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln98_fu_450_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln98_reg_640[7 : 0] <= zext_ln98_fu_456_p1[7 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        BFIFO_1_read = grp_bucket_unit_fu_432_BFIFO_1176_read;
    end else begin
        BFIFO_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0))) begin
        BFIFO_1_write = 1'b1;
    end else begin
        BFIFO_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        GBUFF_K_V_address0 = zext_ln108_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        GBUFF_K_V_address0 = zext_ln98_reg_640;
    end else begin
        GBUFF_K_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
        GBUFF_K_V_ce0 = 1'b1;
    end else begin
        GBUFF_K_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln98_reg_636 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        GBUFF_K_V_we0 = 1'b1;
    end else begin
        GBUFF_K_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        GBUFF_P_V_address0 = zext_ln108_reg_675;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        GBUFF_P_V_address0 = zext_ln98_reg_640;
    end else begin
        GBUFF_P_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1)))) begin
        GBUFF_P_V_ce0 = 1'b1;
    end else begin
        GBUFF_P_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln98_reg_636 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        GBUFF_P_V_we0 = 1'b1;
    end else begin
        GBUFF_P_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        K_arr_ce0 = 1'b1;
    end else begin
        K_arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P_arr_x_ce0 = 1'b1;
    end else begin
        P_arr_x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P_arr_y_ce0 = 1'b1;
    end else begin
        P_arr_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P_arr_z_ce0 = 1'b1;
    end else begin
        P_arr_z_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln98_fu_450_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln108_fu_508_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state12 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state12 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln117_fu_568_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state16 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state16 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        count_B_V_address0 = zext_ln117_fu_580_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        count_B_V_address0 = count_B_V_addr_16_reg_690;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        count_B_V_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        count_B_V_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        count_B_V_address0 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        count_B_V_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        count_B_V_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        count_B_V_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        count_B_V_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        count_B_V_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        count_B_V_address0 = grp_bucket_unit_fu_432_count_B_address0;
    end else begin
        count_B_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        count_B_V_address1 = zext_ln534_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        count_B_V_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        count_B_V_address1 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        count_B_V_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        count_B_V_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        count_B_V_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        count_B_V_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        count_B_V_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        count_B_V_address1 = 64'd0;
    end else begin
        count_B_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1)))) begin
        count_B_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        count_B_V_ce0 = grp_bucket_unit_fu_432_count_B_ce0;
    end else begin
        count_B_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1)))) begin
        count_B_V_ce1 = 1'b1;
    end else begin
        count_B_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        count_B_V_d0 = add_ln691_fu_548_p2;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state8))) begin
        count_B_V_d0 = 13'd0;
    end else begin
        count_B_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0)))) begin
        count_B_V_we0 = 1'b1;
    end else begin
        count_B_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        count_B_V_we1 = 1'b1;
    end else begin
        count_B_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
        grp_bucket_unit_fu_432_ap_continue = 1'b1;
    end else begin
        grp_bucket_unit_fu_432_ap_continue = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln98_fu_450_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln98_fu_450_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln108_fu_508_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln108_fu_508_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)) | ((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if (~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln117_fu_568_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if (((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln117_fu_568_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b0 == ap_block_state19_on_subcall_done) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign BFIFO_1_din = {{p_Val2_s_reg_685}, {GBUFF_P_V_q0}};

assign B_i_address0 = grp_bucket_unit_fu_432_B_i_address0;

assign B_i_address1 = grp_bucket_unit_fu_432_B_i_address1;

assign B_i_ce0 = grp_bucket_unit_fu_432_B_i_ce0;

assign B_i_ce1 = grp_bucket_unit_fu_432_B_i_ce1;

assign B_i_d0 = grp_bucket_unit_fu_432_B_i_d0;

assign B_i_d1 = grp_bucket_unit_fu_432_B_i_d1;

assign B_i_we0 = grp_bucket_unit_fu_432_B_i_we0;

assign B_i_we1 = grp_bucket_unit_fu_432_B_i_we1;

assign GBUFF_K_V_d0 = K_arr_q0[3:0];

assign GBUFF_P_V_d0 = {{{v1_V_fu_472_p1}, {v2_V_2_fu_468_p1}}, {v2_V_fu_464_p1}};

assign K_arr_address0 = zext_ln98_fu_456_p1;

assign P_arr_x_address0 = zext_ln98_fu_456_p1;

assign P_arr_y_address0 = zext_ln98_fu_456_p1;

assign P_arr_z_address0 = zext_ln98_fu_456_p1;

assign add_ln108_fu_502_p2 = (i_1_reg_398 + 8'd1);

assign add_ln117_fu_574_p2 = (i_2_reg_409 + 5'd1);

assign add_ln691_1_fu_591_p2 = ($signed(num_padd_ops_V_reg_420) + $signed(13'd8191));

assign add_ln691_fu_548_p2 = (reuse_select_fu_541_p3 + 13'd1);

assign add_ln98_fu_444_p2 = (i_reg_387 + 8'd1);

assign addr_cmp_fu_527_p2 = ((reuse_addr_reg_fu_112 == zext_ln534_fu_519_p1) ? 1'b1 : 1'b0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((1'b0 == BFIFO_1_full_n) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((1'b0 == BFIFO_1_full_n) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((1'b0 == BFIFO_1_full_n) & (ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state14_pp1_stage0_iter2 = ((1'b0 == BFIFO_1_full_n) & (icmp_ln108_reg_671_pp1_iter1_reg == 1'd0));
end

assign ap_block_state16_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp2_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state19_on_subcall_done = ((ap_sync_grp_bucket_unit_fu_432_ap_ready & ap_sync_grp_bucket_unit_fu_432_ap_done) == 1'b0);
end

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign ap_sync_grp_bucket_unit_fu_432_ap_done = (grp_bucket_unit_fu_432_ap_done | ap_sync_reg_grp_bucket_unit_fu_432_ap_done);

assign ap_sync_grp_bucket_unit_fu_432_ap_ready = (grp_bucket_unit_fu_432_ap_ready | ap_sync_reg_grp_bucket_unit_fu_432_ap_ready);

assign grp_bucket_unit_fu_432_ap_start = grp_bucket_unit_fu_432_ap_start_reg;

assign icmp_ln108_fu_508_p2 = ((i_1_reg_398 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln117_fu_568_p2 = ((i_2_reg_409 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln874_fu_585_p2 = ((count_B_V_q0 == 13'd0) ? 1'b1 : 1'b0);

assign icmp_ln98_fu_450_p2 = ((i_reg_387 == 8'd128) ? 1'b1 : 1'b0);

assign num_padd_ops_V_1_fu_597_p2 = (add_ln691_1_fu_591_p2 + count_B_V_q0);

assign num_padd_ops_V_2_fu_603_p3 = ((icmp_ln874_fu_585_p2[0:0] == 1'b1) ? num_padd_ops_V_reg_420 : num_padd_ops_V_1_fu_597_p2);

assign reuse_select_fu_541_p3 = ((addr_cmp_reg_696[0:0] == 1'b1) ? reuse_reg_fu_116 : count_B_V_q1);

assign v1_V_fu_472_p1 = P_arr_x_q0[12:0];

assign v2_V_2_fu_468_p1 = P_arr_y_q0[12:0];

assign v2_V_fu_464_p1 = P_arr_z_q0[12:0];

assign zext_ln108_fu_514_p1 = i_1_reg_398;

assign zext_ln117_fu_580_p1 = i_2_reg_409;

assign zext_ln534_fu_519_p1 = GBUFF_K_V_q0;

assign zext_ln98_fu_456_p1 = i_reg_387;

always @ (posedge ap_clk) begin
    zext_ln98_reg_640[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln108_reg_675[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //msm_arr

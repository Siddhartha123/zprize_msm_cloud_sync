`timescale 1ns / 1ps

module sys_test();

parameter AWIDTH = 7;
parameter MEM_SIZE = 128;
parameter CLK_PERIOD = 3.5;

    reg ap_clk, ap_rst, ap_start;
    wire ap_done, ap_idle, ap_ready;

    wire [12:0] P_arr_x_q0, P_arr_x_q1;
    wire [12:0] P_arr_x_d0, P_arr_x_d1;
    wire P_arr_x_we0, P_arr_x_we1;
    wire [AWIDTH-1:0] P_arr_x_address0, P_arr_x_address1;
    
    wire [12:0] P_arr_y_q0, P_arr_y_q1;
    wire [12:0] P_arr_y_d0, P_arr_y_d1;
    wire P_arr_y_we0, P_arr_y_we1;
    wire [AWIDTH-1:0] P_arr_y_address0, P_arr_y_address1;
    
    wire [12:0] P_arr_z_q0, P_arr_z_q1;
    wire [12:0] P_arr_z_d0, P_arr_z_d1;
    wire P_arr_z_we0, P_arr_z_we1;
    wire [AWIDTH-1:0] P_arr_z_address0, P_arr_z_address1;
    
    wire [12:0] K_arr_q0, K_arr_q1;
    wire [12:0] K_arr_d0, K_arr_d1;
    wire K_arr_we0, K_arr_we1;
    wire [AWIDTH-1:0] K_arr_address0, K_arr_address1;

    wire  [4:0] B_i_address0;
    wire   B_i_ce0;
    wire  [31:0] B_i_d0;
    wire  [31:0] B_i_q0;
    wire   B_i_we0;
    wire  [4:0] B_i_address1;
    wire   B_i_ce1;
    wire  [31:0] B_i_d1;
    wire  [31:0] B_i_q1;
    wire   B_i_we1;
        
    initial begin
        #5;
        ap_clk<=1'b1;
        ap_start<=1'b0;
        ap_rst <= 1'b0;
        #20;
        ap_rst <= 1'b1; 
        #20;
        ap_rst<=1'b0;
        #20;
        ap_start<=1'b1;       
    end
    
    always #(CLK_PERIOD/2) ap_clk <= ~ap_clk;

    always@(posedge ap_clk) begin
        if(ap_done==1'b1) begin
            ap_start<=1'b0;
        end
    end

/*
        ap_local_block,
        ap_local_deadlock,
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
*/

    msm_arr uut(
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .P_arr_x_address0(P_arr_x_address0),
        .P_arr_x_ce0(P_arr_x_ce0),
        .P_arr_x_q0(P_arr_x_q0),
        .P_arr_y_address0(P_arr_y_address0),
        .P_arr_y_ce0(P_arr_y_ce0),
        .P_arr_y_q0(P_arr_y_q0),
        .P_arr_z_address0(P_arr_z_address0),
        .P_arr_z_ce0(P_arr_z_ce0),
        .P_arr_z_q0(P_arr_z_q0),
        .K_arr_address0(K_arr_address0),
        .K_arr_ce0(K_arr_ce0),
        .K_arr_q0(K_arr_q0),
        .B_i_address0(B_i_address0),
        .B_i_ce0(B_i_ce0),
        .B_i_we0(B_i_we0),
        .B_i_d0(B_i_d0),
        .B_i_address1(B_i_address1),
        .B_i_ce1(B_i_ce1),
        .B_i_we1(B_i_we1),
        .B_i_d1(B_i_d1)
    );

    test_case_mem test_case_mem_0(
        ap_clk, ap_rst, debug, 
        P_arr_x_address0, P_arr_x_ce0, P_arr_x_d0, P_arr_x_q0, P_arr_x_we0,
        P_arr_x_address1, P_arr_x_ce1, P_arr_x_d1, P_arr_x_q1, P_arr_x_we1,
        P_arr_y_address0, P_arr_y_ce0, P_arr_y_d0, P_arr_y_q0, P_arr_y_we0,
        P_arr_y_address1, P_arr_y_ce1, P_arr_y_d1, P_arr_y_q1, P_arr_y_we1,
        P_arr_z_address0, P_arr_z_ce0, P_arr_z_d0, P_arr_z_q0, P_arr_z_we0,
        P_arr_z_address1, P_arr_z_ce1, P_arr_z_d1, P_arr_z_q1, P_arr_z_we1,
        K_arr_address0, K_arr_ce0, K_arr_d0, K_arr_q0, K_arr_we0,
        K_arr_address1, K_arr_ce1, K_arr_d1, K_arr_q1, K_arr_we1,
        B_i_address0, B_i_ce0, B_i_d0, B_i_q0, B_i_we0, B_i_address1, B_i_ce1, B_i_d1, B_i_q1, B_i_we1
    );

endmodule

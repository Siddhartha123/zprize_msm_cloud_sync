`timescale 1ns / 1ps



module test_case_mem #(parameter EC_BASE_FIELD_WIDTH = 377,
        EC_SCALAR_FIELD_WIDTH = 253, 
        ADDR_WIDTH = 4,
        MEM_SIZE = 16) (
        ap_clk, ap_rst, debug, 
        P_arr_x_V_address0, P_arr_x_V_ce0, P_arr_x_V_d0, P_arr_x_V_q0, P_arr_x_V_we0,
        P_arr_x_V_address1, P_arr_x_V_ce1, P_arr_x_V_d1, P_arr_x_V_q1, P_arr_x_V_we1,
        P_arr_y_V_address0, P_arr_y_V_ce0, P_arr_y_V_d0, P_arr_y_V_q0, P_arr_y_V_we0,
        P_arr_y_V_address1, P_arr_y_V_ce1, P_arr_y_V_d1, P_arr_y_V_q1, P_arr_y_V_we1,
        P_arr_z_V_address0, P_arr_z_V_ce0, P_arr_z_V_d0, P_arr_z_V_q0, P_arr_z_V_we0,
        P_arr_z_V_address1, P_arr_z_V_ce1, P_arr_z_V_d1, P_arr_z_V_q1, P_arr_z_V_we1,
        K_arr_V_address0, K_arr_V_ce0, K_arr_V_d0, K_arr_V_q0, K_arr_V_we0,
        K_arr_V_address1, K_arr_V_ce1, K_arr_V_d1, K_arr_V_q1, K_arr_V_we1,
        B_i_V_address0, B_i_V_ce0, B_i_V_d0, B_i_V_q0, B_i_V_we0, B_i_V_address1, B_i_V_ce1, B_i_V_d1, B_i_V_q1, B_i_V_we1
);
    


    reg [EC_BASE_FIELD_WIDTH-1:0] mem[0:255];
    reg [EC_BASE_FIELD_WIDTH-1:0] P_arr_x_V[0:MEM_SIZE-1], P_arr_y_V[0:MEM_SIZE-1], P_arr_z_V[0:MEM_SIZE-1];
    reg [EC_SCALAR_FIELD_WIDTH-1:0] K_arr_V[0:MEM_SIZE-1];
    reg [31:0] B_i_V[31:0];
    input wire ap_clk, ap_rst;

    output reg [EC_BASE_FIELD_WIDTH-1:0] P_arr_x_V_q0, P_arr_x_V_q1;
    input wire [EC_BASE_FIELD_WIDTH-1:0] P_arr_x_V_d0, P_arr_x_V_d1;
    input wire P_arr_x_V_ce0, P_arr_x_V_ce1, P_arr_x_V_we0, P_arr_x_V_we1;
    input wire [ADDR_WIDTH-1:0] P_arr_x_V_address0, P_arr_x_V_address1;
    
    output reg [EC_BASE_FIELD_WIDTH-1:0] P_arr_y_V_q0, P_arr_y_V_q1;
    input wire [EC_BASE_FIELD_WIDTH-1:0] P_arr_y_V_d0, P_arr_y_V_d1;
    input wire P_arr_y_V_ce0, P_arr_y_V_ce1, P_arr_y_V_we0, P_arr_y_V_we1;
    input wire [ADDR_WIDTH-1:0] P_arr_y_V_address0, P_arr_y_V_address1;
    
    output reg [EC_BASE_FIELD_WIDTH-1:0] P_arr_z_V_q0, P_arr_z_V_q1;
    input wire [EC_BASE_FIELD_WIDTH-1:0] P_arr_z_V_d0, P_arr_z_V_d1;
    input wire P_arr_z_V_ce0, P_arr_z_V_ce1, P_arr_z_V_we0, P_arr_z_V_we1;
    input wire [ADDR_WIDTH-1:0] P_arr_z_V_address0, P_arr_z_V_address1;
    
    output reg [EC_SCALAR_FIELD_WIDTH-1:0] K_arr_V_q0, K_arr_V_q1;
    input wire [EC_SCALAR_FIELD_WIDTH-1:0] K_arr_V_d0, K_arr_V_d1;
    input wire K_arr_V_ce0, K_arr_V_ce1, K_arr_V_we0, K_arr_V_we1;
    input wire [ADDR_WIDTH-1:0] K_arr_V_address0, K_arr_V_address1;

    input wire [4:0] B_i_V_address0, B_i_V_address1;
    input wire B_i_V_ce0, B_i_V_ce1, B_i_V_we0, B_i_V_we1;
    input wire [31:0] B_i_V_d0,  B_i_V_d1;
    output reg [31:0] B_i_V_q0,B_i_V_q1; 


    output reg debug;
    reg [7:0] counter;

    initial begin
        $readmemh("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_3/P_arr_x_V.txt",P_arr_x_V);
        $readmemh("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_3/P_arr_y_V.txt",P_arr_y_V);
        $readmemh("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_3/P_arr_z_V.txt",P_arr_z_V);
        $readmemh("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_3/K_arr_V.txt",K_arr_V);
    end
    
    // test vector memory spaces
    always@(posedge ap_clk) begin
        P_arr_x_V_q0 <= P_arr_x_V[P_arr_x_V_address0];
        P_arr_y_V_q0 <= P_arr_y_V[P_arr_y_V_address0];
        P_arr_z_V_q0 <= P_arr_z_V[P_arr_z_V_address0];
        K_arr_V_q0 <= K_arr_V[K_arr_V_address0];
        B_i_V_q0 <= B_i_V[B_i_V_address0];

        P_arr_x_V_q1 <= P_arr_x_V[P_arr_x_V_address1];
        P_arr_y_V_q1 <= P_arr_y_V[P_arr_y_V_address1];
        P_arr_z_V_q1 <= P_arr_z_V[P_arr_z_V_address1];
        K_arr_V_q1 <= K_arr_V[K_arr_V_address1];
        B_i_V_q1 <= B_i_V[B_i_V_address1];

    end

    always@(posedge ap_clk) begin
        if(P_arr_x_V_we0==1'b1)
            P_arr_x_V[P_arr_x_V_address0] <= P_arr_x_V_d0;
        if(P_arr_x_V_we1==1'b1)
            P_arr_x_V[P_arr_x_V_address1] <= P_arr_x_V_d1;
        
        if(P_arr_y_V_we0==1'b1)
            P_arr_y_V[P_arr_y_V_address0] <= P_arr_y_V_d0;
        if(P_arr_y_V_we1==1'b1)
            P_arr_y_V[P_arr_y_V_address1] <= P_arr_y_V_d1;
        
        if(P_arr_z_V_we0==1'b1)
            P_arr_z_V[P_arr_z_V_address0] <= P_arr_z_V_d0;
        if(P_arr_z_V_we1==1'b1)
            P_arr_z_V[P_arr_z_V_address1] <= P_arr_z_V_d1;
        
        if(K_arr_V_we0==1'b1)
            K_arr_V[K_arr_V_address0] <= K_arr_V_d0;
        if(K_arr_V_we1==1'b1)
            K_arr_V[K_arr_V_address1] <= K_arr_V_d1;

        if(B_i_V_we0)
            B_i_V[B_i_V_address0] <= B_i_V_d0;
        if(B_i_V_we1)
            B_i_V[B_i_V_address1] <= B_i_V_d1;
    end
    
endmodule

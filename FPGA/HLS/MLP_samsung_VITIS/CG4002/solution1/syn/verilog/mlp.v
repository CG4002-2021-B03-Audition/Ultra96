// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mlp_mlp,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.210500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=33,HLS_SYN_LUT=207,HLS_VERSION=2020_2}" *)

module mlp (
        ap_clk,
        ap_rst_n,
        S_AXIS_V_TDATA,
        S_AXIS_V_TVALID,
        S_AXIS_V_TREADY,
        M_AXIS_V_TDATA,
        M_AXIS_V_TVALID,
        M_AXIS_V_TREADY
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state8 = 8'd32;
parameter    ap_ST_fsm_state9 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

input   ap_clk;
input   ap_rst_n;
input  [63:0] S_AXIS_V_TDATA;
input   S_AXIS_V_TVALID;
output   S_AXIS_V_TREADY;
output  [63:0] M_AXIS_V_TDATA;
output   M_AXIS_V_TVALID;
input   M_AXIS_V_TREADY;

 reg    ap_rst_n_inv;
reg    S_AXIS_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln47_fu_138_p2;
reg    M_AXIS_V_TDATA_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln51_reg_227;
reg    ap_enable_reg_pp1_iter2;
reg   [0:0] icmp_ln51_reg_227_pp1_iter1_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [9:0] j_1_reg_121;
wire   [9:0] add_ln47_fu_132_p2;
reg    ap_block_state3;
wire   [9:0] add_ln51_fu_158_p2;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_state6_io;
reg    ap_block_state7_pp1_stage0_iter2;
reg    ap_block_state7_io;
reg    ap_block_pp1_stage0_11001;
wire   [0:0] icmp_ln51_fu_164_p2;
wire   [63:0] zext_ln174_1_fu_187_p1;
wire   [63:0] zext_ln174_fu_204_p1;
wire    ap_CS_fsm_state4;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg   [9:0] weights_0_address0;
reg    weights_0_ce0;
reg    weights_0_we0;
wire   [31:0] weights_0_d0;
wire   [31:0] weights_0_q0;
reg   [9:0] j_reg_110;
wire    ap_CS_fsm_state2;
wire   [63:0] j_cast_fu_144_p1;
wire   [63:0] j_1_cast_fu_170_p1;
reg    ap_block_pp1_stage0_01001;
wire    ap_CS_fsm_state8;
wire   [31:0] trunc_ln48_fu_149_p1;
wire   [31:0] bitcast_ln174_1_fu_175_p1;
wire   [32:0] or_ln174_1_fu_179_p3;
wire   [31:0] bitcast_ln174_fu_192_p1;
wire   [32:0] or_ln_fu_196_p3;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire    regslice_both_S_AXIS_V_U_apdone_blk;
wire   [63:0] S_AXIS_V_TDATA_int_regslice;
wire    S_AXIS_V_TVALID_int_regslice;
reg    S_AXIS_V_TREADY_int_regslice;
wire    regslice_both_S_AXIS_V_U_ack_in;
wire    regslice_both_M_AXIS_V_U_apdone_blk;
reg   [63:0] M_AXIS_V_TDATA_int_regslice;
reg    M_AXIS_V_TVALID_int_regslice;
wire    M_AXIS_V_TREADY_int_regslice;
wire    regslice_both_M_AXIS_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

mlp_weights_0 #(
    .DataWidth( 32 ),
    .AddressRange( 561 ),
    .AddressWidth( 10 ))
weights_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(weights_0_address0),
    .ce0(weights_0_ce0),
    .we0(weights_0_we0),
    .d0(weights_0_d0),
    .q0(weights_0_q0)
);

mlp_regslice_both #(
    .DataWidth( 64 ))
regslice_both_S_AXIS_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(S_AXIS_V_TDATA),
    .vld_in(S_AXIS_V_TVALID),
    .ack_in(regslice_both_S_AXIS_V_U_ack_in),
    .data_out(S_AXIS_V_TDATA_int_regslice),
    .vld_out(S_AXIS_V_TVALID_int_regslice),
    .ack_out(S_AXIS_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_S_AXIS_V_U_apdone_blk)
);

mlp_regslice_both #(
    .DataWidth( 64 ))
regslice_both_M_AXIS_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(M_AXIS_V_TDATA_int_regslice),
    .vld_in(M_AXIS_V_TVALID_int_regslice),
    .ack_in(M_AXIS_V_TREADY_int_regslice),
    .data_out(M_AXIS_V_TDATA),
    .vld_out(regslice_both_M_AXIS_V_U_vld_out),
    .ack_out(M_AXIS_V_TREADY),
    .apdone_blk(regslice_both_M_AXIS_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state5)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_1_reg_121 <= 10'd0;
    end else if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln51_fu_164_p2 == 1'd0))) begin
        j_1_reg_121 <= add_ln51_fu_158_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_110 <= 10'd0;
    end else if ((~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (icmp_ln47_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j_reg_110 <= add_ln47_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln51_reg_227 <= icmp_ln51_fu_164_p2;
        icmp_ln51_reg_227_pp1_iter1_reg <= icmp_ln51_reg_227;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0)) | ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        M_AXIS_V_TDATA_blk_n = M_AXIS_V_TREADY_int_regslice;
    end else begin
        M_AXIS_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == M_AXIS_V_TREADY_int_regslice))) begin
        M_AXIS_V_TDATA_int_regslice = zext_ln174_fu_204_p1;
    end else if (((icmp_ln51_reg_227 == 1'd0) & (1'b0 == ap_block_pp1_stage0_01001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        M_AXIS_V_TDATA_int_regslice = zext_ln174_1_fu_187_p1;
    end else begin
        M_AXIS_V_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (1'b1 == M_AXIS_V_TREADY_int_regslice)) | ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        M_AXIS_V_TVALID_int_regslice = 1'b1;
    end else begin
        M_AXIS_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        S_AXIS_V_TDATA_blk_n = S_AXIS_V_TVALID_int_regslice;
    end else begin
        S_AXIS_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (icmp_ln47_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        S_AXIS_V_TREADY_int_regslice = 1'b1;
    end else begin
        S_AXIS_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln51_fu_164_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        weights_0_address0 = 64'd560;
    end else if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        weights_0_address0 = j_1_cast_fu_170_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights_0_address0 = j_cast_fu_144_p1;
    end else begin
        weights_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0)) | (~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (1'b1 == ap_CS_fsm_state3)))) begin
        weights_0_ce0 = 1'b1;
    end else begin
        weights_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (icmp_ln47_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        weights_0_we0 = 1'b1;
    end else begin
        weights_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if ((~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (icmp_ln47_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice)) & (icmp_ln47_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln51_fu_164_p2 == 1'd1)) & ~((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln51_fu_164_p2 == 1'd1)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == M_AXIS_V_TREADY_int_regslice))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (1'b1 == M_AXIS_V_TREADY_int_regslice))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign M_AXIS_V_TVALID = regslice_both_M_AXIS_V_U_vld_out;

assign S_AXIS_V_TREADY = regslice_both_S_AXIS_V_U_ack_in;

assign add_ln47_fu_132_p2 = (j_reg_110 + 10'd1);

assign add_ln51_fu_158_p2 = (j_1_reg_121 + 10'd1);

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd6];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == M_AXIS_V_TREADY_int_regslice)) | ((icmp_ln51_reg_227 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == M_AXIS_V_TREADY_int_regslice)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((ap_enable_reg_pp1_iter2 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice)))) | ((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state6_io) | ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice)))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((ap_enable_reg_pp1_iter2 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice)))) | ((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state6_io) | ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice)))));
end

always @ (*) begin
    ap_block_state3 = ((icmp_ln47_fu_138_p2 == 1'd0) & (1'b0 == S_AXIS_V_TVALID_int_regslice));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = ((icmp_ln51_reg_227 == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state7_io = ((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice));
end

always @ (*) begin
    ap_block_state7_pp1_stage0_iter2 = ((icmp_ln51_reg_227_pp1_iter1_reg == 1'd0) & (1'b0 == M_AXIS_V_TREADY_int_regslice));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign bitcast_ln174_1_fu_175_p1 = weights_0_q0;

assign bitcast_ln174_fu_192_p1 = weights_0_q0;

assign icmp_ln47_fu_138_p2 = ((j_reg_110 == 10'd561) ? 1'b1 : 1'b0);

assign icmp_ln51_fu_164_p2 = ((j_1_reg_121 == 10'd560) ? 1'b1 : 1'b0);

assign j_1_cast_fu_170_p1 = j_1_reg_121;

assign j_cast_fu_144_p1 = j_reg_110;

assign or_ln174_1_fu_179_p3 = {{1'd1}, {bitcast_ln174_1_fu_175_p1}};

assign or_ln_fu_196_p3 = {{1'd1}, {bitcast_ln174_fu_192_p1}};

assign trunc_ln48_fu_149_p1 = S_AXIS_V_TDATA_int_regslice[31:0];

assign weights_0_d0 = trunc_ln48_fu_149_p1;

assign zext_ln174_1_fu_187_p1 = or_ln174_1_fu_179_p3;

assign zext_ln174_fu_204_p1 = or_ln_fu_196_p3;

endmodule //mlp
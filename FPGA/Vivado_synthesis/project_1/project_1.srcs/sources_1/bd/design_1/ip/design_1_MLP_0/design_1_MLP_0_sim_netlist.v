// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Feb 21 19:32:10 2021
// Host        : MOONCELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/CNNIOT/deeplib/alt/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_MLP_0/design_1_MLP_0_sim_netlist.v
// Design      : design_1_MLP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_MLP_0,mlp,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "mlp,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_MLP_0
   (ap_clk,
    ap_rst_n,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TLAST,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]S_AXIS_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]M_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]M_AXIS_TLAST;

  wire [31:0]M_AXIS_TDATA;
  wire [0:0]M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire [0:0]S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire ap_clk;
  wire ap_rst_n;

  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state5 = "6'b010000" *) 
  (* ap_ST_fsm_state6 = "6'b100000" *) 
  design_1_MLP_0_mlp inst
       (.M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TLAST(S_AXIS_TLAST),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module design_1_MLP_0_ibuf
   (\j_0_reg_100_reg[0] ,
    D,
    Q,
    S_AXIS_TREADY,
    \ireg_reg[0]_0 ,
    \ireg_reg[32]_0 ,
    ap_rst_n,
    SR,
    E,
    ap_clk);
  output \j_0_reg_100_reg[0] ;
  output [32:0]D;
  output [0:0]Q;
  output S_AXIS_TREADY;
  input [5:0]\ireg_reg[0]_0 ;
  input [32:0]\ireg_reg[32]_0 ;
  input ap_rst_n;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire S_AXIS_TREADY;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]\ireg_reg[0]_0 ;
  wire [32:0]\ireg_reg[32]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire \j_0_reg_100_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXIS_TREADY_INST_0
       (.I0(\ireg_reg[32]_0 [32]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(S_AXIS_TREADY));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [19]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [29]),
        .Q(\ireg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [32]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(\ireg_reg[32]_0 [0]),
        .I2(Q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[10]_i_1 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\ireg_reg[32]_0 [10]),
        .I2(Q),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[11]_i_1 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\ireg_reg[32]_0 [11]),
        .I2(Q),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[12]_i_1 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\ireg_reg[32]_0 [12]),
        .I2(Q),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[13]_i_1 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\ireg_reg[32]_0 [13]),
        .I2(Q),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[14]_i_1 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\ireg_reg[32]_0 [14]),
        .I2(Q),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[15]_i_1 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\ireg_reg[32]_0 [15]),
        .I2(Q),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[16]_i_1 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\ireg_reg[32]_0 [16]),
        .I2(Q),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[17]_i_1 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\ireg_reg[32]_0 [17]),
        .I2(Q),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[18]_i_1 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\ireg_reg[32]_0 [18]),
        .I2(Q),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[19]_i_1 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\ireg_reg[32]_0 [19]),
        .I2(Q),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\ireg_reg[32]_0 [1]),
        .I2(Q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[20]_i_1 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\ireg_reg[32]_0 [20]),
        .I2(Q),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[21]_i_1 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\ireg_reg[32]_0 [21]),
        .I2(Q),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[22]_i_1 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\ireg_reg[32]_0 [22]),
        .I2(Q),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[23]_i_1 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\ireg_reg[32]_0 [23]),
        .I2(Q),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[24]_i_1 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(\ireg_reg[32]_0 [24]),
        .I2(Q),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[25]_i_1 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(\ireg_reg[32]_0 [25]),
        .I2(Q),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[26]_i_1 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(\ireg_reg[32]_0 [26]),
        .I2(Q),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[27]_i_1 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(\ireg_reg[32]_0 [27]),
        .I2(Q),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[28]_i_1 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(\ireg_reg[32]_0 [28]),
        .I2(Q),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[29]_i_1 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(\ireg_reg[32]_0 [29]),
        .I2(Q),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[2]_i_1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\ireg_reg[32]_0 [2]),
        .I2(Q),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[30]_i_1 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(\ireg_reg[32]_0 [30]),
        .I2(Q),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[31]_i_1__0 
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(\ireg_reg[32]_0 [31]),
        .I2(Q),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[32]_i_2 
       (.I0(\ireg_reg[32]_0 [32]),
        .I1(Q),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[3]_i_1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\ireg_reg[32]_0 [3]),
        .I2(Q),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[4]_i_1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\ireg_reg[32]_0 [4]),
        .I2(Q),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[5]_i_1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\ireg_reg[32]_0 [5]),
        .I2(Q),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[6]_i_1 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\ireg_reg[32]_0 [6]),
        .I2(Q),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[7]_i_1 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\ireg_reg[32]_0 [7]),
        .I2(Q),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[8]_i_1 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\ireg_reg[32]_0 [8]),
        .I2(Q),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[9]_i_1 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\ireg_reg[32]_0 [9]),
        .I2(Q),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ram_reg_i_9
       (.I0(\ireg_reg[0]_0 [0]),
        .I1(\ireg_reg[0]_0 [4]),
        .I2(\ireg_reg[0]_0 [1]),
        .I3(\ireg_reg[0]_0 [5]),
        .I4(\ireg_reg[0]_0 [3]),
        .I5(\ireg_reg[0]_0 [2]),
        .O(\j_0_reg_100_reg[0] ));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module design_1_MLP_0_ibuf_1
   (D,
    \ireg_reg[32]_0 ,
    \ap_CS_fsm_reg[4] ,
    E,
    \ap_CS_fsm_reg[4]_0 ,
    Q,
    \ireg_reg[31]_0 ,
    icmp_ln26_fu_155_p2,
    ap_rst_n,
    icmp_ln22_fu_133_p2,
    SR,
    \ireg_reg[32]_1 ,
    ap_clk);
  output [32:0]D;
  output [0:0]\ireg_reg[32]_0 ;
  output [2:0]\ap_CS_fsm_reg[4] ;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[4]_0 ;
  input [3:0]Q;
  input [31:0]\ireg_reg[31]_0 ;
  input icmp_ln26_fu_155_p2;
  input ap_rst_n;
  input icmp_ln22_fu_133_p2;
  input [0:0]SR;
  input [0:0]\ireg_reg[32]_1 ;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire [0:0]\ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire icmp_ln22_fu_133_p2;
  wire icmp_ln26_fu_155_p2;
  wire [31:0]\ireg_reg[31]_0 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire [0:0]\ireg_reg[32]_1 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln22_fu_133_p2),
        .I2(Q[3]),
        .I3(\ireg_reg[32]_0 ),
        .O(\ap_CS_fsm_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(icmp_ln26_fu_155_p2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ireg_reg[32]_0 ),
        .O(\ap_CS_fsm_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\ireg_reg[32]_0 ),
        .O(\ap_CS_fsm_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ireg[32]_i_3 
       (.I0(Q[2]),
        .I1(ap_rst_n),
        .I2(\ireg_reg[32]_0 ),
        .O(\ap_CS_fsm_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [19]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [29]),
        .Q(\ireg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ap_CS_fsm_reg[4]_0 ),
        .Q(\ireg_reg[32]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_1 ),
        .D(\ireg_reg[31]_0 [9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \j1_0_reg_122[5]_i_2 
       (.I0(Q[3]),
        .I1(ap_rst_n),
        .I2(\ireg_reg[32]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(\ireg_reg[31]_0 [0]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[10]_i_1__0 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\ireg_reg[31]_0 [10]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[11]_i_1__0 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\ireg_reg[31]_0 [11]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[12]_i_1__0 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\ireg_reg[31]_0 [12]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[13]_i_1__0 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\ireg_reg[31]_0 [13]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[14]_i_1__0 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\ireg_reg[31]_0 [14]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[15]_i_1__0 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\ireg_reg[31]_0 [15]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[16]_i_1__0 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\ireg_reg[31]_0 [16]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[17]_i_1__0 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\ireg_reg[31]_0 [17]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[18]_i_1__0 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\ireg_reg[31]_0 [18]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[19]_i_1__0 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\ireg_reg[31]_0 [19]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[1]_i_1__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\ireg_reg[31]_0 [1]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[20]_i_1__0 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\ireg_reg[31]_0 [20]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[21]_i_1__0 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\ireg_reg[31]_0 [21]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[22]_i_1__0 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\ireg_reg[31]_0 [22]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[23]_i_1__0 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\ireg_reg[31]_0 [23]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[24]_i_1__0 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(\ireg_reg[31]_0 [24]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[25]_i_1__0 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(\ireg_reg[31]_0 [25]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[26]_i_1__0 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(\ireg_reg[31]_0 [26]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[27]_i_1__0 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(\ireg_reg[31]_0 [27]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[28]_i_1__0 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(\ireg_reg[31]_0 [28]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[29]_i_1__0 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(\ireg_reg[31]_0 [29]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[2]_i_1__0 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\ireg_reg[31]_0 [2]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[30]_i_1__0 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(\ireg_reg[31]_0 [30]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[31]_i_3 
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(\ireg_reg[31]_0 [31]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[32]_i_1 
       (.I0(Q[2]),
        .I1(\ireg_reg[32]_0 ),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\ireg_reg[31]_0 [3]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\ireg_reg[31]_0 [4]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[5]_i_1__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\ireg_reg[31]_0 [5]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[6]_i_1__0 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\ireg_reg[31]_0 [6]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[7]_i_1__0 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\ireg_reg[31]_0 [7]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[8]_i_1__0 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\ireg_reg[31]_0 [8]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \odata[9]_i_1__0 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\ireg_reg[31]_0 [9]),
        .I2(\ireg_reg[32]_0 ),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module design_1_MLP_0_ibuf__parameterized0
   (D,
    Q,
    \odata_reg[1] ,
    \odata_reg[1]_0 ,
    \ireg_reg[1]_0 ,
    SR,
    E,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [0:0]\odata_reg[1] ;
  input [0:0]\odata_reg[1]_0 ;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire [0:0]\odata_reg[1] ;
  wire [0:0]\odata_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[0]_i_2 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[1]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \odata[1]_i_1__1 
       (.I0(Q),
        .I1(\odata_reg[1] ),
        .I2(\odata_reg[1]_0 ),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "mlp" *) (* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) 
(* ap_ST_fsm_state3 = "6'b000100" *) (* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state5 = "6'b010000" *) 
(* ap_ST_fsm_state6 = "6'b100000" *) (* hls_module = "yes" *) 
module design_1_MLP_0_mlp
   (ap_clk,
    ap_rst_n,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [31:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  input S_AXIS_TLAST;
  output [31:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;
  output M_AXIS_TLAST;

  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire [31:0]S_AXIS_TDATA_int;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [5:1]ap_NS_fsm;
  wire ap_NS_fsm11_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \ibuf_inst/p_0_in ;
  wire icmp_ln22_fu_133_p2;
  wire icmp_ln26_fu_155_p2;
  wire icmp_ln28_fu_172_p2;
  wire [5:0]j1_0_reg_122;
  wire j_0_reg_100;
  wire [5:0]j_0_reg_100_reg;
  wire [5:0]j_1_fu_161_p2;
  wire [5:0]j_1_reg_195;
  wire \j_1_reg_195[2]_i_1_n_0 ;
  wire [5:0]j_fu_139_p2;
  wire out_1_0_reg_111;
  wire regslice_both_M_AXIS_V_data_U_n_38;
  wire regslice_both_M_AXIS_V_data_U_n_39;
  wire regslice_both_S_AXIS_V_data_U_n_2;
  wire tmp_last_reg_205;
  wire \tmp_last_reg_205[0]_i_1_n_0 ;
  wire weights_0_ce0;
  wire [31:0]weights_0_q0;

  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln26_fu_155_p2),
        .I2(ap_CS_fsm_state4),
        .O(ap_NS_fsm[1]));
  LUT3 #(
    .INIT(8'hF2)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(icmp_ln22_fu_133_p2),
        .I2(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(j1_0_reg_122[4]),
        .I1(j1_0_reg_122[2]),
        .I2(j1_0_reg_122[3]),
        .I3(j1_0_reg_122[5]),
        .I4(j1_0_reg_122[0]),
        .I5(j1_0_reg_122[1]),
        .O(icmp_ln26_fu_155_p2));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    \j1_0_reg_122[5]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(icmp_ln22_fu_133_p2),
        .O(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[0]),
        .Q(j1_0_reg_122[0]),
        .R(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[1]),
        .Q(j1_0_reg_122[1]),
        .R(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[2]),
        .Q(j1_0_reg_122[2]),
        .R(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[3]),
        .Q(j1_0_reg_122[3]),
        .R(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[4]),
        .Q(j1_0_reg_122[4]),
        .R(ap_NS_fsm11_out));
  FDRE \j1_0_reg_122_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(j_1_reg_195[5]),
        .Q(j1_0_reg_122[5]),
        .R(ap_NS_fsm11_out));
  LUT1 #(
    .INIT(2'h1)) 
    \j_0_reg_100[0]_i_1 
       (.I0(j_0_reg_100_reg[0]),
        .O(j_fu_139_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_reg_100[1]_i_1 
       (.I0(j_0_reg_100_reg[0]),
        .I1(j_0_reg_100_reg[1]),
        .O(j_fu_139_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j_0_reg_100[2]_i_1 
       (.I0(j_0_reg_100_reg[0]),
        .I1(j_0_reg_100_reg[1]),
        .I2(j_0_reg_100_reg[2]),
        .O(j_fu_139_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \j_0_reg_100[3]_i_1 
       (.I0(j_0_reg_100_reg[1]),
        .I1(j_0_reg_100_reg[0]),
        .I2(j_0_reg_100_reg[2]),
        .I3(j_0_reg_100_reg[3]),
        .O(j_fu_139_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_0_reg_100[4]_i_1 
       (.I0(j_0_reg_100_reg[2]),
        .I1(j_0_reg_100_reg[0]),
        .I2(j_0_reg_100_reg[1]),
        .I3(j_0_reg_100_reg[3]),
        .I4(j_0_reg_100_reg[4]),
        .O(j_fu_139_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \j_0_reg_100[5]_i_2 
       (.I0(j_0_reg_100_reg[3]),
        .I1(j_0_reg_100_reg[1]),
        .I2(j_0_reg_100_reg[0]),
        .I3(j_0_reg_100_reg[2]),
        .I4(j_0_reg_100_reg[4]),
        .I5(j_0_reg_100_reg[5]),
        .O(j_fu_139_p2[5]));
  FDRE \j_0_reg_100_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[0]),
        .Q(j_0_reg_100_reg[0]),
        .R(j_0_reg_100));
  FDRE \j_0_reg_100_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[1]),
        .Q(j_0_reg_100_reg[1]),
        .R(j_0_reg_100));
  FDRE \j_0_reg_100_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[2]),
        .Q(j_0_reg_100_reg[2]),
        .R(j_0_reg_100));
  FDRE \j_0_reg_100_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[3]),
        .Q(j_0_reg_100_reg[3]),
        .R(j_0_reg_100));
  FDRE \j_0_reg_100_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[4]),
        .Q(j_0_reg_100_reg[4]),
        .R(j_0_reg_100));
  FDRE \j_0_reg_100_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_S_AXIS_V_data_U_n_2),
        .D(j_fu_139_p2[5]),
        .Q(j_0_reg_100_reg[5]),
        .R(j_0_reg_100));
  LUT1 #(
    .INIT(2'h1)) 
    \j_1_reg_195[0]_i_1 
       (.I0(j1_0_reg_122[0]),
        .O(j_1_fu_161_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_1_reg_195[1]_i_1 
       (.I0(j1_0_reg_122[0]),
        .I1(j1_0_reg_122[1]),
        .O(j_1_fu_161_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j_1_reg_195[2]_i_1 
       (.I0(j1_0_reg_122[1]),
        .I1(j1_0_reg_122[0]),
        .I2(j1_0_reg_122[2]),
        .O(\j_1_reg_195[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \j_1_reg_195[3]_i_1 
       (.I0(j1_0_reg_122[1]),
        .I1(j1_0_reg_122[0]),
        .I2(j1_0_reg_122[2]),
        .I3(j1_0_reg_122[3]),
        .O(j_1_fu_161_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_1_reg_195[4]_i_1 
       (.I0(j1_0_reg_122[2]),
        .I1(j1_0_reg_122[0]),
        .I2(j1_0_reg_122[1]),
        .I3(j1_0_reg_122[3]),
        .I4(j1_0_reg_122[4]),
        .O(j_1_fu_161_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \j_1_reg_195[5]_i_1 
       (.I0(j1_0_reg_122[3]),
        .I1(j1_0_reg_122[1]),
        .I2(j1_0_reg_122[0]),
        .I3(j1_0_reg_122[2]),
        .I4(j1_0_reg_122[4]),
        .I5(j1_0_reg_122[5]),
        .O(j_1_fu_161_p2[5]));
  FDRE \j_1_reg_195_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_1_fu_161_p2[0]),
        .Q(j_1_reg_195[0]),
        .R(1'b0));
  FDRE \j_1_reg_195_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_1_fu_161_p2[1]),
        .Q(j_1_reg_195[1]),
        .R(1'b0));
  FDRE \j_1_reg_195_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\j_1_reg_195[2]_i_1_n_0 ),
        .Q(j_1_reg_195[2]),
        .R(1'b0));
  FDRE \j_1_reg_195_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_1_fu_161_p2[3]),
        .Q(j_1_reg_195[3]),
        .R(1'b0));
  FDRE \j_1_reg_195_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_1_fu_161_p2[4]),
        .Q(j_1_reg_195[4]),
        .R(1'b0));
  FDRE \j_1_reg_195_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_1_fu_161_p2[5]),
        .Q(j_1_reg_195[5]),
        .R(1'b0));
  FDRE \out_1_0_reg_111_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_M_AXIS_V_data_U_n_38),
        .D(tmp_last_reg_205),
        .Q(out_1_0_reg_111),
        .R(ap_NS_fsm11_out));
  design_1_MLP_0_regslice_both regslice_both_M_AXIS_V_data_U
       (.D(weights_0_q0),
        .E(regslice_both_M_AXIS_V_data_U_n_38),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[4] (ap_NS_fsm[5:3]),
        .\ap_CS_fsm_reg[4]_0 (regslice_both_M_AXIS_V_data_U_n_39),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln22_fu_133_p2(icmp_ln22_fu_133_p2),
        .icmp_ln26_fu_155_p2(icmp_ln26_fu_155_p2),
        .\ireg_reg[32] (\ibuf_inst/p_0_in ),
        .\odata_reg[32] ({M_AXIS_TVALID,M_AXIS_TDATA}));
  design_1_MLP_0_regslice_both_0 regslice_both_S_AXIS_V_data_U
       (.D({S_AXIS_TVALID,S_AXIS_TDATA}),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .SR(j_0_reg_100),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .WEBWE(regslice_both_S_AXIS_V_data_U_n_2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln22_fu_133_p2(icmp_ln22_fu_133_p2),
        .\ireg_reg[0] (j_0_reg_100_reg),
        .\odata_reg[0] (ap_rst_n_inv),
        .\odata_reg[31] (S_AXIS_TDATA_int),
        .weights_0_ce0(weights_0_ce0));
  design_1_MLP_0_regslice_both_w1 regslice_both_w1_M_AXIS_V_last_U
       (.D(regslice_both_M_AXIS_V_data_U_n_39),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q(ap_CS_fsm_state5),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_reg[1] (\ibuf_inst/p_0_in ),
        .tmp_last_reg_205(tmp_last_reg_205));
  LUT5 #(
    .INIT(32'hFFEF00E0)) 
    \tmp_last_reg_205[0]_i_1 
       (.I0(out_1_0_reg_111),
        .I1(icmp_ln28_fu_172_p2),
        .I2(ap_CS_fsm_state4),
        .I3(icmp_ln26_fu_155_p2),
        .I4(tmp_last_reg_205),
        .O(\tmp_last_reg_205[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \tmp_last_reg_205[0]_i_2 
       (.I0(j1_0_reg_122[5]),
        .I1(j1_0_reg_122[3]),
        .I2(j1_0_reg_122[4]),
        .I3(j1_0_reg_122[2]),
        .I4(j1_0_reg_122[0]),
        .I5(j1_0_reg_122[1]),
        .O(icmp_ln28_fu_172_p2));
  FDRE \tmp_last_reg_205_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_reg_205[0]_i_1_n_0 ),
        .Q(tmp_last_reg_205),
        .R(1'b0));
  design_1_MLP_0_mlp_weights_0 weights_0_U
       (.D(weights_0_q0),
        .Q(j1_0_reg_122),
        .WEBWE(regslice_both_S_AXIS_V_data_U_n_2),
        .ap_clk(ap_clk),
        .ram_reg(S_AXIS_TDATA_int),
        .ram_reg_0(j_0_reg_100_reg),
        .ram_reg_1(ap_CS_fsm_state4),
        .weights_0_ce0(weights_0_ce0));
endmodule

(* ORIG_REF_NAME = "mlp_weights_0" *) 
module design_1_MLP_0_mlp_weights_0
   (D,
    ap_clk,
    weights_0_ce0,
    ram_reg,
    WEBWE,
    Q,
    ram_reg_0,
    ram_reg_1);
  output [31:0]D;
  input ap_clk;
  input weights_0_ce0;
  input [31:0]ram_reg;
  input [0:0]WEBWE;
  input [5:0]Q;
  input [5:0]ram_reg_0;
  input [0:0]ram_reg_1;

  wire [31:0]D;
  wire [5:0]Q;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire [31:0]ram_reg;
  wire [5:0]ram_reg_0;
  wire [0:0]ram_reg_1;
  wire weights_0_ce0;

  design_1_MLP_0_mlp_weights_0_ram mlp_weights_0_ram_U
       (.D(D),
        .Q(Q),
        .WEBWE(WEBWE),
        .ap_clk(ap_clk),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .weights_0_ce0(weights_0_ce0));
endmodule

(* ORIG_REF_NAME = "mlp_weights_0_ram" *) 
module design_1_MLP_0_mlp_weights_0_ram
   (D,
    ap_clk,
    weights_0_ce0,
    ram_reg_0,
    WEBWE,
    Q,
    ram_reg_1,
    ram_reg_2);
  output [31:0]D;
  input ap_clk;
  input weights_0_ce0;
  input [31:0]ram_reg_0;
  input [0:0]WEBWE;
  input [5:0]Q;
  input [5:0]ram_reg_1;
  input [0:0]ram_reg_2;

  wire [31:0]D;
  wire [5:0]Q;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire [31:0]ram_reg_0;
  wire [5:0]ram_reg_1;
  wire [0:0]ram_reg_2;
  wire [5:0]weights_0_address0;
  wire weights_0_ce0;
  wire [15:0]NLW_ram_reg_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_ram_reg_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_ram_reg_CASDOUTPB_UNCONNECTED;
  wire [15:14]NLW_ram_reg_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOUTPBDOUTP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "weights_0_U/mlp_weights_0_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "63" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "31" *) 
  (* ram_offset = "960" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b0,1'b1,1'b1,1'b1,weights_0_address0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,weights_0_address0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_ram_reg_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_ram_reg_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_ram_reg_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_ram_reg_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DINADIN(ram_reg_0[15:0]),
        .DINBDIN({1'b1,1'b1,ram_reg_0[31:18]}),
        .DINPADINP(ram_reg_0[17:16]),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT(D[15:0]),
        .DOUTBDOUT({NLW_ram_reg_DOUTBDOUT_UNCONNECTED[15:14],D[31:18]}),
        .DOUTPADOUTP(D[17:16]),
        .DOUTPBDOUTP(NLW_ram_reg_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(weights_0_ce0),
        .ENBWREN(weights_0_ce0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({WEBWE,WEBWE}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_2
       (.I0(Q[5]),
        .I1(ram_reg_1[5]),
        .I2(ram_reg_2),
        .O(weights_0_address0[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_3
       (.I0(Q[4]),
        .I1(ram_reg_1[4]),
        .I2(ram_reg_2),
        .O(weights_0_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_4
       (.I0(Q[3]),
        .I1(ram_reg_1[3]),
        .I2(ram_reg_2),
        .O(weights_0_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_5
       (.I0(Q[2]),
        .I1(ram_reg_1[2]),
        .I2(ram_reg_2),
        .O(weights_0_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_6
       (.I0(Q[1]),
        .I1(ram_reg_1[1]),
        .I2(ram_reg_2),
        .O(weights_0_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_7
       (.I0(Q[0]),
        .I1(ram_reg_1[0]),
        .I2(ram_reg_2),
        .O(weights_0_address0[0]));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module design_1_MLP_0_obuf
   (weights_0_ce0,
    WEBWE,
    E,
    SR,
    \odata_reg[32]_0 ,
    \odata_reg[31]_0 ,
    Q,
    \ireg_reg[0] ,
    \ireg_reg[32] ,
    ap_rst_n,
    \odata_reg[0]_0 ,
    D,
    ap_clk);
  output weights_0_ce0;
  output [0:0]WEBWE;
  output [0:0]E;
  output [0:0]SR;
  output [0:0]\odata_reg[32]_0 ;
  output [31:0]\odata_reg[31]_0 ;
  input [2:0]Q;
  input \ireg_reg[0] ;
  input [0:0]\ireg_reg[32] ;
  input ap_rst_n;
  input [0:0]\odata_reg[0]_0 ;
  input [32:0]D;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg_reg[0] ;
  wire [0:0]\ireg_reg[32] ;
  wire [0:0]\odata_reg[0]_0 ;
  wire [31:0]\odata_reg[31]_0 ;
  wire [0:0]\odata_reg[32]_0 ;
  wire \odata_reg_n_0_[32] ;
  wire p_0_in;
  wire weights_0_ce0;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h5D00FFFF)) 
    \ireg[32]_i_1__0 
       (.I0(\odata_reg_n_0_[32] ),
        .I1(Q[1]),
        .I2(\ireg_reg[0] ),
        .I3(\ireg_reg[32] ),
        .I4(ap_rst_n),
        .O(\odata_reg[32]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \ireg[32]_i_2__0 
       (.I0(\odata_reg_n_0_[32] ),
        .I1(Q[1]),
        .I2(\ireg_reg[0] ),
        .I3(\ireg_reg[32] ),
        .O(E));
  LUT4 #(
    .INIT(16'hF700)) 
    \j_0_reg_100[5]_i_1 
       (.I0(\odata_reg_n_0_[32] ),
        .I1(Q[1]),
        .I2(\ireg_reg[0] ),
        .I3(Q[0]),
        .O(SR));
  LUT3 #(
    .INIT(8'h5D)) 
    \odata[32]_i_1__0 
       (.I0(\odata_reg_n_0_[32] ),
        .I1(Q[1]),
        .I2(\ireg_reg[0] ),
        .O(p_0_in));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[0]),
        .Q(\odata_reg[31]_0 [0]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[10]),
        .Q(\odata_reg[31]_0 [10]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[11]),
        .Q(\odata_reg[31]_0 [11]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[12]),
        .Q(\odata_reg[31]_0 [12]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[13]),
        .Q(\odata_reg[31]_0 [13]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[14]),
        .Q(\odata_reg[31]_0 [14]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[15]),
        .Q(\odata_reg[31]_0 [15]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[16]),
        .Q(\odata_reg[31]_0 [16]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[17]),
        .Q(\odata_reg[31]_0 [17]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[18]),
        .Q(\odata_reg[31]_0 [18]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[19]),
        .Q(\odata_reg[31]_0 [19]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[1]),
        .Q(\odata_reg[31]_0 [1]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[20]),
        .Q(\odata_reg[31]_0 [20]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[21]),
        .Q(\odata_reg[31]_0 [21]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[22]),
        .Q(\odata_reg[31]_0 [22]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[23]),
        .Q(\odata_reg[31]_0 [23]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[24]),
        .Q(\odata_reg[31]_0 [24]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[25]),
        .Q(\odata_reg[31]_0 [25]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[26]),
        .Q(\odata_reg[31]_0 [26]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[27]),
        .Q(\odata_reg[31]_0 [27]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[28]),
        .Q(\odata_reg[31]_0 [28]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[29]),
        .Q(\odata_reg[31]_0 [29]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[2]),
        .Q(\odata_reg[31]_0 [2]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[30]),
        .Q(\odata_reg[31]_0 [30]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[31]),
        .Q(\odata_reg[31]_0 [31]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[32]),
        .Q(\odata_reg_n_0_[32] ),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[3]),
        .Q(\odata_reg[31]_0 [3]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[4]),
        .Q(\odata_reg[31]_0 [4]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[5]),
        .Q(\odata_reg[31]_0 [5]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[6]),
        .Q(\odata_reg[31]_0 [6]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[7]),
        .Q(\odata_reg[31]_0 [7]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[8]),
        .Q(\odata_reg[31]_0 [8]),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[9]),
        .Q(\odata_reg[31]_0 [9]),
        .R(\odata_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    ram_reg_i_1
       (.I0(Q[2]),
        .I1(\odata_reg_n_0_[32] ),
        .I2(\ireg_reg[0] ),
        .I3(Q[1]),
        .O(weights_0_ce0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ram_reg_i_8
       (.I0(\odata_reg_n_0_[32] ),
        .I1(Q[1]),
        .I2(\ireg_reg[0] ),
        .O(WEBWE));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module design_1_MLP_0_obuf_2
   (SR,
    Q,
    \odata_reg[32]_0 ,
    M_AXIS_TREADY_0,
    ap_rst_n,
    M_AXIS_TREADY,
    \ireg_reg[32] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [32:0]Q;
  output [0:0]\odata_reg[32]_0 ;
  output [0:0]M_AXIS_TREADY_0;
  input ap_rst_n;
  input M_AXIS_TREADY;
  input [0:0]\ireg_reg[32] ;
  input [32:0]D;
  input ap_clk;

  wire [32:0]D;
  wire M_AXIS_TREADY;
  wire [0:0]M_AXIS_TREADY_0;
  wire [32:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[32] ;
  wire \odata[31]_i_2_n_0 ;
  wire [0:0]\odata_reg[32]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[32]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(Q[32]),
        .I2(\ireg_reg[32] ),
        .I3(ap_rst_n),
        .O(M_AXIS_TREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[32]_i_2 
       (.I0(Q[32]),
        .I1(M_AXIS_TREADY),
        .I2(\ireg_reg[32] ),
        .O(\odata_reg[32]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata[31]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hD)) 
    \odata[31]_i_2 
       (.I0(Q[32]),
        .I1(M_AXIS_TREADY),
        .O(\odata[31]_i_2_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_reg[23] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_reg[24] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_reg[25] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \odata_reg[26] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \odata_reg[27] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \odata_reg[28] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \odata_reg[29] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_reg[30] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \odata_reg[31] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module design_1_MLP_0_obuf__parameterized0
   (E,
    SR,
    M_AXIS_TLAST,
    M_AXIS_TREADY,
    Q,
    ap_rst_n,
    \odata_reg[0]_0 ,
    D,
    ap_clk);
  output [0:0]E;
  output [0:0]SR;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;
  input [0:0]Q;
  input ap_rst_n;
  input [0:0]\odata_reg[0]_0 ;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata[0]_i_1__1_n_0 ;
  wire [0:0]\odata_reg[0]_0 ;
  wire \odata_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[1]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(\odata_reg_n_0_[1] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[1]_i_2 
       (.I0(\odata_reg_n_0_[1] ),
        .I1(M_AXIS_TREADY),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata[0]_i_1__1 
       (.I0(\odata_reg_n_0_[1] ),
        .I1(M_AXIS_TREADY),
        .O(\odata[0]_i_1__1_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__1_n_0 ),
        .D(D[0]),
        .Q(M_AXIS_TLAST),
        .R(\odata_reg[0]_0 ));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(\odata_reg_n_0_[1] ),
        .R(\odata_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_MLP_0_regslice_both
   (SR,
    \ireg_reg[32] ,
    \odata_reg[32] ,
    \ap_CS_fsm_reg[4] ,
    E,
    \ap_CS_fsm_reg[4]_0 ,
    ap_rst_n,
    Q,
    D,
    M_AXIS_TREADY,
    icmp_ln26_fu_155_p2,
    icmp_ln22_fu_133_p2,
    ap_clk);
  output [0:0]SR;
  output [0:0]\ireg_reg[32] ;
  output [32:0]\odata_reg[32] ;
  output [2:0]\ap_CS_fsm_reg[4] ;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[4]_0 ;
  input ap_rst_n;
  input [3:0]Q;
  input [31:0]D;
  input M_AXIS_TREADY;
  input icmp_ln26_fu_155_p2;
  input icmp_ln22_fu_133_p2;
  input ap_clk;

  wire [31:0]D;
  wire [0:0]E;
  wire M_AXIS_TREADY;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire [0:0]\ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_0;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln22_fu_133_p2;
  wire icmp_ln26_fu_155_p2;
  wire ireg01_out;
  wire [0:0]\ireg_reg[32] ;
  wire obuf_inst_n_35;
  wire [32:0]\odata_reg[32] ;

  design_1_MLP_0_ibuf_1 ibuf_inst
       (.D({ibuf_inst_n_0,ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32}),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_35),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[4]_0 (\ap_CS_fsm_reg[4]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln22_fu_133_p2(icmp_ln22_fu_133_p2),
        .icmp_ln26_fu_155_p2(icmp_ln26_fu_155_p2),
        .\ireg_reg[31]_0 (D),
        .\ireg_reg[32]_0 (\ireg_reg[32] ),
        .\ireg_reg[32]_1 (ireg01_out));
  design_1_MLP_0_obuf_2 obuf_inst
       (.D({ibuf_inst_n_0,ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32}),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TREADY_0(obuf_inst_n_35),
        .Q(\odata_reg[32] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[32] (\ireg_reg[32] ),
        .\odata_reg[32]_0 (ireg01_out));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_MLP_0_regslice_both_0
   (weights_0_ce0,
    icmp_ln22_fu_133_p2,
    WEBWE,
    S_AXIS_TREADY,
    SR,
    \odata_reg[31] ,
    Q,
    \ireg_reg[0] ,
    D,
    ap_rst_n,
    ap_clk,
    \odata_reg[0] );
  output weights_0_ce0;
  output icmp_ln22_fu_133_p2;
  output [0:0]WEBWE;
  output S_AXIS_TREADY;
  output [0:0]SR;
  output [31:0]\odata_reg[31] ;
  input [2:0]Q;
  input [5:0]\ireg_reg[0] ;
  input [32:0]D;
  input ap_rst_n;
  input ap_clk;
  input [0:0]\odata_reg[0] ;

  wire [32:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire S_AXIS_TREADY;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_33;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln22_fu_133_p2;
  wire ireg01_out;
  wire [5:0]\ireg_reg[0] ;
  wire obuf_inst_n_4;
  wire [0:0]\odata_reg[0] ;
  wire [31:0]\odata_reg[31] ;
  wire p_0_in;
  wire weights_0_ce0;

  design_1_MLP_0_ibuf ibuf_inst
       (.D({ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33}),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_4),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (\ireg_reg[0] ),
        .\ireg_reg[32]_0 (D),
        .\j_0_reg_100_reg[0] (icmp_ln22_fu_133_p2));
  design_1_MLP_0_obuf obuf_inst
       (.D({ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33}),
        .E(ireg01_out),
        .Q(Q),
        .SR(SR),
        .WEBWE(WEBWE),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0] (icmp_ln22_fu_133_p2),
        .\ireg_reg[32] (p_0_in),
        .\odata_reg[0]_0 (\odata_reg[0] ),
        .\odata_reg[31]_0 (\odata_reg[31] ),
        .\odata_reg[32]_0 (obuf_inst_n_4),
        .weights_0_ce0(weights_0_ce0));
endmodule

(* ORIG_REF_NAME = "regslice_both_w1" *) 
module design_1_MLP_0_regslice_both_w1
   (M_AXIS_TLAST,
    Q,
    \odata_reg[1] ,
    tmp_last_reg_205,
    M_AXIS_TREADY,
    ap_rst_n,
    D,
    ap_clk,
    SR);
  output M_AXIS_TLAST;
  input [0:0]Q;
  input [0:0]\odata_reg[1] ;
  input tmp_last_reg_205;
  input M_AXIS_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire ireg01_out;
  wire obuf_inst_n_1;
  wire [0:0]\odata_reg[1] ;
  wire p_0_in;
  wire tmp_last_reg_205;

  design_1_MLP_0_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\ireg_reg[1]_0 ({D,tmp_last_reg_205}),
        .\odata_reg[1] (Q),
        .\odata_reg[1]_0 (\odata_reg[1] ));
  design_1_MLP_0_obuf__parameterized0 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_reg[0]_0 (SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

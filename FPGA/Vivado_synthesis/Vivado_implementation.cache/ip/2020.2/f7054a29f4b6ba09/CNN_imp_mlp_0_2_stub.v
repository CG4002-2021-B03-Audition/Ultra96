// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Feb 16 00:20:09 2021
// Host        : MOONCELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CNN_imp_mlp_0_2_stub.v
// Design      : CNN_imp_mlp_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mlp,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_r_TVALID, in_r_TREADY, 
  in_r_TDATA, out_r_TVALID, out_r_TREADY, out_r_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_r_TVALID,in_r_TREADY,in_r_TDATA[7:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[7:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_r_TVALID;
  output in_r_TREADY;
  input [7:0]in_r_TDATA;
  output out_r_TVALID;
  input out_r_TREADY;
  output [7:0]out_r_TDATA;
endmodule

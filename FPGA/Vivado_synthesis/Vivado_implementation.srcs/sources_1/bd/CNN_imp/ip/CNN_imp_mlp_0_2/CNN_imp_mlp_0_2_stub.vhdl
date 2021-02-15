-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Feb 16 00:20:15 2021
-- Host        : MOONCELL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/CNNproj/Ultra96/FPGA/Vivado_synthesis/Vivado_implementation.srcs/sources_1/bd/CNN_imp/ip/CNN_imp_mlp_0_2/CNN_imp_mlp_0_2_stub.vhdl
-- Design      : CNN_imp_mlp_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CNN_imp_mlp_0_2 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_r_TVALID : in STD_LOGIC;
    in_r_TREADY : out STD_LOGIC;
    in_r_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_r_TVALID : out STD_LOGIC;
    out_r_TREADY : in STD_LOGIC;
    out_r_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end CNN_imp_mlp_0_2;

architecture stub of CNN_imp_mlp_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,in_r_TVALID,in_r_TREADY,in_r_TDATA[7:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mlp,Vivado 2020.2";
begin
end;

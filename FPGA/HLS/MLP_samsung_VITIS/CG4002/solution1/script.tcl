############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CG4002
set_top mlp
add_files main.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output F:/CNNproj/Ultra96/FPGA/HLS/MLP_samsung/mlp -rtl verilog
source "./CG4002/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output F:/CNNproj/Ultra96/FPGA/HLS/MLP_samsung/mlp

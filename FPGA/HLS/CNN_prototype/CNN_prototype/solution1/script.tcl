############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CNN_prototype
set_top mlp_dance3
add_files definition.h
add_files main.cpp
add_files math_functions.h
add_files -tb CNN_prototype/testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./CNN_prototype/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MLP_samsung_vivado
set_top mlp
add_files math_functions.h
add_files main.cpp
add_files definition.h
add_files -tb MLP_samsung_vivado/testing -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
#source "./MLP_samsung_vivado/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog

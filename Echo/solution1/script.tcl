############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Echo
set_top Echo
add_files src/Echo.cpp
add_files src/Echo.h
add_files -tb src/Echo_test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1} -tool vivado
create_clock -period 10 -name default
#source "./Echo/solution1/directives.tcl"
csim_design -compiler clang
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

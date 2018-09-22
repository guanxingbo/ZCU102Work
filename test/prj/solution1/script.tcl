############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj
set_top ddr_hls_test
add_files top.cc
add_files header.h
add_files -tb tb.cc -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
source "./prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DDR_IP
set_top ddr_hls_test
add_files ../Zedboard_Intergrating_HLS_IP_AND_DDR/ddr_hls_test/header.h
add_files top.cc
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./DDR_IP/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow syn -rtl verilog -format ip_catalog

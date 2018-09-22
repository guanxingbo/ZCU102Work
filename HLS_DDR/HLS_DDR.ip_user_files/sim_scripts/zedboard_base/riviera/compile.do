vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/zynq_ultra_ps_e_vip_v1_0_3
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/xlconstant_v1_1_5
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/axi_protocol_converter_v2_1_17
vlib riviera/axi_clock_converter_v2_1_16
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/axi_dwidth_converter_v2_1_17

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap zynq_ultra_ps_e_vip_v1_0_3 riviera/zynq_ultra_ps_e_vip_v1_0_3
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17
vmap axi_clock_converter_v2_1_16 riviera/axi_clock_converter_v2_1_16
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap axi_dwidth_converter_v2_1_17 riviera/axi_dwidth_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_addrbkb.v" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_BUS_A_s_axi.v" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_gmem_m_axi.v" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test.v" \
"../../../bd/zedboard_base/ip/zedboard_base_ddr_hls_test_0_0/sim/zedboard_base_ddr_hls_test_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_3  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_zynq_ultra_ps_e_0_0/sim/zedboard_base_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/zedboard_base/ip/zedboard_base_rst_ps8_0_99M_0/sim/zedboard_base_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/sim/bd_b7bb.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_5/sim/bd_b7bb_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_11/sim/bd_b7bb_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_12/sim/bd_b7bb_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_6/sim/bd_b7bb_sarn_0.sv" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_7/sim/bd_b7bb_srn_0.sv" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_8/sim/bd_b7bb_sawn_0.sv" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_9/sim/bd_b7bb_swn_0.sv" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_10/sim/bd_b7bb_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_2/sim/bd_b7bb_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_3/sim/bd_b7bb_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_4/sim/bd_b7bb_s00sic_0.sv" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_0/sim/bd_b7bb_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_1/sim/bd_b7bb_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/sim/zedboard_base_axi_smc_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_xbar_1/sim/zedboard_base_xbar_1.v" \
"../../../bd/zedboard_base/sim/zedboard_base.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_16  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_17  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl" "+incdir+../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zedboard_base/ip/zedboard_base_auto_ds_1/sim/zedboard_base_auto_ds_1.v" \
"../../../bd/zedboard_base/ip/zedboard_base_auto_pc_1/sim/zedboard_base_auto_pc_1.v" \
"../../../bd/zedboard_base/ip/zedboard_base_auto_ds_0/sim/zedboard_base_auto_ds_0.v" \
"../../../bd/zedboard_base/ip/zedboard_base_auto_pc_0/sim/zedboard_base_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


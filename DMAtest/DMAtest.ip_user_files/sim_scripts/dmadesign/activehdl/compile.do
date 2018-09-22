vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_3
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_19
vlib activehdl/axi_sg_v4_1_10
vlib activehdl/axi_dma_v7_1_18
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v1_1_18
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_16
vlib activehdl/axi_register_slice_v2_1_17
vlib activehdl/axi_protocol_converter_v2_1_17
vlib activehdl/axi_clock_converter_v2_1_16
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/axi_dwidth_converter_v2_1_17

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap zynq_ultra_ps_e_vip_v1_0_3 activehdl/zynq_ultra_ps_e_vip_v1_0_3
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_19 activehdl/axi_datamover_v5_1_19
vmap axi_sg_v4_1_10 activehdl/axi_sg_v4_1_10
vmap axi_dma_v7_1_18 activehdl/axi_dma_v7_1_18
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_18 activehdl/axis_data_fifo_v1_1_18
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_16 activehdl/axi_data_fifo_v2_1_16
vmap axi_register_slice_v2_1_17 activehdl/axi_register_slice_v2_1_17
vmap axi_protocol_converter_v2_1_17 activehdl/axi_protocol_converter_v2_1_17
vmap axi_clock_converter_v2_1_16 activehdl/axi_clock_converter_v2_1_16
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap axi_dwidth_converter_v2_1_17 activehdl/axi_dwidth_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_3  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_zynq_ultra_ps_e_0_0/sim/dmadesign_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_10 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_18 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dmadesign/ip/dmadesign_axi_dma_0_0/sim/dmadesign_axi_dma_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_xlconcat_0_0/sim/dmadesign_xlconcat_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_18  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axis_data_fifo_0_0/sim/dmadesign_axis_data_fifo_0_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dmadesign/ip/dmadesign_rst_ps8_0_99M_0/sim/dmadesign_rst_ps8_0_99M_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_10/sim/bd_eaf1_s00a2s_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_16/sim/bd_eaf1_s01a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_20/sim/bd_eaf1_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_26/sim/bd_eaf1_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_21/sim/bd_eaf1_m00arn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_22/sim/bd_eaf1_m00rn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_23/sim/bd_eaf1_m00awn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_24/sim/bd_eaf1_m00wn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_25/sim/bd_eaf1_m00bn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_17/sim/bd_eaf1_sawn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_18/sim/bd_eaf1_swn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_19/sim/bd_eaf1_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_13/sim/bd_eaf1_s01mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_14/sim/bd_eaf1_s01tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_15/sim/bd_eaf1_s01sic_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_11/sim/bd_eaf1_sarn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_12/sim/bd_eaf1_srn_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_7/sim/bd_eaf1_s00mmu_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_8/sim/bd_eaf1_s00tr_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_9/sim/bd_eaf1_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_2/sim/bd_eaf1_arsw_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_3/sim/bd_eaf1_rsw_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_4/sim/bd_eaf1_awsw_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_5/sim/bd_eaf1_wsw_0.sv" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_6/sim/bd_eaf1_bsw_0.sv" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_0/sim/bd_eaf1_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_1/sim/bd_eaf1_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/sim/bd_eaf1.v" \
"../../../bd/dmadesign/ip/dmadesign_axi_smc_0/sim/dmadesign_axi_smc_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_16  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_17  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/verilog" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl" "+incdir+../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/verilog" "+incdir+/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dmadesign/ip/dmadesign_auto_ds_0/sim/dmadesign_auto_ds_0.v" \
"../../../bd/dmadesign/ip/dmadesign_auto_pc_0/sim/dmadesign_auto_pc_0.v" \
"../../../bd/dmadesign/sim/dmadesign.v" \

vlog -work xil_defaultlib \
"glbl.v"


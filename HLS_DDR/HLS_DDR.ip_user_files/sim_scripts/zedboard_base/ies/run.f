-makelib ies_lib/xilinx_vip -sv \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_addrbkb.v" \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_BUS_A_s_axi.v" \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test_gmem_m_axi.v" \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/9cbf/hdl/verilog/ddr_hls_test.v" \
  "../../../bd/zedboard_base/ip/zedboard_base_ddr_hls_test_0_0/sim/zedboard_base_ddr_hls_test_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_3 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_3 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e4d1/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_zynq_ultra_ps_e_0_0/sim/zedboard_base_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_rst_ps8_0_99M_0/sim/zedboard_base_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/sim/bd_b7bb.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_5/sim/bd_b7bb_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_11/sim/bd_b7bb_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_12/sim/bd_b7bb_m00e_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_6/sim/bd_b7bb_sarn_0.sv" \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_7/sim/bd_b7bb_srn_0.sv" \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_8/sim/bd_b7bb_sawn_0.sv" \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_9/sim/bd_b7bb_swn_0.sv" \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_10/sim/bd_b7bb_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_2/sim/bd_b7bb_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_3/sim/bd_b7bb_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_4/sim/bd_b7bb_s00sic_0.sv" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_0/sim/bd_b7bb_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/bd_0/ip/ip_1/sim/bd_b7bb_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_axi_smc_1/sim/zedboard_base_axi_smc_1.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_17 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_16 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_18 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_xbar_1/sim/zedboard_base_xbar_1.v" \
  "../../../bd/zedboard_base/sim/zedboard_base.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_17 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_16 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_17 \
  "../../../../HLS_DDR.srcs/sources_1/bd/zedboard_base/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zedboard_base/ip/zedboard_base_auto_ds_1/sim/zedboard_base_auto_ds_1.v" \
  "../../../bd/zedboard_base/ip/zedboard_base_auto_pc_1/sim/zedboard_base_auto_pc_1.v" \
  "../../../bd/zedboard_base/ip/zedboard_base_auto_ds_0/sim/zedboard_base_auto_ds_0.v" \
  "../../../bd/zedboard_base/ip/zedboard_base_auto_pc_0/sim/zedboard_base_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


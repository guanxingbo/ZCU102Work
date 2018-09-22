-makelib xcelium_lib/xilinx_vip -sv \
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
-makelib xcelium_lib/xil_defaultlib -sv \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/guan/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_3 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_3 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e4d1/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_zynq_ultra_ps_e_0_0/sim/dmadesign_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_11 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_19 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_10 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_18 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_axi_dma_0_0/sim/dmadesign_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_xlconcat_0_0/sim/dmadesign_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v1_1_18 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_axis_data_fifo_0_0/sim/dmadesign_axis_data_fifo_0_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_rst_ps8_0_99M_0/sim/dmadesign_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_10/sim/bd_eaf1_s00a2s_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_16/sim/bd_eaf1_s01a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_20/sim/bd_eaf1_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_26/sim/bd_eaf1_m00e_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_21/sim/bd_eaf1_m00arn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_22/sim/bd_eaf1_m00rn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_23/sim/bd_eaf1_m00awn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_24/sim/bd_eaf1_m00wn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_25/sim/bd_eaf1_m00bn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_17/sim/bd_eaf1_sawn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_18/sim/bd_eaf1_swn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_19/sim/bd_eaf1_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_13/sim/bd_eaf1_s01mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_14/sim/bd_eaf1_s01tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_15/sim/bd_eaf1_s01sic_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_11/sim/bd_eaf1_sarn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_12/sim/bd_eaf1_srn_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_7/sim/bd_eaf1_s00mmu_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_8/sim/bd_eaf1_s00tr_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_9/sim/bd_eaf1_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_2/sim/bd_eaf1_arsw_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_3/sim/bd_eaf1_rsw_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_4/sim/bd_eaf1_awsw_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_5/sim/bd_eaf1_wsw_0.sv" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_6/sim/bd_eaf1_bsw_0.sv" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_0/sim/bd_eaf1_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/ip/ip_1/sim/bd_eaf1_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/bd_0/sim/bd_eaf1.v" \
  "../../../bd/dmadesign/ip/dmadesign_axi_smc_0/sim/dmadesign_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_17 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_16 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_1 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_17 \
  "../../../../DMAtest.srcs/sources_1/bd/dmadesign/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dmadesign/ip/dmadesign_auto_ds_0/sim/dmadesign_auto_ds_0.v" \
  "../../../bd/dmadesign/ip/dmadesign_auto_pc_0/sim/dmadesign_auto_pc_0.v" \
  "../../../bd/dmadesign/sim/dmadesign.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


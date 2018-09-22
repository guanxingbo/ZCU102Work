connect -url tcp:127.0.0.1:3121
source /home/guan/Xilinx/SDK/2018.2/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
reset_apu
targets -set -nocase -filter {name =~"RPU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
clear_rpu_reset
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478" && level==0} -index 0
fpga -file /home/guan/Xilinx/Project/HLS_DDR/HLS_DDR.sdk/zedboard_base_wrapper_hw_platform_0/zedboard_base_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
loadhw -hw /home/guan/Xilinx/Project/HLS_DDR/HLS_DDR.sdk/zedboard_base_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
source /home/guan/Xilinx/Project/HLS_DDR/HLS_DDR.sdk/zedboard_base_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
rst -processor
dow /home/guan/Xilinx/Project/HLS_DDR/HLS_DDR.sdk/testtestbm/Debug/testtestbm.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A1D478"} -index 1
con

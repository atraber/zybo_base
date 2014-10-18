#!/bin/bash


# get device tree blob
./Linux-Digilent-Dev/scripts/dtc/dtc -I dts -O dtb -o ./boot/xilinx.dtb ./zybo_bsd/zybo_bsd.sdk/device_tree_bsp_1/system.dts

# get u-boot
cp ./u-boot-Digilent-Dev/u-boot ./boot/

# get fsbl
cp ./zybo_bsd/zybo_bsd.sdk/fsbl/Debug/fsbl.elf ./boot/

# get ps7_init.tcl
cp ./zybo_bsd/zybo_bsd.sdk/system_wrapper_hw_platform_2/ps7_init.tcl ./boot/

# get linux kernel image
cp ./Linux-Digilent-Dev/arch/arm/boot/uImage ./boot/

# get fpga bitstream
cp ./zybo_bsd/zybo_bsd.sdk/system_wrapper_hw_platform_2/system_wrapper.bit ./boot/


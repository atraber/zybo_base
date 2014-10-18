#!/bin/bash

################################################################################
# compile u-boot
################################################################################

cd ./u-boot-Digilent-Dev
make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi- xilinx_ZYBO_defconfig
make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi-

# add mkimage to path
export PATH=$PATH:$(pwd)/tools

cd ..


################################################################################
# Compile Linux
################################################################################
cd ./Linux-Digilent-Dev

make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi- xilinx_zynq_defconfig
make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi-

make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi- UIMAGE_LOADADDR=0x8000 uImage

cd ..

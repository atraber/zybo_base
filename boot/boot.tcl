connect arm hw

rst

fpga -f zybo_base.bit

source ./ps7_init.tcl
ps7_init
ps7_post_config

# FSBL
dow fsbl.elf
con
exec sleep 2
stop

# Linux
dow -data xilinx.dtb 0x2a00000
dow -data uramdisk.image.gz 0x2000000
dow -data uImage 0x3000000

# U-boot
dow u-boot
con

#run

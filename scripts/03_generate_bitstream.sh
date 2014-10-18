#!/bin/bash

echo "You have to start vivado and generate the bitstream yourself, this step is not yet automated"

#   
#   ################################################################################
#   # open block design
#   ################################################################################
#   
#   cd zybo_bsd
#   vivado -source ./zybo_bsd.runs/open_bd.tcl -mode batch ./zybo_bsd.xpr
#   cd ..
#   
#   ################################################################################
#   # synthesize
#   ################################################################################
#   cd zybo_bsd/zybo_bsd.runs/synth_1
#   
#   vivado -log system_wrapper.vds -m64 -mode batch -messageDb vivado.pb -source system_wrapper.tcl
#   
#   cd ../../..
#   
#   
#   ################################################################################
#   # implementation
#   ################################################################################
#   cd zybo_bsd/zybo_bsd.runs/impl_1
#   
#   vivado -log system_wrapper.vdi -applog -m64 -messageDb vivado.pb -mode batch -source system_wrapper.tcl -notrace
#   
#   cd ../../..

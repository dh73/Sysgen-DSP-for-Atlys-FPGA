#!/bin/sh

# 
# PlanAhead(TM)
# runme.sh: a PlanAhead-generated Runs Script for UNIX
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/PlanAhead/bin
else
  PATH=/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/PlanAhead/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/lib/lin64
else
  LD_LIBRARY_PATH=/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep ngdbuild -intstyle ise -p xc6slx45tfgg484-3 -dd _ngo -uc "hwcosim_top.ucf" "hwcosim_top.edf"
EAStep map -intstyle pa -w -pr b "hwcosim_top.ngd"
EAStep par -intstyle pa "hwcosim_top.ncd" -w "hwcosim_top_routed.ncd" -ol high -xe n
EAStep trce -intstyle ise -o "hwcosim_top.twr" -v 30 -l 30 "hwcosim_top_routed.ncd" "hwcosim_top.pcf"
EAStep xdl -secure -ncd2xdl -nopips "hwcosim_top_routed.ncd" "hwcosim_top_routed.xdl"
EAStep bitgen "hwcosim_top_routed.ncd" "hwcosim_top.bit" "hwcosim_top.pcf" -g StartUpClk:JtagClk -w -intstyle pa

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

EAStep ngdbuild -intstyle ise -p xc6slx45tcsg324-3N -dd _ngo -uc "rt_audio_controller.ucf" "rt_audio_controller.edf"
EAStep map -intstyle pa -w "rt_audio_controller.ngd"
EAStep par -intstyle pa "rt_audio_controller.ncd" -w "rt_audio_controller_routed.ncd"
EAStep trce -intstyle ise -o "rt_audio_controller.twr" -v 30 -l 30 "rt_audio_controller_routed.ncd" "rt_audio_controller.pcf"
EAStep xdl -secure -ncd2xdl -nopips "rt_audio_controller_routed.ncd" "rt_audio_controller_routed.xdl"

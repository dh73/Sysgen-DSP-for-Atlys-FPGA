-- If you see error messages concerning missing libraries for
-- XilinxCoreLib, unisims, or simprims, you may not have set
-- up your ModelSim environment correctly.  See the Xilinx
-- Support Website for instructions telling how to compile
-- these libraries.

vlib work

vlog /home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/verilog/src/glbl.v
vlog  sobel_t.v
vlog  sobel_t_cw.v

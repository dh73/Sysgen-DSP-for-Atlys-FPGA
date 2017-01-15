// Generated from Simulink block "noise_removal"

(* core_generation_info = "noise_removal,sysgen_core,{clock_period=15.00000000,clocking=Clock_Enables,compilation=SP605_(JTAG),sample_periods=1.00000000000,testbench=0,total_blocks=20,xilinx_constant_block_block=1,xilinx_fir_compiler_5_0_block=1,xilinx_gateway_in_block=1,xilinx_gateway_out_block=2,xilinx_system_generator_block=1,}" *)
module noise_removal (
  ce_1,
  clk_1,
  gateway_in,
  gateway_out,
  gateway_out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] gateway_in;
  output [36:0] gateway_out;
  output [15:0] gateway_out1;

  wire [0:0] ce_1_sg_x0;
  wire [0:0] clk_1_sg_x0;
  wire [0:0] constant_op_net;
  wire [15:0] gateway_in_net_x0;
  wire [36:0] gateway_out_net;

  assign ce_1_sg_x0 = ce_1;
  assign clk_1_sg_x0 = clk_1;
  assign gateway_in_net_x0 = gateway_in;
  assign gateway_out = gateway_out_net;
  assign gateway_out1 = gateway_in_net_x0;


  constant_5e90e4a8ec  constant_x0 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );

  xlfir_compiler_df016c543556b6ac794122521aed0f92  fir_compiler_5_0 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .din(gateway_in_net_x0),
    .nd(constant_op_net),
    .src_ce(ce_1_sg_x0),
    .src_clk(clk_1_sg_x0),
    .dout(gateway_out_net)
  );
endmodule

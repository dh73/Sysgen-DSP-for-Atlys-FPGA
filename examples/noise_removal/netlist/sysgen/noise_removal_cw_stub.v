`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module noise_removal_cw_stub
(
  ce,
  clk,// clock period = 15.0 ns (66.66666666666667 Mhz)
  gateway_in,
  gateway_out,
  gateway_out1
  );

  input  ce;
  input  clk;// clock period = 15.0 ns (66.66666666666667 Mhz)
  input [15:0] gateway_in;
  output [36:0] gateway_out;
  output [15:0] gateway_out1;

noise_removal_cw noise_removal_cw_i (
  .ce(ce),
  .clk(clk),
  .gateway_in(gateway_in),
  .gateway_out(gateway_out),
  .gateway_out1(gateway_out1));

endmodule 

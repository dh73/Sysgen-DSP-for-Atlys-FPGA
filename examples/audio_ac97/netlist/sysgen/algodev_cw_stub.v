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


module algodev_cw_stub
(
  audioleftin,
  audioleftout,
  audiorightin,
  audiorightout,
  ce,
  clk,// clock period = 10.0 ns (100.0 Mhz)
  enable
  );

  input [15:0] audioleftin;
  output [17:0] audioleftout;
  input [15:0] audiorightin;
  output [17:0] audiorightout;
  input  ce;
  input  clk;// clock period = 10.0 ns (100.0 Mhz)
  input [0:0] enable;

algodev_cw algodev_cw_i (
  .audioleftin(audioleftin),
  .audioleftout(audioleftout),
  .audiorightin(audiorightin),
  .audiorightout(audiorightout),
  .ce(ce),
  .clk(clk),
  .enable(enable));

endmodule 

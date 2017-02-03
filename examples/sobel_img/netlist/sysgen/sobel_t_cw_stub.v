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


module sobel_t_cw_stub
(
  b,
  ce,
  clk,// clock period = 15.0 ns (66.66666666666667 Mhz)
  g,
  r,
  sobelout
  );

  input [15:0] b;
  input  ce;
  input  clk;// clock period = 15.0 ns (66.66666666666667 Mhz)
  input [15:0] g;
  input [15:0] r;
  output [40:0] sobelout;

sobel_t_cw sobel_t_cw_i (
  .b(b),
  .ce(ce),
  .clk(clk),
  .g(g),
  .r(r),
  .sobelout(sobelout));

endmodule 

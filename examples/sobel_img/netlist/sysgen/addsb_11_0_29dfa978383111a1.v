////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_29dfa978383111a1.v
// /___/   /\     Timestamp: Thu Feb  2 18:32:29 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_29dfa978383111a1.ngc /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_29dfa978383111a1.v 
// Device	: 6slx45tfgg484-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_29dfa978383111a1.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_29dfa978383111a1.v
// # of Modules	: 1
// Design Name	: addsb_11_0_29dfa978383111a1
// Xilinx        : /home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module addsb_11_0_29dfa978383111a1 (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [39 : 0] a;
  input [39 : 0] b;
  output [39 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000079  (
    .I0(a[39]),
    .I1(b[39]),
    .O(\blk00000001/sig000000a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000078  (
    .I0(a[38]),
    .I1(b[38]),
    .O(\blk00000001/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000077  (
    .I0(a[37]),
    .I1(b[37]),
    .O(\blk00000001/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000076  (
    .I0(a[36]),
    .I1(b[36]),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000075  (
    .I0(a[35]),
    .I1(b[35]),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000074  (
    .I0(a[34]),
    .I1(b[34]),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000073  (
    .I0(a[33]),
    .I1(b[33]),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000072  (
    .I0(a[32]),
    .I1(b[32]),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000071  (
    .I0(a[31]),
    .I1(b[31]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000070  (
    .I0(a[30]),
    .I1(b[30]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006f  (
    .I0(a[29]),
    .I1(b[29]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006e  (
    .I0(a[28]),
    .I1(b[28]),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006d  (
    .I0(a[27]),
    .I1(b[27]),
    .O(\blk00000001/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006c  (
    .I0(a[26]),
    .I1(b[26]),
    .O(\blk00000001/sig00000086 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006b  (
    .I0(a[25]),
    .I1(b[25]),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000006a  (
    .I0(a[24]),
    .I1(b[24]),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069  (
    .I0(a[23]),
    .I1(b[23]),
    .O(\blk00000001/sig00000089 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000068  (
    .I0(a[22]),
    .I1(b[22]),
    .O(\blk00000001/sig0000008a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067  (
    .I0(a[21]),
    .I1(b[21]),
    .O(\blk00000001/sig0000008b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000066  (
    .I0(a[20]),
    .I1(b[20]),
    .O(\blk00000001/sig0000008c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000065  (
    .I0(a[19]),
    .I1(b[19]),
    .O(\blk00000001/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000064  (
    .I0(a[18]),
    .I1(b[18]),
    .O(\blk00000001/sig0000008e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(a[17]),
    .I1(b[17]),
    .O(\blk00000001/sig0000008f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000090 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000091 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000092 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000093 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig00000094 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig00000095 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig00000096 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig00000097 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000098 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000099 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000009a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig0000009b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig0000009c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig0000009d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig0000009e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig0000009f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig000000a1 )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000079 ),
    .DI(a[0]),
    .S(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig000000c8 )
  );
  MUXCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig000000c8 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig000000c7 )
  );
  MUXCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig000000c7 ),
    .DI(a[2]),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000c6 )
  );
  MUXCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig000000c6 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig000000c5 )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig000000c5 ),
    .DI(a[4]),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig000000c4 )
  );
  MUXCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig000000c4 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig000000c3 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig000000c2 )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig000000c2 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig000000c1 )
  );
  MUXCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig000000c1 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig000000c0 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig000000c0 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig000000bf )
  );
  MUXCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig000000bf ),
    .DI(a[10]),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig000000be )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig000000be ),
    .DI(a[11]),
    .S(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig000000bd )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig000000bd ),
    .DI(a[12]),
    .S(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig000000bc )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig000000bc ),
    .DI(a[13]),
    .S(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig000000bb )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig000000bb ),
    .DI(a[14]),
    .S(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000ba )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000ba ),
    .DI(a[15]),
    .S(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig000000b9 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000b9 ),
    .DI(a[16]),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000b8 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000b8 ),
    .DI(a[17]),
    .S(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig000000b7 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000b7 ),
    .DI(a[18]),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000b6 )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000b6 ),
    .DI(a[19]),
    .S(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig000000b5 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig000000b5 ),
    .DI(a[20]),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000b4 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig000000b4 ),
    .DI(a[21]),
    .S(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig000000b3 )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig000000b3 ),
    .DI(a[22]),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000b2 )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig000000b2 ),
    .DI(a[23]),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000b1 )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig000000b1 ),
    .DI(a[24]),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000b0 )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig000000b0 ),
    .DI(a[25]),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig000000af )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig000000af ),
    .DI(a[26]),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000ae )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig000000ae ),
    .DI(a[27]),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000ad )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig000000ad ),
    .DI(a[28]),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000ac )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig000000ac ),
    .DI(a[29]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000ab )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig000000ab ),
    .DI(a[30]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig000000aa ),
    .DI(a[31]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig000000a9 ),
    .DI(a[32]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig000000a8 ),
    .DI(a[33]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig000000a7 ),
    .DI(a[34]),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig000000a6 ),
    .DI(a[35]),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig000000a5 ),
    .DI(a[36]),
    .S(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig000000a4 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000a4 ),
    .DI(a[37]),
    .S(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig000000a3 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000a3 ),
    .DI(a[38]),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000a2 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000c8 ),
    .LI(\blk00000001/sig0000009f ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000c7 ),
    .LI(\blk00000001/sig0000009e ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000c6 ),
    .LI(\blk00000001/sig0000009d ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000c5 ),
    .LI(\blk00000001/sig0000009c ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig000000c4 ),
    .LI(\blk00000001/sig0000009b ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig000000c3 ),
    .LI(\blk00000001/sig0000009a ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig000000c2 ),
    .LI(\blk00000001/sig00000099 ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig000000c1 ),
    .LI(\blk00000001/sig00000098 ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig000000c0 ),
    .LI(\blk00000001/sig00000097 ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig000000bf ),
    .LI(\blk00000001/sig00000096 ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig000000be ),
    .LI(\blk00000001/sig00000095 ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig000000bd ),
    .LI(\blk00000001/sig00000094 ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig000000bc ),
    .LI(\blk00000001/sig00000093 ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig000000bb ),
    .LI(\blk00000001/sig00000092 ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig000000ba ),
    .LI(\blk00000001/sig00000091 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig000000b9 ),
    .LI(\blk00000001/sig00000090 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig000000b8 ),
    .LI(\blk00000001/sig0000008f ),
    .O(s[17])
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig000000b7 ),
    .LI(\blk00000001/sig0000008e ),
    .O(s[18])
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig000000b6 ),
    .LI(\blk00000001/sig0000008d ),
    .O(s[19])
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig000000b5 ),
    .LI(\blk00000001/sig0000008c ),
    .O(s[20])
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig000000b4 ),
    .LI(\blk00000001/sig0000008b ),
    .O(s[21])
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig000000b3 ),
    .LI(\blk00000001/sig0000008a ),
    .O(s[22])
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig000000b2 ),
    .LI(\blk00000001/sig00000089 ),
    .O(s[23])
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig000000b1 ),
    .LI(\blk00000001/sig00000088 ),
    .O(s[24])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig000000b0 ),
    .LI(\blk00000001/sig00000087 ),
    .O(s[25])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig000000af ),
    .LI(\blk00000001/sig00000086 ),
    .O(s[26])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig000000ae ),
    .LI(\blk00000001/sig00000085 ),
    .O(s[27])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig000000ad ),
    .LI(\blk00000001/sig00000084 ),
    .O(s[28])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig000000ac ),
    .LI(\blk00000001/sig00000083 ),
    .O(s[29])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig000000ab ),
    .LI(\blk00000001/sig00000082 ),
    .O(s[30])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig000000aa ),
    .LI(\blk00000001/sig00000081 ),
    .O(s[31])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig000000a9 ),
    .LI(\blk00000001/sig00000080 ),
    .O(s[32])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig000000a8 ),
    .LI(\blk00000001/sig0000007f ),
    .O(s[33])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig000000a7 ),
    .LI(\blk00000001/sig0000007e ),
    .O(s[34])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig000000a6 ),
    .LI(\blk00000001/sig0000007d ),
    .O(s[35])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig000000a5 ),
    .LI(\blk00000001/sig0000007c ),
    .O(s[36])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig000000a4 ),
    .LI(\blk00000001/sig0000007b ),
    .O(s[37])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig000000a3 ),
    .LI(\blk00000001/sig0000007a ),
    .O(s[38])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig000000a2 ),
    .LI(\blk00000001/sig000000a0 ),
    .O(s[39])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig000000a1 ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000079 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on

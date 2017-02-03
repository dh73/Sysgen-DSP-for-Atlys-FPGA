////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_856b46edf5fd2c9b.v
// /___/   /\     Timestamp: Thu Feb  2 18:32:54 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_856b46edf5fd2c9b.ngc /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_856b46edf5fd2c9b.v 
// Device	: 6slx45tfgg484-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_856b46edf5fd2c9b.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/addsb_11_0_856b46edf5fd2c9b.v
// # of Modules	: 1
// Design Name	: addsb_11_0_856b46edf5fd2c9b
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

module addsb_11_0_856b46edf5fd2c9b (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [32 : 0] a;
  input [32 : 0] b;
  output [32 : 0] s;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000064  (
    .I0(a[32]),
    .I1(b[32]),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(a[31]),
    .I1(b[31]),
    .O(\blk00000001/sig00000065 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(a[30]),
    .I1(b[30]),
    .O(\blk00000001/sig00000066 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(a[29]),
    .I1(b[29]),
    .O(\blk00000001/sig00000067 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(a[28]),
    .I1(b[28]),
    .O(\blk00000001/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(a[27]),
    .I1(b[27]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(a[26]),
    .I1(b[26]),
    .O(\blk00000001/sig0000006a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(a[25]),
    .I1(b[25]),
    .O(\blk00000001/sig0000006b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(a[24]),
    .I1(b[24]),
    .O(\blk00000001/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(a[23]),
    .I1(b[23]),
    .O(\blk00000001/sig0000006d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(a[22]),
    .I1(b[22]),
    .O(\blk00000001/sig0000006e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(a[21]),
    .I1(b[21]),
    .O(\blk00000001/sig0000006f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(a[20]),
    .I1(b[20]),
    .O(\blk00000001/sig00000070 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(a[19]),
    .I1(b[19]),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(a[18]),
    .I1(b[18]),
    .O(\blk00000001/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(a[17]),
    .I1(b[17]),
    .O(\blk00000001/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000076 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000050  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004e  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004b  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004a  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000049  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000048  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000047  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000046  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000045  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000044  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000085 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000064 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000a5 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000a4 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000a4 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000a3 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000a3 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000a2 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000a2 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000a1 )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000a1 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000a0 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig000000a0 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig0000009f )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000009f ),
    .DI(a[7]),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig0000009e )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000009e ),
    .DI(a[8]),
    .S(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig0000009d )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000009d ),
    .DI(a[9]),
    .S(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig0000009c )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000009c ),
    .DI(a[10]),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig0000009b )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000009b ),
    .DI(a[11]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig0000009a )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000009a ),
    .DI(a[12]),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000099 )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig00000099 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig00000098 )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000098 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000097 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig00000097 ),
    .DI(a[15]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig00000096 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000096 ),
    .DI(a[16]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000095 )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000095 ),
    .DI(a[17]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000094 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000094 ),
    .DI(a[18]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000093 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000093 ),
    .DI(a[19]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000092 ),
    .DI(a[20]),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000091 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000091 ),
    .DI(a[21]),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000090 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000090 ),
    .DI(a[22]),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig0000008f )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig0000008f ),
    .DI(a[23]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig0000008e ),
    .DI(a[24]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000008d )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig0000008d ),
    .DI(a[25]),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig0000008c ),
    .DI(a[26]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig0000008b )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig0000008b ),
    .DI(a[27]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig0000008a )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig0000008a ),
    .DI(a[28]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000089 )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000089 ),
    .DI(a[29]),
    .S(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig00000088 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000088 ),
    .DI(a[30]),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000087 )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000087 ),
    .DI(a[31]),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000086 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig000000a5 ),
    .LI(\blk00000001/sig00000083 ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig000000a4 ),
    .LI(\blk00000001/sig00000082 ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig000000a3 ),
    .LI(\blk00000001/sig00000081 ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig000000a2 ),
    .LI(\blk00000001/sig00000080 ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig000000a1 ),
    .LI(\blk00000001/sig0000007f ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig000000a0 ),
    .LI(\blk00000001/sig0000007e ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000009f ),
    .LI(\blk00000001/sig0000007d ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000009e ),
    .LI(\blk00000001/sig0000007c ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000009d ),
    .LI(\blk00000001/sig0000007b ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000009c ),
    .LI(\blk00000001/sig0000007a ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000009b ),
    .LI(\blk00000001/sig00000079 ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000009a ),
    .LI(\blk00000001/sig00000078 ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000099 ),
    .LI(\blk00000001/sig00000077 ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000098 ),
    .LI(\blk00000001/sig00000076 ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000097 ),
    .LI(\blk00000001/sig00000075 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000096 ),
    .LI(\blk00000001/sig00000074 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000095 ),
    .LI(\blk00000001/sig00000073 ),
    .O(s[17])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000094 ),
    .LI(\blk00000001/sig00000072 ),
    .O(s[18])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000093 ),
    .LI(\blk00000001/sig00000071 ),
    .O(s[19])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000092 ),
    .LI(\blk00000001/sig00000070 ),
    .O(s[20])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000091 ),
    .LI(\blk00000001/sig0000006f ),
    .O(s[21])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000090 ),
    .LI(\blk00000001/sig0000006e ),
    .O(s[22])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000008f ),
    .LI(\blk00000001/sig0000006d ),
    .O(s[23])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000008e ),
    .LI(\blk00000001/sig0000006c ),
    .O(s[24])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000008d ),
    .LI(\blk00000001/sig0000006b ),
    .O(s[25])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000008c ),
    .LI(\blk00000001/sig0000006a ),
    .O(s[26])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000008b ),
    .LI(\blk00000001/sig00000069 ),
    .O(s[27])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000008a ),
    .LI(\blk00000001/sig00000068 ),
    .O(s[28])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000089 ),
    .LI(\blk00000001/sig00000067 ),
    .O(s[29])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000088 ),
    .LI(\blk00000001/sig00000066 ),
    .O(s[30])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000087 ),
    .LI(\blk00000001/sig00000065 ),
    .O(s[31])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000086 ),
    .LI(\blk00000001/sig00000084 ),
    .O(s[32])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000064 ),
    .LI(\blk00000001/sig00000085 ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000064 )
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

////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cmlt_11_2_a680687b7f91c37b.v
// /___/   /\     Timestamp: Thu Feb  2 18:33:44 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/cmlt_11_2_a680687b7f91c37b.ngc /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/cmlt_11_2_a680687b7f91c37b.v 
// Device	: 6slx45tfgg484-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/cmlt_11_2_a680687b7f91c37b.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d/tmp/_cg/cmlt_11_2_a680687b7f91c37b.v
// # of Modules	: 1
// Design Name	: cmlt_11_2_a680687b7f91c37b
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

module cmlt_11_2_a680687b7f91c37b (
a, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input [15 : 0] a;
  output [31 : 0] p;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire [4 : 0] NlwRenamedSignal_a;
  wire [29 : 29] NlwRenamedSig_OI_p;
  assign
    NlwRenamedSignal_a[4] = a[4],
    NlwRenamedSignal_a[3] = a[3],
    NlwRenamedSignal_a[2] = a[2],
    NlwRenamedSignal_a[1] = a[1],
    NlwRenamedSignal_a[0] = a[0],
    p[31] = NlwRenamedSig_OI_p[29],
    p[30] = NlwRenamedSig_OI_p[29],
    p[29] = NlwRenamedSig_OI_p[29],
    p[4] = NlwRenamedSignal_a[4],
    p[3] = NlwRenamedSignal_a[3],
    p[2] = NlwRenamedSignal_a[2],
    p[1] = NlwRenamedSignal_a[1],
    p[0] = NlwRenamedSignal_a[0];
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000091  (
    .I0(a[12]),
    .I1(a[15]),
    .O(\blk00000001/sig0000002a )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \blk00000001/blk00000090  (
    .I0(a[13]),
    .I1(a[12]),
    .I2(a[15]),
    .O(\blk00000001/sig0000002b )
  );
  LUT4 #(
    .INIT ( 16'h9C66 ))
  \blk00000001/blk0000008f  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(a[15]),
    .I3(a[12]),
    .O(\blk00000001/sig0000002c )
  );
  LUT4 #(
    .INIT ( 16'h9AE6 ))
  \blk00000001/blk0000008e  (
    .I0(a[15]),
    .I1(a[14]),
    .I2(a[12]),
    .I3(a[13]),
    .O(\blk00000001/sig0000002d )
  );
  LUT4 #(
    .INIT ( 16'h9AE6 ))
  \blk00000001/blk0000008d  (
    .I0(a[12]),
    .I1(a[15]),
    .I2(a[13]),
    .I3(a[14]),
    .O(\blk00000001/sig0000002e )
  );
  LUT4 #(
    .INIT ( 16'h562A ))
  \blk00000001/blk0000008c  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(a[12]),
    .I3(a[15]),
    .O(\blk00000001/sig0000002f )
  );
  LUT4 #(
    .INIT ( 16'h622A ))
  \blk00000001/blk0000008b  (
    .I0(a[14]),
    .I1(a[13]),
    .I2(a[15]),
    .I3(a[12]),
    .O(\blk00000001/sig00000030 )
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  \blk00000001/blk0000008a  (
    .I0(a[15]),
    .I1(a[13]),
    .I2(a[14]),
    .I3(a[12]),
    .O(\blk00000001/sig00000031 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk00000089  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(a[15]),
    .O(\blk00000001/sig00000032 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000088  (
    .I0(a[6]),
    .I1(a[11]),
    .O(\blk00000001/sig00000041 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk00000087  (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[11]),
    .O(\blk00000001/sig00000042 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \blk00000001/blk00000086  (
    .I0(a[8]),
    .I1(a[11]),
    .I2(a[6]),
    .I3(a[7]),
    .O(\blk00000001/sig00000043 )
  );
  LUT5 #(
    .INIT ( 32'hA6666666 ))
  \blk00000001/blk00000085  (
    .I0(a[9]),
    .I1(a[6]),
    .I2(a[11]),
    .I3(a[8]),
    .I4(a[7]),
    .O(\blk00000001/sig00000044 )
  );
  LUT6 #(
    .INIT ( 64'h6666666639996666 ))
  \blk00000001/blk00000084  (
    .I0(a[7]),
    .I1(a[10]),
    .I2(a[8]),
    .I3(a[11]),
    .I4(a[6]),
    .I5(a[9]),
    .O(\blk00000001/sig00000045 )
  );
  LUT6 #(
    .INIT ( 64'h96699696E6699666 ))
  \blk00000001/blk00000083  (
    .I0(a[8]),
    .I1(a[11]),
    .I2(a[6]),
    .I3(a[10]),
    .I4(a[7]),
    .I5(a[9]),
    .O(\blk00000001/sig00000046 )
  );
  LUT6 #(
    .INIT ( 64'h389E693C791CE178 ))
  \blk00000001/blk00000082  (
    .I0(a[11]),
    .I1(a[7]),
    .I2(a[9]),
    .I3(a[8]),
    .I4(a[6]),
    .I5(a[10]),
    .O(\blk00000001/sig00000047 )
  );
  LUT6 #(
    .INIT ( 64'hA5E51A9E657996A6 ))
  \blk00000001/blk00000081  (
    .I0(a[10]),
    .I1(a[9]),
    .I2(a[8]),
    .I3(a[11]),
    .I4(a[6]),
    .I5(a[7]),
    .O(\blk00000001/sig00000048 )
  );
  LUT6 #(
    .INIT ( 64'h8568E95EA15A7A96 ))
  \blk00000001/blk00000080  (
    .I0(a[7]),
    .I1(a[10]),
    .I2(a[11]),
    .I3(a[9]),
    .I4(a[6]),
    .I5(a[8]),
    .O(\blk00000001/sig00000049 )
  );
  LUT6 #(
    .INIT ( 64'h469462466B66B96A ))
  \blk00000001/blk0000007f  (
    .I0(a[8]),
    .I1(a[10]),
    .I2(a[6]),
    .I3(a[11]),
    .I4(a[9]),
    .I5(a[7]),
    .O(\blk00000001/sig0000004a )
  );
  LUT6 #(
    .INIT ( 64'h9496D646D646626A ))
  \blk00000001/blk0000007e  (
    .I0(a[9]),
    .I1(a[11]),
    .I2(a[8]),
    .I3(a[6]),
    .I4(a[7]),
    .I5(a[10]),
    .O(\blk00000001/sig0000004b )
  );
  LUT6 #(
    .INIT ( 64'h544656422AAA2AAA ))
  \blk00000001/blk0000007d  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[8]),
    .I3(a[7]),
    .I4(a[6]),
    .I5(a[9]),
    .O(\blk00000001/sig0000004c )
  );
  LUT6 #(
    .INIT ( 64'h4662AAAA4262AAAA ))
  \blk00000001/blk0000007c  (
    .I0(a[11]),
    .I1(a[9]),
    .I2(a[8]),
    .I3(a[7]),
    .I4(a[10]),
    .I5(a[6]),
    .O(\blk00000001/sig0000004d )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  \blk00000001/blk0000007b  (
    .I0(a[10]),
    .I1(a[11]),
    .I2(a[7]),
    .I3(a[8]),
    .I4(a[9]),
    .O(\blk00000001/sig0000004e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007a  (
    .I0(NlwRenamedSignal_a[0]),
    .I1(a[5]),
    .O(p[5])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk00000079  (
    .I0(NlwRenamedSignal_a[1]),
    .I1(NlwRenamedSignal_a[0]),
    .I2(a[5]),
    .O(\blk00000001/sig0000004f )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \blk00000001/blk00000078  (
    .I0(NlwRenamedSignal_a[2]),
    .I1(a[5]),
    .I2(NlwRenamedSignal_a[0]),
    .I3(NlwRenamedSignal_a[1]),
    .O(\blk00000001/sig00000050 )
  );
  LUT5 #(
    .INIT ( 32'hA6666666 ))
  \blk00000001/blk00000077  (
    .I0(NlwRenamedSignal_a[3]),
    .I1(NlwRenamedSignal_a[0]),
    .I2(a[5]),
    .I3(NlwRenamedSignal_a[2]),
    .I4(NlwRenamedSignal_a[1]),
    .O(\blk00000001/sig00000051 )
  );
  LUT6 #(
    .INIT ( 64'h6666666639996666 ))
  \blk00000001/blk00000076  (
    .I0(NlwRenamedSignal_a[1]),
    .I1(NlwRenamedSignal_a[4]),
    .I2(NlwRenamedSignal_a[2]),
    .I3(a[5]),
    .I4(NlwRenamedSignal_a[0]),
    .I5(NlwRenamedSignal_a[3]),
    .O(\blk00000001/sig00000052 )
  );
  LUT6 #(
    .INIT ( 64'h96699696E6699666 ))
  \blk00000001/blk00000075  (
    .I0(NlwRenamedSignal_a[2]),
    .I1(a[5]),
    .I2(NlwRenamedSignal_a[0]),
    .I3(NlwRenamedSignal_a[4]),
    .I4(NlwRenamedSignal_a[1]),
    .I5(NlwRenamedSignal_a[3]),
    .O(\blk00000001/sig00000053 )
  );
  LUT6 #(
    .INIT ( 64'h389E693C791CE178 ))
  \blk00000001/blk00000074  (
    .I0(a[5]),
    .I1(NlwRenamedSignal_a[1]),
    .I2(NlwRenamedSignal_a[3]),
    .I3(NlwRenamedSignal_a[2]),
    .I4(NlwRenamedSignal_a[0]),
    .I5(NlwRenamedSignal_a[4]),
    .O(\blk00000001/sig00000054 )
  );
  LUT6 #(
    .INIT ( 64'hA5E51A9E657996A6 ))
  \blk00000001/blk00000073  (
    .I0(NlwRenamedSignal_a[4]),
    .I1(NlwRenamedSignal_a[3]),
    .I2(NlwRenamedSignal_a[2]),
    .I3(a[5]),
    .I4(NlwRenamedSignal_a[0]),
    .I5(NlwRenamedSignal_a[1]),
    .O(\blk00000001/sig00000055 )
  );
  LUT6 #(
    .INIT ( 64'h8568E95EA15A7A96 ))
  \blk00000001/blk00000072  (
    .I0(NlwRenamedSignal_a[1]),
    .I1(NlwRenamedSignal_a[4]),
    .I2(a[5]),
    .I3(NlwRenamedSignal_a[3]),
    .I4(NlwRenamedSignal_a[0]),
    .I5(NlwRenamedSignal_a[2]),
    .O(\blk00000001/sig00000056 )
  );
  LUT6 #(
    .INIT ( 64'h469462466B66B96A ))
  \blk00000001/blk00000071  (
    .I0(NlwRenamedSignal_a[2]),
    .I1(NlwRenamedSignal_a[4]),
    .I2(NlwRenamedSignal_a[0]),
    .I3(a[5]),
    .I4(NlwRenamedSignal_a[3]),
    .I5(NlwRenamedSignal_a[1]),
    .O(\blk00000001/sig00000057 )
  );
  LUT6 #(
    .INIT ( 64'h9496D646D646626A ))
  \blk00000001/blk00000070  (
    .I0(NlwRenamedSignal_a[3]),
    .I1(a[5]),
    .I2(NlwRenamedSignal_a[2]),
    .I3(NlwRenamedSignal_a[0]),
    .I4(NlwRenamedSignal_a[1]),
    .I5(NlwRenamedSignal_a[4]),
    .O(\blk00000001/sig00000058 )
  );
  LUT6 #(
    .INIT ( 64'h544656422AAA2AAA ))
  \blk00000001/blk0000006f  (
    .I0(NlwRenamedSignal_a[4]),
    .I1(a[5]),
    .I2(NlwRenamedSignal_a[2]),
    .I3(NlwRenamedSignal_a[1]),
    .I4(NlwRenamedSignal_a[0]),
    .I5(NlwRenamedSignal_a[3]),
    .O(\blk00000001/sig00000059 )
  );
  LUT6 #(
    .INIT ( 64'h4662AAAA4262AAAA ))
  \blk00000001/blk0000006e  (
    .I0(a[5]),
    .I1(NlwRenamedSignal_a[3]),
    .I2(NlwRenamedSignal_a[2]),
    .I3(NlwRenamedSignal_a[1]),
    .I4(NlwRenamedSignal_a[4]),
    .I5(NlwRenamedSignal_a[0]),
    .O(\blk00000001/sig0000005a )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  \blk00000001/blk0000006d  (
    .I0(NlwRenamedSignal_a[4]),
    .I1(a[5]),
    .I2(NlwRenamedSignal_a[1]),
    .I3(NlwRenamedSignal_a[2]),
    .I4(NlwRenamedSignal_a[3]),
    .O(\blk00000001/sig0000005b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006c  (
    .I0(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006b  (
    .I0(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig0000009f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006a  (
    .I0(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000009e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000069  (
    .I0(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000009d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000068  (
    .I0(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000009c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000067  (
    .I0(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000009b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000066  (
    .I0(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000009a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000065  (
    .I0(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000099 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000064  (
    .I0(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000098 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(\blk00000001/sig00000033 ),
    .I1(a[12]),
    .O(\blk00000001/sig00000097 )
  );
  MUXCY   \blk00000001/blk00000062  (
    .CI(NlwRenamedSig_OI_p[29]),
    .DI(\blk00000001/sig00000033 ),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk00000061  (
    .CI(NlwRenamedSig_OI_p[29]),
    .LI(\blk00000001/sig00000097 ),
    .O(p[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(\blk00000001/sig00000034 ),
    .I1(a[13]),
    .O(\blk00000001/sig00000095 )
  );
  MUXCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig00000096 ),
    .DI(\blk00000001/sig00000034 ),
    .S(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig00000094 )
  );
  XORCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig00000096 ),
    .LI(\blk00000001/sig00000095 ),
    .O(p[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(\blk00000001/sig00000035 ),
    .I1(a[14]),
    .O(\blk00000001/sig00000093 )
  );
  MUXCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig00000094 ),
    .DI(\blk00000001/sig00000035 ),
    .S(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig00000092 )
  );
  XORCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig00000094 ),
    .LI(\blk00000001/sig00000093 ),
    .O(p[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(\blk00000001/sig00000036 ),
    .I1(a[15]),
    .O(\blk00000001/sig00000091 )
  );
  MUXCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig00000092 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig00000090 )
  );
  XORCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig00000092 ),
    .LI(\blk00000001/sig00000091 ),
    .O(p[15])
  );
  MUXCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig00000090 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig0000008f )
  );
  XORCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig00000090 ),
    .LI(\blk00000001/sig000000a0 ),
    .O(p[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(\blk00000001/sig00000038 ),
    .I1(a[12]),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig0000008f ),
    .DI(\blk00000001/sig00000038 ),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig0000008d )
  );
  XORCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig0000008f ),
    .LI(\blk00000001/sig0000008e ),
    .O(p[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(\blk00000001/sig00000039 ),
    .I1(a[13]),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig0000008d ),
    .DI(\blk00000001/sig00000039 ),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig0000008b )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig0000008d ),
    .LI(\blk00000001/sig0000008c ),
    .O(p[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(\blk00000001/sig0000003a ),
    .I1(a[14]),
    .O(\blk00000001/sig0000008a )
  );
  MUXCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig0000008b ),
    .DI(\blk00000001/sig0000003a ),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig00000089 )
  );
  XORCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig0000008b ),
    .LI(\blk00000001/sig0000008a ),
    .O(p[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig00000088 )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig00000089 ),
    .DI(\blk00000001/sig0000003b ),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000087 )
  );
  XORCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig00000089 ),
    .LI(\blk00000001/sig00000088 ),
    .O(p[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000049  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig00000086 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig00000087 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig00000085 )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000087 ),
    .LI(\blk00000001/sig00000086 ),
    .O(p[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000046  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000084 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig00000085 ),
    .DI(\blk00000001/sig0000003d ),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig00000083 )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig00000085 ),
    .LI(\blk00000001/sig00000084 ),
    .O(p[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000043  (
    .I0(\blk00000001/sig0000003e ),
    .I1(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig00000082 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000083 ),
    .DI(\blk00000001/sig0000003e ),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000083 ),
    .LI(\blk00000001/sig00000082 ),
    .O(p[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000040  (
    .I0(\blk00000001/sig0000003f ),
    .I1(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig00000080 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000081 ),
    .DI(\blk00000001/sig0000003f ),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig00000081 ),
    .LI(\blk00000001/sig00000080 ),
    .O(p[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003d  (
    .I0(\blk00000001/sig00000040 ),
    .I1(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000007f ),
    .DI(\blk00000001/sig00000040 ),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig0000007e ),
    .O(p[25])
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000007d ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000007c )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig0000009f ),
    .O(p[26])
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000007c ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000007c ),
    .LI(\blk00000001/sig0000009e ),
    .O(p[27])
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig00000032 ),
    .O(p[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000035  (
    .I0(\blk00000001/sig0000004f ),
    .I1(a[6]),
    .O(\blk00000001/sig0000007a )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(NlwRenamedSig_OI_p[29]),
    .DI(\blk00000001/sig0000004f ),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(NlwRenamedSig_OI_p[29]),
    .LI(\blk00000001/sig0000007a ),
    .O(p[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(\blk00000001/sig00000050 ),
    .I1(a[7]),
    .O(\blk00000001/sig00000078 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000079 ),
    .DI(\blk00000001/sig00000050 ),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig00000078 ),
    .O(p[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(\blk00000001/sig00000051 ),
    .I1(a[8]),
    .O(\blk00000001/sig00000076 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000077 ),
    .DI(\blk00000001/sig00000051 ),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000075 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000077 ),
    .LI(\blk00000001/sig00000076 ),
    .O(p[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002c  (
    .I0(\blk00000001/sig00000052 ),
    .I1(a[9]),
    .O(\blk00000001/sig00000074 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000075 ),
    .DI(\blk00000001/sig00000052 ),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000073 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000075 ),
    .LI(\blk00000001/sig00000074 ),
    .O(p[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000029  (
    .I0(\blk00000001/sig00000053 ),
    .I1(a[10]),
    .O(\blk00000001/sig00000072 )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000073 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000071 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000073 ),
    .LI(\blk00000001/sig00000072 ),
    .O(p[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000026  (
    .I0(\blk00000001/sig00000054 ),
    .I1(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000071 ),
    .DI(\blk00000001/sig00000054 ),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig0000006f )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000071 ),
    .LI(\blk00000001/sig00000070 ),
    .O(p[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000023  (
    .I0(\blk00000001/sig00000055 ),
    .I1(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig0000006e )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig0000006f ),
    .DI(\blk00000001/sig00000055 ),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig0000006f ),
    .LI(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000033 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000020  (
    .I0(\blk00000001/sig00000056 ),
    .I1(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000006c )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig0000006d ),
    .DI(\blk00000001/sig00000056 ),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig0000006d ),
    .LI(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000034 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001d  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig0000006a )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000006b ),
    .DI(\blk00000001/sig00000057 ),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000006b ),
    .LI(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001a  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000069 ),
    .DI(\blk00000001/sig00000058 ),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000067 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000069 ),
    .LI(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000017  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig00000066 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000067 ),
    .DI(\blk00000001/sig00000059 ),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000065 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000014  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000065 ),
    .DI(\blk00000001/sig0000005a ),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000011  (
    .I0(\blk00000001/sig0000005b ),
    .I1(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000063 ),
    .DI(\blk00000001/sig0000005b ),
    .S(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000039 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000061 ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000060 ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000003b )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000005f ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000005e )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000005e ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig0000005d )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig0000003d )
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000005d ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000005c ),
    .DI(NlwRenamedSig_OI_p[29]),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig0000003f )
  );
  GND   \blk00000001/blk00000002  (
    .G(NlwRenamedSig_OI_p[29])
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

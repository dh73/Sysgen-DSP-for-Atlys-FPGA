////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_232ff08b73742c1b.v
// /___/   /\     Timestamp: Fri Jan 27 06:25:33 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_232ff08b73742c1b.ngc /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_232ff08b73742c1b.v 
// Device	: 6slx45csg324-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_232ff08b73742c1b.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_232ff08b73742c1b.v
// # of Modules	: 1
// Design Name	: addsb_11_0_232ff08b73742c1b
// Xilinx        : /home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/
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

module addsb_11_0_232ff08b73742c1b (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [16 : 0] a;
  input [16 : 0] b;
  output [16 : 0] s;
  
  // synthesis translate_off
  
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
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000034  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000044 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000033  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000030  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002e  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002d  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002c  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002b  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002a  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000003e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000029  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig0000003f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000028  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000040 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000027  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000041 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000026  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000042 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000025  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000043 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000024  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000045 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[8]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[9]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[10]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000004b ),
    .DI(a[11]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[12]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000048 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000047 ),
    .DI(a[15]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig00000043 ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000042 ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig00000041 ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000040 ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000003f ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000003e ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig0000003d ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig0000003c ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig0000003b ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig0000003a ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig00000039 ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig00000038 ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig00000037 ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig00000036 ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000035 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000044 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig00000045 ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000034 )
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
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mult_11_2_9c87a4aa35fb2a9b.v
// /___/   /\     Timestamp: Fri Jan 27 06:26:42 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_9c87a4aa35fb2a9b.ngc /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_9c87a4aa35fb2a9b.v 
// Device	: 6slx45csg324-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_9c87a4aa35fb2a9b.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_9c87a4aa35fb2a9b.v
// # of Modules	: 1
// Design Name	: mult_11_2_9c87a4aa35fb2a9b
// Xilinx        : /home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/
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

module mult_11_2_9c87a4aa35fb2a9b (
a, b, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input [15 : 0] a;
  input [16 : 0] b;
  output [32 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \NLW_blk00000001/blk00000004_CARRYOUTF_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(33)_UNCONNECTED ;
  DSP48A1 #(
    .CARRYINSEL ( "OPMODE5" ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \blk00000001/blk00000004  (
    .CECARRYIN(\blk00000001/sig00000044 ),
    .RSTC(\blk00000001/sig00000044 ),
    .RSTCARRYIN(\blk00000001/sig00000044 ),
    .CED(\blk00000001/sig00000044 ),
    .RSTD(\blk00000001/sig00000044 ),
    .CEOPMODE(\blk00000001/sig00000044 ),
    .CEC(\blk00000001/sig00000044 ),
    .CARRYOUTF(\NLW_blk00000001/blk00000004_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\blk00000001/sig00000044 ),
    .RSTM(\blk00000001/sig00000044 ),
    .CLK(\blk00000001/sig00000044 ),
    .RSTB(\blk00000001/sig00000044 ),
    .CEM(\blk00000001/sig00000044 ),
    .CEB(\blk00000001/sig00000044 ),
    .CARRYIN(\blk00000001/sig00000044 ),
    .CEP(\blk00000001/sig00000044 ),
    .CEA(\blk00000001/sig00000044 ),
    .CARRYOUT(\NLW_blk00000001/blk00000004_CARRYOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000044 ),
    .RSTP(\blk00000001/sig00000044 ),
    .B({b[16], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCOUT({\NLW_blk00000001/blk00000004_BCOUT(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(0)_UNCONNECTED }),
    .PCIN({\NLW_blk00000001/blk00000004_PCIN(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(44)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(43)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(42)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(38)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(37)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(36)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(32)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(31)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(30)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(26)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(25)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(24)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(20)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(19)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(18)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(0)_UNCONNECTED }),
    .C({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 }),
    .P({\NLW_blk00000001/blk00000004_P(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(44)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(43)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(42)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(38)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(37)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(36)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(32)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(31)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(30)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(26)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(25)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(24)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(20)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(19)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(18)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(14)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(13)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(12)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(8)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(7)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(6)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(2)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(1)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(0)_UNCONNECTED }),
    .OPMODE({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000043 }),
    .D({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 }),
    .PCOUT({\NLW_blk00000001/blk00000004_PCOUT(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(44)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(43)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(42)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(38)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(37)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(36)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(32)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(31)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(30)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(26)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(25)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(24)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(20)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(19)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(18)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(0)_UNCONNECTED }),
    .A({a[15], a[15], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .M({\NLW_blk00000001/blk00000004_M(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_M(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_M(33)_UNCONNECTED , p[32], p[31], p[30], p[29], p[28], p[27], p[26], p[25], p[24], p[23], p[22], p[21], p[20], p[19], 
p[18], p[17], p[16], p[15], p[14], p[13], p[12], p[11], p[10], p[9], p[8], p[7], p[6], p[5], p[4], p[3], p[2], p[1], p[0]})
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig00000044 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000043 )
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
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_115949a8e6f0bfc4.v
// /___/   /\     Timestamp: Fri Jan 27 06:25:03 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_115949a8e6f0bfc4.ngc /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_115949a8e6f0bfc4.v 
// Device	: 6slx45csg324-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_115949a8e6f0bfc4.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/addsb_11_0_115949a8e6f0bfc4.v
// # of Modules	: 1
// Design Name	: addsb_11_0_115949a8e6f0bfc4
// Xilinx        : /home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/
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

module addsb_11_0_115949a8e6f0bfc4 (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [33 : 0] a;
  input [33 : 0] b;
  output [33 : 0] s;
  
  // synthesis translate_off
  
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
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067  (
    .I0(a[33]),
    .I1(b[33]),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000066  (
    .I0(a[32]),
    .I1(b[32]),
    .O(\blk00000001/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000065  (
    .I0(a[31]),
    .I1(b[31]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000064  (
    .I0(a[30]),
    .I1(b[30]),
    .O(\blk00000001/sig0000006a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(a[29]),
    .I1(b[29]),
    .O(\blk00000001/sig0000006b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(a[28]),
    .I1(b[28]),
    .O(\blk00000001/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(a[27]),
    .I1(b[27]),
    .O(\blk00000001/sig0000006d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(a[26]),
    .I1(b[26]),
    .O(\blk00000001/sig0000006e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(a[25]),
    .I1(b[25]),
    .O(\blk00000001/sig0000006f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(a[24]),
    .I1(b[24]),
    .O(\blk00000001/sig00000070 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(a[23]),
    .I1(b[23]),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(a[22]),
    .I1(b[22]),
    .O(\blk00000001/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(a[21]),
    .I1(b[21]),
    .O(\blk00000001/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(a[20]),
    .I1(b[20]),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(a[19]),
    .I1(b[19]),
    .O(\blk00000001/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(a[18]),
    .I1(b[18]),
    .O(\blk00000001/sig00000076 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(a[17]),
    .I1(b[17]),
    .O(\blk00000001/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000050  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004e  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004b  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004a  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000049  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000048  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000086 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000047  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000046  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000089 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig00000067 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig000000aa ),
    .DI(a[1]),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig000000a9 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000a8 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000a7 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000a6 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000a5 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000a4 )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000a4 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000a3 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig000000a3 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000a2 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig000000a2 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000a1 )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig000000a1 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000a0 )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig000000a0 ),
    .DI(a[11]),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig0000009f )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000009f ),
    .DI(a[12]),
    .S(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig0000009e )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000009e ),
    .DI(a[13]),
    .S(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig0000009d )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000009d ),
    .DI(a[14]),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig0000009c )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000009c ),
    .DI(a[15]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig0000009b )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig0000009b ),
    .DI(a[16]),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig0000009a )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000009a ),
    .DI(a[17]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig00000099 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000099 ),
    .DI(a[18]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000098 )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000098 ),
    .DI(a[19]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig00000097 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000097 ),
    .DI(a[20]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000096 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000096 ),
    .DI(a[21]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000095 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000095 ),
    .DI(a[22]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000094 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000094 ),
    .DI(a[23]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000093 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000093 ),
    .DI(a[24]),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000092 ),
    .DI(a[25]),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000091 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000091 ),
    .DI(a[26]),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000090 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000090 ),
    .DI(a[27]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000008f )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig0000008f ),
    .DI(a[28]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig0000008e ),
    .DI(a[29]),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig0000008d )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig0000008d ),
    .DI(a[30]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig0000008c ),
    .DI(a[31]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig0000008b )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig0000008b ),
    .DI(a[32]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig0000008a )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig000000aa ),
    .LI(\blk00000001/sig00000087 ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig000000a9 ),
    .LI(\blk00000001/sig00000086 ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig000000a8 ),
    .LI(\blk00000001/sig00000085 ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig000000a7 ),
    .LI(\blk00000001/sig00000084 ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig000000a6 ),
    .LI(\blk00000001/sig00000083 ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig000000a5 ),
    .LI(\blk00000001/sig00000082 ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig000000a4 ),
    .LI(\blk00000001/sig00000081 ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig000000a3 ),
    .LI(\blk00000001/sig00000080 ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig000000a2 ),
    .LI(\blk00000001/sig0000007f ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig000000a1 ),
    .LI(\blk00000001/sig0000007e ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig000000a0 ),
    .LI(\blk00000001/sig0000007d ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000009f ),
    .LI(\blk00000001/sig0000007c ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000009e ),
    .LI(\blk00000001/sig0000007b ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000009d ),
    .LI(\blk00000001/sig0000007a ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000009c ),
    .LI(\blk00000001/sig00000079 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000009b ),
    .LI(\blk00000001/sig00000078 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000009a ),
    .LI(\blk00000001/sig00000077 ),
    .O(s[17])
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000099 ),
    .LI(\blk00000001/sig00000076 ),
    .O(s[18])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000098 ),
    .LI(\blk00000001/sig00000075 ),
    .O(s[19])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000097 ),
    .LI(\blk00000001/sig00000074 ),
    .O(s[20])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000096 ),
    .LI(\blk00000001/sig00000073 ),
    .O(s[21])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000095 ),
    .LI(\blk00000001/sig00000072 ),
    .O(s[22])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000094 ),
    .LI(\blk00000001/sig00000071 ),
    .O(s[23])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000093 ),
    .LI(\blk00000001/sig00000070 ),
    .O(s[24])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000092 ),
    .LI(\blk00000001/sig0000006f ),
    .O(s[25])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000091 ),
    .LI(\blk00000001/sig0000006e ),
    .O(s[26])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000090 ),
    .LI(\blk00000001/sig0000006d ),
    .O(s[27])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000008f ),
    .LI(\blk00000001/sig0000006c ),
    .O(s[28])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000008e ),
    .LI(\blk00000001/sig0000006b ),
    .O(s[29])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000008d ),
    .LI(\blk00000001/sig0000006a ),
    .O(s[30])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000008c ),
    .LI(\blk00000001/sig00000069 ),
    .O(s[31])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000008b ),
    .LI(\blk00000001/sig00000068 ),
    .O(s[32])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000008a ),
    .LI(\blk00000001/sig00000088 ),
    .O(s[33])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig00000089 ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000067 )
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
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mult_11_2_27d1945b067283da.v
// /___/   /\     Timestamp: Fri Jan 27 06:26:08 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_27d1945b067283da.ngc /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_27d1945b067283da.v 
// Device	: 6slx45csg324-3
// Input file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_27d1945b067283da.ngc
// Output file	: /tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c/tmp/_cg/mult_11_2_27d1945b067283da.v
// # of Modules	: 1
// Design Name	: mult_11_2_27d1945b067283da
// Xilinx        : /home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/
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

module mult_11_2_27d1945b067283da (
a, b, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input [16 : 0] a;
  input [15 : 0] b;
  output [32 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \NLW_blk00000001/blk00000004_CARRYOUTF_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(47)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(46)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(45)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(44)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(43)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(42)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(41)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(40)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(39)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(38)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(37)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(36)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(33)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(32)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(31)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(30)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(29)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(28)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(27)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(26)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(25)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(24)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(23)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(22)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(21)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(20)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(19)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(18)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(17)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(16)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(15)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(14)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(13)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(12)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(11)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(10)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(9)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(8)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(7)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(6)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(5)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(4)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(3)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(2)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(1)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT(0)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(35)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(34)_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_M(33)_UNCONNECTED ;
  DSP48A1 #(
    .CARRYINSEL ( "OPMODE5" ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \blk00000001/blk00000004  (
    .CECARRYIN(\blk00000001/sig00000044 ),
    .RSTC(\blk00000001/sig00000044 ),
    .RSTCARRYIN(\blk00000001/sig00000044 ),
    .CED(\blk00000001/sig00000044 ),
    .RSTD(\blk00000001/sig00000044 ),
    .CEOPMODE(\blk00000001/sig00000044 ),
    .CEC(\blk00000001/sig00000044 ),
    .CARRYOUTF(\NLW_blk00000001/blk00000004_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\blk00000001/sig00000044 ),
    .RSTM(\blk00000001/sig00000044 ),
    .CLK(\blk00000001/sig00000044 ),
    .RSTB(\blk00000001/sig00000044 ),
    .CEM(\blk00000001/sig00000044 ),
    .CEB(\blk00000001/sig00000044 ),
    .CARRYIN(\blk00000001/sig00000044 ),
    .CEP(\blk00000001/sig00000044 ),
    .CEA(\blk00000001/sig00000044 ),
    .CARRYOUT(\NLW_blk00000001/blk00000004_CARRYOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000044 ),
    .RSTP(\blk00000001/sig00000044 ),
    .B({a[16], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .BCOUT({\NLW_blk00000001/blk00000004_BCOUT(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT(0)_UNCONNECTED }),
    .PCIN({\NLW_blk00000001/blk00000004_PCIN(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(44)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(43)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(42)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(38)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(37)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(36)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(32)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(31)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(30)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(26)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(25)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(24)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(20)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(19)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(18)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN(0)_UNCONNECTED }),
    .C({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 }),
    .P({\NLW_blk00000001/blk00000004_P(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(44)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(43)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(42)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(38)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(37)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(36)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(32)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(31)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(30)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(26)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(25)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(24)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(20)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(19)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(18)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(14)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(13)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(12)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(8)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(7)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(6)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(2)_UNCONNECTED , \NLW_blk00000001/blk00000004_P(1)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P(0)_UNCONNECTED }),
    .OPMODE({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000043 }),
    .D({\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 , 
\blk00000001/sig00000044 , \blk00000001/sig00000044 , \blk00000001/sig00000044 }),
    .PCOUT({\NLW_blk00000001/blk00000004_PCOUT(47)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(46)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(45)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(44)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(43)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(42)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(41)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(40)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(39)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(38)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(37)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(36)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(33)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(32)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(31)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(30)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(29)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(28)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(27)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(26)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(25)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(24)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(23)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(22)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(21)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(20)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(19)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(18)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(17)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(16)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(15)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(14)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(13)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(12)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(11)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(10)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(9)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(8)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(7)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(6)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(5)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(4)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(3)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(2)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT(1)_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT(0)_UNCONNECTED }),
    .A({b[15], b[15], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .M({\NLW_blk00000001/blk00000004_M(35)_UNCONNECTED , \NLW_blk00000001/blk00000004_M(34)_UNCONNECTED , 
\NLW_blk00000001/blk00000004_M(33)_UNCONNECTED , p[32], p[31], p[30], p[29], p[28], p[27], p[26], p[25], p[24], p[23], p[22], p[21], p[20], p[19], 
p[18], p[17], p[16], p[15], p[14], p[13], p[12], p[11], p[10], p[9], p[8], p[7], p[6], p[5], p[4], p[3], p[2], p[1], p[0]})
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig00000044 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000043 )
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

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
// synopsys translate_off
`ifndef simulating
  `define simulating 1
`endif
// synopsys translate_on
`ifndef simulating
  `define simulating 0
`endif
`ifndef xlUnsigned
 `define xlUnsigned 1
`endif
`ifndef xlSigned
 `define xlSigned 2
`endif
`ifndef xlFloat
 `define xlFloat 3
`endif
`ifndef xlWrap
 `define xlWrap 1
`endif
`ifndef xlSaturate
 `define xlSaturate 2
`endif
`ifndef xlTruncate
 `define xlTruncate 1
`endif
`ifndef xlRound
 `define xlRound 2
`endif
`ifndef xlRoundBanker
 `define xlRoundBanker 3
`endif
`ifndef xlAddMode
 `define xlAddMode 1
`endif
`ifndef xlSubMode
 `define xlSubMode 2
`endif
`ifndef xlConvPkgIncluded
 `define xlConvPkgIncluded 1
`endif

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`timescale 1 ns / 10 ps
module srl17e (clk, ce, d, q);
    parameter width = 16;
    parameter latency = 8;
    input clk, ce;
    input [width-1:0] d;
    output [width-1:0] q;
    parameter signed [5:0] a = latency - 2;
    wire[width - 1:0] #0.2 d_delayed;
    wire[width - 1:0] srl16_out;
    genvar i;
    assign d_delayed = d ;
    generate
      for(i=0; i<width; i=i+1)
      begin:reg_array
            if (latency > 1)
                begin: has_2_latency
                 SRL16E u1 (.CLK(clk), .D(d_delayed[i]), .Q(srl16_out[i]), .CE(ce), .A0(a[0]), .A1(a[1]), .A2(a[2]), .A3(a[3]));
                end
            if (latency <= 1)
                begin: has_1_latency
                 assign srl16_out[i] = d_delayed[i];
                end
            if (latency != 0)
                begin: has_latency
                 FDE u2 (.C(clk), .D(srl16_out[i]), .Q(q[i]), .CE(ce));
                end
            if (latency == 0)
                begin:has_0_latency
                 assign q[i] = srl16_out[i];
                end
        end
    endgenerate
endmodule
module synth_reg (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter latency  = 1;
   input[width - 1:0] i;
   input ce,clr,clk;
   output[width - 1:0] o;
   parameter complete_num_srl17es = latency/17;
   parameter remaining_latency = latency%17;
   parameter temp_num_srl17es = (latency/17) + ((latency%17)?1:0);
   parameter num_srl17es = temp_num_srl17es ? temp_num_srl17es : 1;
   wire [width - 1:0] z [0:num_srl17es-1];
   genvar t;
    generate
      if (latency <= 17)
          begin:has_only_1
              srl17e #(width, latency) srl17e_array0(.clk(clk), .ce(ce), .d(i), .q(o));
          end
     endgenerate
    generate
     if (latency > 17)
        begin:has_1
             assign o = z[num_srl17es-1];
             srl17e #(width, 17) srl17e_array0(.clk(clk), .ce(ce), .d(i), .q(z[0]));
        end
   endgenerate
   generate
      if (latency > 17)
          begin:more_than_1
              for (t=1; t < complete_num_srl17es; t=t+1)
                begin:left_complete_ones
                   srl17e #(width, 17) srl17e_array(.clk(clk), .ce(ce), .d(z[t-1]), .q(z[t]));
                end
          end
   endgenerate
   generate
     if ((remaining_latency > 0) && (latency>17))
          begin:remaining_ones
             srl17e #(width, (latency%17)) last_srl17e (.clk(clk), .ce(ce), .d(z[num_srl17es-2]), .q(z[num_srl17es-1]));
          end
   endgenerate
endmodule
module synth_reg_reg (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter latency  = 1;
   input[width - 1:0] i;
   input ce, clr, clk;
   output[width - 1:0] o;
   wire[width - 1:0] o;
   genvar idx;
   reg[width - 1:0] reg_bank [latency:0];
   integer j;
   initial
     begin
        for (j=0; j < latency+1; j=j+1)
          begin
             reg_bank[j] = {width{1'b0}};
          end
     end

   generate
     if (latency == 0)
        begin:has_0_latency
         assign o = i;
       end
   endgenerate

   always @(i)
        begin
             reg_bank[0] = i;
         end
   generate
     if (latency > 0)
        begin:more_than_1
            assign o = reg_bank[latency];
         for (idx=0; idx < latency; idx=idx+1) begin:sync_loop
            always @(posedge clk)
                begin
                 if(clr)
                    begin
                      for (j=0; j < latency+1; j=j+1)
                        begin
                          reg_bank[j] = {width{1'b0}};
                       end
                    end
                 else if (ce)
                    begin
                        reg_bank[idx+1] <= reg_bank[idx] ;
                    end
               end
        end
      end
   endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`timescale 1 ns / 10 ps
module synth_reg_w_init (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter init_index  = 0;
   parameter [width-1 : 0] init_value  = 'b0000;
   parameter latency  = 1;

   input[width - 1:0] i;
   input ce, clr, clk;
   output[width - 1:0] o;
   wire[(latency + 1) * width - 1:0] dly_i;
   wire #0.2 dly_clr;
   genvar index;

   generate
     if (latency == 0)
        begin:has_0_latency
         assign o = i;
        end
     else
        begin:has_latency
         assign dly_i[(latency + 1) * width - 1:latency * width] = i ;
         assign dly_clr = clr ;
         for (index=1; index<=latency; index=index+1)
           begin:fd_array
// synopsys translate_off
             defparam reg_comp_1.width = width;
             defparam reg_comp_1.init_index = init_index;
             defparam reg_comp_1.init_value = init_value;
// synopsys translate_on
             single_reg_w_init #(width, init_index, init_value)
               reg_comp_1(.clk(clk),
                          .i(dly_i[(index + 1)*width-1:index*width]),
                          .o(dly_i[index * width - 1:(index - 1) * width]),
                          .ce(ce),
                          .clr(dly_clr));
             end
        assign o = dly_i[width-1:0];
       end
   endgenerate
endmodule
module single_reg_w_init (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter init_index  = 0;
   parameter [width-1 : 0] init_value  = 8'b00000000;
   input[width - 1:0] i;
   input ce;
   input clr;
   input clk;
   output[width - 1:0] o;
   parameter [0:0] init_index_val = (init_index ==  1) ? 1'b1 : 1'b0;
   parameter [width-1:0] result = (width > 1) ? { {(width-1){1'b0}}, init_index_val } : init_index_val;
   parameter [width-1:0] init_const = (init_index > 1) ? init_value : result;
   wire[width - 1:0] o;
   genvar index;

   generate
     for (index=0;index < width; index=index+1) begin:fd_prim_array
          if (init_const[index] == 0)
            begin:rst_comp
              FDRE fdre_comp(.C(clk),
                             .D(i[index]),
                             .Q(o[index]),
                             .CE(ce),
                             .R(clr));
            end
          else
            begin:set_comp
             FDSE fdse_comp(.C(clk),
                            .D(i[index]),
                            .Q(o[index]),
                            .CE(ce),
                            .S(clr));
            end
    end
   endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif
`ifndef xlConvertType
 `define xlConvertType
 `timescale 1 ns / 10 ps
module cast (inp, res);
    parameter signed [31:0] old_width = 4;
    parameter signed [31:0] old_bin_pt = 1;
    parameter signed [31:0] new_width = 4;
    parameter signed [31:0] new_bin_pt = 1;
    parameter signed [31:0] new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0] right_of_dp = new_bin_pt - old_bin_pt;
    wire [new_width-1:0] result;
   genvar i;
   assign res = result;
   generate
      for (i = 0; i<new_width;  i = i+1)
        begin:cast_loop
           if ((i-right_of_dp) > old_width - 1)
             begin:u0
                if (new_arith == `xlUnsigned)
                  begin:u1
                     assign result[i] = 1'b0;
                  end
                if (new_arith == `xlSigned)
                  begin:u2
                     assign result[i] = inp[old_width-1];
                  end
             end
           else if ((i-right_of_dp) >= 0)
             begin:u3
                assign result[i] = inp[i-right_of_dp];
             end
           else
             begin:u4
                assign result[i] = 1'b0;
             end
        end
      endgenerate

endmodule
module shift_division_result (quotient, fraction, res);
    parameter signed [31:0] q_width = 16;
    parameter signed [31:0] f_width = 16;
    parameter signed [31:0] fraction_width = 8;
    parameter signed [31:0] shift_value = 8;
    parameter signed [31:0] shift_dir = 0;
    parameter signed [31:0] vec_MSB = q_width + f_width - 1;
    parameter signed [31:0] result_MSB = q_width + fraction_width - 1;
    parameter signed [31:0] result_LSB = vec_MSB - result_MSB;
    input [q_width - 1 : 0] quotient;
    input [f_width - 1 : 0] fraction;
    output [result_MSB : 0] res;

    wire [vec_MSB:0] vec;
    wire [vec_MSB:0] temp;
   genvar i;
   assign res = vec[vec_MSB:result_LSB];
   assign temp = { quotient, fraction };
   generate
      if (shift_dir == 1)
      begin:left_shift_loop
         for (i = vec_MSB; i>=0;  i = i-1)
         begin:u0
            if (i < shift_value)
            begin:u1
               assign vec[i] = 1'b0;
            end
            else
            begin:u2
               assign vec[i] = temp[i-shift_value];
             end
         end
      end
      else
      begin:right_shift_loop
         for (i = 0; i <= vec_MSB; i = i+1)
         begin:u3
            if (i > vec_MSB - shift_value)
            begin:u4
               assign vec[i] = temp[vec_MSB];
            end
            else
            begin:u5
               assign vec[i] = temp[i+shift_value];
            end
         end
      end
   endgenerate

endmodule
module shift_op (inp, res);
    parameter signed [31:0] inp_width = 16;
    parameter signed [31:0] result_width = 16;
    parameter signed [31:0] shift_value = 8;
    parameter signed [31:0] shift_dir = 0;
    parameter signed [31:0] vec_MSB = inp_width - 1;
    parameter signed [31:0] result_MSB = result_width - 1;
    parameter signed [31:0] result_LSB = vec_MSB - result_MSB;
    input [vec_MSB : 0] inp;
    output [result_MSB : 0] res;

    wire [vec_MSB:0] vec;
   genvar i;
   assign res = vec[vec_MSB:result_LSB];
   generate
      if (shift_dir == 1)
      begin:left_shift_loop
         for (i = vec_MSB; i>=0;  i = i-1)
         begin:u0
            if (i < shift_value)
            begin:u1
               assign vec[i] = 1'b0;
            end
            else
            begin:u2
               assign vec[i] = inp[i-shift_value];
             end
         end
      end
      else
      begin:right_shift_loop
         for (i = 0; i <= vec_MSB; i = i+1)
         begin:u3
            if (i > vec_MSB - shift_value)
            begin:u4
               assign vec[i] = inp[vec_MSB];
            end
            else
            begin:u5
               assign vec[i] = inp[i+shift_value];
            end
         end
      end
   endgenerate

endmodule
module pad_lsb (inp, res);
   parameter signed [31:0] orig_width = 4;
   parameter signed [31:0] new_width = 2;
   input [orig_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   parameter signed [31:0] pad_pos = new_width - orig_width -1;
   wire [new_width-1:0] result;
   genvar i;
   assign  res = result;
   generate
      if (new_width >= orig_width)
        begin:u0
           assign result[new_width-1:new_width-orig_width] = inp[orig_width-1:0];
        end
   endgenerate

   generate
      if (pad_pos >= 0)
        begin:u1
           assign result[pad_pos:0] = {pad_pos{1'b0}};
        end
   endgenerate
endmodule
module zero_ext (inp, res);
   parameter signed [31:0]  old_width = 4;
   parameter signed [31:0]  new_width = 2;
   input [old_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   genvar i;
   assign res = result;
   generate
     if (new_width > old_width)
       begin:u0
          assign result = { {(new_width-old_width){1'b0}}, inp};
       end
     else
       begin:u1
          assign result[new_width-1:0] = inp[new_width-1:0];
       end
    endgenerate
endmodule
module sign_ext (inp, res);
   parameter signed [31:0]  old_width = 4;
   parameter signed [31:0]  new_width = 2;
   input [old_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   assign res = result;
   generate
     if (new_width > old_width)
       begin:u0
          assign result = { {(new_width-old_width){inp[old_width-1]}}, inp};
       end
     else
       begin:u1
          assign result[new_width-1:0] = inp[new_width-1:0];
       end
   endgenerate

endmodule
module extend_msb (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
    wire [new_width-1:0] result;
   assign res = result;
   generate
      if (new_arith ==`xlUnsigned)
        begin:u0
           zero_ext # (old_width, new_width)
             em_zero_ext (.inp(inp), .res(result));
        end
      else
        begin:u1
           sign_ext # (old_width, new_width)
             em_sign_ext (.inp(inp), .res(result));
        end
    endgenerate
endmodule
module align_input (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  delta = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
    parameter signed [31:0]  abs_delta = (delta >= 0) ? (delta) : (-delta);
    wire [new_width-1:0] result;
    wire [(old_width+abs_delta)-1:0] padded_inp;
   assign res = result;
   generate
      if (delta > 0)
        begin:u0
           pad_lsb # (old_width, old_width+delta)
             ai_pad_lsb (.inp(inp), .res(padded_inp));
           extend_msb # (old_width+delta, new_width, new_arith)
             ai_extend_msb (.inp(padded_inp), .res(result));
        end
      else
        begin:u1
           extend_msb # (old_width, new_width, new_arith)
             ai_extend_msb (.inp(inp), .res(result));
        end
   endgenerate
endmodule
module round_towards_inf (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  right_of_dp_2 = (right_of_dp >=2) ? right_of_dp-2 : 0;
   parameter signed [31:0]  right_of_dp_1 = (right_of_dp >=1) ? right_of_dp-1 : 0;
   reg [new_width-1:0] one_or_zero;
   wire [new_width-1:0] truncated_val;
   wire signed [new_width-1:0] result_signed;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   initial
     begin
        one_or_zero = {new_width{1'b0}};
     end
   generate
      if (right_of_dp >= 0)
        begin:u0
           if (new_arith ==`xlUnsigned)
             begin:u1
                zero_ext # (old_width-right_of_dp, new_width)
                  rti_zero_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
           else
             begin:u2
                sign_ext # (old_width-right_of_dp, new_width)
                  rti_sign_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
        end
      else
        begin:u3
           pad_lsb # (old_width, abs_right_of_dp+old_width)
             rti_pad_lsb (.inp(inp), .res(padded_val));
           if (new_arith ==`xlUnsigned)
             begin:u4
                zero_ext # (abs_right_of_dp+old_width, new_width)
                  rti_zero_ext1 (.inp(padded_val), .res(truncated_val));
             end
           else
             begin:u5
                sign_ext # (abs_right_of_dp+old_width, new_width)
                  rti_sign_ext1 (.inp(padded_val), .res(truncated_val));
             end
        end
   endgenerate
   generate
      if (new_arith == `xlSigned)
        begin:u6
           always @(inp)
             begin
                one_or_zero = {new_width{1'b0}};
               if (inp[old_width-1] == 1'b0)
                 begin
                    one_or_zero[0] = 1'b1;
                 end
               if ((right_of_dp >=2) && (right_of_dp <= old_width))
                 begin
                    if(|inp[right_of_dp_2:0] == 1'b1)
                       begin
                          one_or_zero[0] = 1'b1;
                       end
                 end
               if ((right_of_dp >=1) && (right_of_dp <= old_width))
                 begin
                    if(inp[right_of_dp_1] == 1'b0)
                      begin
                         one_or_zero[0] = 1'b0;
                      end
                 end
               else
                 begin
                    one_or_zero[0] = 1'b0;
                 end
             end
             assign result_signed = truncated_val + one_or_zero;
             assign res = result_signed;
        end

      else
        begin:u7
           always @(inp)
             begin
                one_or_zero = {new_width{1'b0}};
               if ((right_of_dp >=1) && (right_of_dp <= old_width))
                 begin
                    one_or_zero[0] = inp[right_of_dp_1];
                 end
             end
             assign res = truncated_val + one_or_zero;
        end
   endgenerate

endmodule
module round_towards_even (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  expected_new_width = old_width - right_of_dp + 1;
   reg [new_width-1:0] one_or_zero;
   wire signed [new_width-1:0] result_signed;
   wire [new_width-1:0] truncated_val;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   initial
     begin
      one_or_zero = { new_width{1'b0}};
     end

   generate
      if (right_of_dp >= 0)
        begin:u0
           if (new_arith == `xlUnsigned)
             begin:u1
                zero_ext # (old_width-right_of_dp, new_width)
                            rte_zero_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
           else
             begin:u2
                sign_ext # (old_width-right_of_dp, new_width)
                            rte_sign_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
        end

      else
        begin:u3
           pad_lsb # (old_width, abs_right_of_dp+old_width)
                            rte_pad_lsb (.inp(inp), .res(padded_val));
           if (new_arith == `xlUnsigned)
             begin:u4
                zero_ext # (abs_right_of_dp+old_width, new_width)
                            rte_zero_ext1 (.inp(padded_val), .res(truncated_val));
             end
           else
             begin:u5
                sign_ext # (abs_right_of_dp+old_width, new_width)
                            rte_sign_ext1 (.inp(padded_val), .res(truncated_val));
             end
        end
   endgenerate

   generate
      if ((right_of_dp ==1) && (right_of_dp <= old_width))
        begin:u6a
           always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
                if(inp[right_of_dp-1] == 1'b1)
                  begin
                     one_or_zero[0] = inp[right_of_dp];
                  end
                else
                  begin
                     one_or_zero[0] = inp[right_of_dp-1];
                  end
             end
       end
      else if ((right_of_dp >=2) && (right_of_dp <= old_width))
        begin:u6b
           always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
                if( (inp[right_of_dp-1] == 'b1) && !(|inp[right_of_dp-2:0]) )
                  begin
                     one_or_zero[0] = inp[right_of_dp];
                  end
                else
                  begin
                     one_or_zero[0] = inp[right_of_dp-1];
                  end
             end
       end
      else
        begin:u7
            always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
             end
        end
   endgenerate

   generate
      if (new_arith == `xlSigned)
        begin:u8
           assign result_signed = truncated_val + one_or_zero;
           assign res = result_signed;
        end
      else
        begin:u9
           assign res = truncated_val + one_or_zero;
        end
   endgenerate

endmodule
module trunc (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   wire [new_width-1:0] result;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   assign res = result;
   generate
      if (new_bin_pt > old_bin_pt)
        begin:tr_u2
           pad_lsb # (old_width, abs_right_of_dp+old_width)
             tr_pad_lsb (.inp(inp), .res(padded_val));
           extend_msb # (old_width+abs_right_of_dp, new_width, new_arith)
             tr_extend_msb (.inp(padded_val), .res(result));
        end
      else
        begin:tr_u1
           extend_msb # (old_width-right_of_dp, new_width, new_arith)
             tr_extend_msb (.inp(inp[old_width-1:right_of_dp]), .res(result));
        end
   endgenerate

endmodule
module saturation_arith (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  abs_width = (new_width > old_width) ? (new_width-old_width) : 1;
   parameter signed [31:0]  abs_new_width = (old_width > new_width) ? new_width : 1;
   reg overflow;
   reg [old_width-1:0] vec;
   reg [new_width-1:0] result;
   assign res = result;
   generate
      if (old_width > new_width)
        begin:sa_u0
           always @ (inp)
             begin
                vec = inp;
                overflow = 1;
                if ( (old_arith == `xlSigned) && (new_arith == `xlSigned) )
                  begin
                    if (~|inp[old_width-1:abs_new_width-1] || &inp[old_width-1:abs_new_width-1])
                     begin
                       overflow = 0;
                     end
                 end

                if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned))
                   begin
                    if (~|inp[old_width-1 : abs_new_width])
                    begin
                       overflow = 0;
                    end
                end

                if ((old_arith == `xlUnsigned) &&  (new_arith == `xlUnsigned))
                  begin
                    if (~|inp[old_width-1 : abs_new_width])
                     begin
                       overflow = 0;
                     end
                  end

               if ( (old_arith == `xlUnsigned) && (new_arith == `xlSigned))
                 begin
                  if (~|inp[old_width-1:abs_new_width-1] || &inp[old_width-1:abs_new_width-1])
                    begin
                      overflow = 0;
                    end
                 end
               if (overflow == 1)
                 begin
                   if (new_arith == `xlSigned)
                     begin
                       if (inp[old_width-1] == 'b0)
                         begin
                           result = (new_width ==1) ? 1'b0 : {1'b0, {(new_width-1){1'b1}} };
                         end
                      else
                        begin
                          result = (new_width ==1) ? 1'b1 : {1'b1, {(new_width-1){1'b0}} };
                       end
                     end
                   else
                     begin
                       if ((old_arith == `xlSigned) && (inp[old_width-1] == 'b1))
                         begin
                           result = {new_width{1'b0}};
                         end
                       else
                         begin
                           result = {new_width{1'b1}};
                         end
                     end
                 end
               else
                 begin
                    if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 'b1) )
                    begin
                      vec = {old_width{1'b0}};
                    end
                    result = vec[new_width-1:0];
                 end
             end
        end
   endgenerate
   generate
      if (new_width > old_width)
        begin:sa_u1
         always @ (inp)
           begin
            vec = inp;
            if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 1'b1) )
              begin
                vec = {old_width{1'b0}};
              end
              if (new_arith == `xlUnsigned)
                begin
                  result = { {abs_width{1'b0}}, vec};
                end
              else
                begin
                  result = { {abs_width{inp[old_width-1]}}, vec};
                end
           end
       end
   endgenerate

   generate
      if (new_width == old_width)
        begin:sa_u2
         always @ (inp)
           begin
             if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 'b1) )
               begin
                 result = {old_width{1'b0}};
               end
             else
               begin
                 result = inp;
               end
           end
        end
   endgenerate

endmodule
module wrap_arith (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  result_arith = ((old_arith==`xlSigned)&&(new_arith==`xlUnsigned))? `xlSigned : new_arith;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   cast # (old_width, old_bin_pt, new_width, new_bin_pt, result_arith)
     wrap_cast (.inp(inp), .res(result));
   assign res = result;

endmodule
module convert_type (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  quantization = `xlTruncate;
    parameter signed [31:0]  overflow = `xlWrap;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  fp_width = old_width + 2;
   parameter signed [31:0]  fp_bin_pt = old_bin_pt;
   parameter signed [31:0]  fp_arith = old_arith;
   parameter signed [31:0]  q_width = fp_width + new_bin_pt - old_bin_pt;
   parameter signed [31:0]  q_bin_pt = new_bin_pt;
   parameter signed [31:0]  q_arith = old_arith;
   wire [fp_width-1:0] full_precision_result;
   wire [new_width-1:0] result;
   wire [q_width-1:0] quantized_result;
   assign res = result;
   cast # (old_width, old_bin_pt, fp_width, fp_bin_pt, fp_arith)
     fp_cast (.inp(inp), .res(full_precision_result));
   generate
      if (quantization == `xlRound)
        begin:ct_u0
           round_towards_inf # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_rtf (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (quantization == `xlRoundBanker)
        begin:ct_u1
           round_towards_even # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_rte (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (quantization == `xlTruncate)
        begin:ct_u2
           trunc # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_tr (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (overflow == `xlSaturate)
        begin:ct_u3
           saturation_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
            ovflo_sat (.inp(quantized_result), .res(result));
        end
   endgenerate

   generate
      if ((overflow == `xlWrap) || (overflow == 3))
        begin:ct_u4
           wrap_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
             ovflo_wrap (.inp(quantized_result), .res(result));
        end
   endgenerate

endmodule
`endif


module constant_f949d4a507 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0011001100110011;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xlmult_algodev (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
    parameter core_name0 = "";
    parameter a_width = 4;
    parameter a_bin_pt = 2;
    parameter a_arith = `xlSigned;
    parameter b_width = 4;
    parameter b_bin_pt = 1;
    parameter b_arith = `xlSigned;
    parameter p_width = 8;
    parameter p_bin_pt = 2;
    parameter p_arith = `xlSigned;
    parameter rst_width = 1;
    parameter rst_bin_pt = 0;
    parameter rst_arith = `xlUnsigned;
    parameter en_width = 1;
    parameter en_bin_pt = 0;
    parameter en_arith = `xlUnsigned;
    parameter quantization = `xlTruncate;
    parameter overflow = `xlWrap;
    parameter extra_registers = 0;
    parameter c_a_width = 7;
    parameter c_b_width = 7;
    parameter c_type = 0;
    parameter c_a_type = 0;
    parameter c_b_type = 0;
    parameter c_baat = 4;
    parameter oversample = 1;
    parameter multsign = `xlSigned;
    parameter c_output_width = 16;
    input [a_width - 1 : 0] a;
    input [b_width - 1 : 0] b;
    input ce, clr, clk;
    input core_ce, core_clr, core_clk;
    input en, rst;
    output [p_width - 1 : 0] p;
    wire [c_a_width - 1 : 0]    tmp_a, conv_a;
    wire [c_b_width - 1 : 0]    tmp_b, conv_b;
   wire [c_output_width - 1 : 0] tmp_p;
   wire [p_width - 1 : 0] conv_p;
   wire internal_ce, internal_clr, internal_core_ce;
   wire rfd, rdy, nd;

   assign internal_ce = ce & en;
   assign internal_core_ce = core_ce & en;
   assign internal_clr = (clr | rst) & en;
   assign nd = ce & en;
   zero_ext # (a_width, c_a_width) zero_ext_a (.inp(a), .res(tmp_a));
   zero_ext # (b_width, c_b_width) zero_ext_b (.inp(b), .res(tmp_b));
   convert_type # (c_output_width, a_bin_pt+b_bin_pt, multsign,
                   p_width, p_bin_pt, p_arith, quantization, overflow)
     conv_udp (.inp(tmp_p), .res(conv_p));

generate
  if (core_name0 == "mult_11_2_9c87a4aa35fb2a9b")
    begin:comp0
    mult_11_2_9c87a4aa35fb2a9b core_instance0 (
        .a(tmp_a),
        .b(tmp_b),
        .p(tmp_p)
      );
  end
  if (core_name0 == "mult_11_2_27d1945b067283da")
    begin:comp1
    mult_11_2_27d1945b067283da core_instance1 (
        .a(tmp_a),
        .b(tmp_b),
        .p(tmp_p)
      );
  end
   if (extra_registers > 0)
     begin:latency_gt_0
        synth_reg # (p_width, extra_registers)
          reg1 (
               .i(conv_p),
               .ce(internal_ce),
               .clr(internal_clr),
               .clk(clk),
               .o(p));
     end

   if (extra_registers == 0)
     begin:latency_eq_0
        assign p = conv_p;
     end
endgenerate
endmodule


module constant_57bfc9d6c9 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0010000000000000;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
 module xladdsub_algodev (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
parameter core_name0= "";
parameter a_width= 16;
parameter signed a_bin_pt= 4;
parameter a_arith= `xlUnsigned;
parameter c_in_width= 16;
parameter c_in_bin_pt= 4;
parameter c_in_arith= `xlUnsigned;
parameter c_out_width= 16;
parameter c_out_bin_pt= 4;
parameter c_out_arith= `xlUnsigned;
parameter b_width= 8;
parameter signed b_bin_pt= 2;
parameter b_arith= `xlUnsigned;
parameter s_width= 17;
parameter s_bin_pt= 4;
parameter s_arith= `xlUnsigned;
parameter rst_width= 1;
parameter rst_bin_pt= 0;
parameter rst_arith= `xlUnsigned;
parameter en_width= 1;
parameter en_bin_pt= 0;
parameter en_arith= `xlUnsigned;
parameter full_s_width= 17;
parameter full_s_arith= `xlUnsigned;
parameter mode= `xlAddMode;
parameter extra_registers= 0;
parameter latency= 0;
parameter quantization= `xlTruncate;
parameter overflow= `xlWrap;
parameter c_a_width= 16;
parameter c_b_width= 8;
parameter c_a_type= 1;
parameter c_b_type= 1;
parameter c_has_sclr= 0;
parameter c_has_ce= 0;
parameter c_latency= 0;
parameter c_output_width= 17;
parameter c_enable_rlocs= 1;
parameter c_has_c_in= 0;
parameter c_has_c_out= 0;
input [a_width-1:0] a;
input [b_width-1:0] b;
input c_in, ce, clr, clk, rst, en;
output c_out;
output [s_width-1:0] s;
parameter full_a_width = full_s_width;
parameter full_b_width = full_s_width;
parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
wire [full_a_width-1:0] full_a;
wire [full_b_width-1:0] full_b;
wire [full_s_width-1:0] full_s;
wire [full_s_width-1:0] core_s;
wire [s_width-1:0] conv_s;
wire  temp_cout;
wire  real_a,real_b,real_s;
wire  internal_clr;
wire  internal_ce;
wire  extra_reg_ce;
wire  override;
wire  logic1;
wire  temp_cin;
assign internal_clr = (clr | rst) & ce;
assign internal_ce = ce & en;
assign logic1 = 1'b1;
assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
align_inp_a(.inp(a),.res(full_a));
align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
align_inp_b(.inp(b),.res(full_b));
convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                s_bin_pt, s_arith, quantization, overflow)
conv_typ_s(.inp(core_s),.res(conv_s));
generate
  if (core_name0 == "addsb_11_0_232ff08b73742c1b")
    begin:comp0
    addsb_11_0_232ff08b73742c1b core_instance0 (
         .a(full_a),
         .s(core_s),
         .b(full_b)
      );
  end

  if (core_name0 == "addsb_11_0_115949a8e6f0bfc4")
    begin:comp1
    addsb_11_0_115949a8e6f0bfc4 core_instance1 (
         .a(full_a),
         .s(core_s),
         .b(full_b)
      );
  end

endgenerate
generate
  if (extra_registers > 0)
  begin:latency_test

    if (c_latency > 1)
    begin:override_test
      synth_reg # (1, c_latency)
        override_pipe (
          .i(logic1),
          .ce(internal_ce),
          .clr(internal_clr),
          .clk(clk),
          .o(override));
      assign extra_reg_ce = ce & en & override;
    end
    if ((c_latency == 0) || (c_latency == 1))
    begin:no_override
      assign extra_reg_ce = ce & en;
    end
    synth_reg # (s_width, extra_registers)
      extra_reg (
        .i(conv_s),
        .ce(extra_reg_ce),
        .clr(internal_clr),
        .clk(clk),
        .o(s));
    if (c_has_c_out == 1)
    begin:cout_test
      synth_reg # (1, extra_registers)
        c_out_extra_reg (
          .i(temp_cout),
          .ce(extra_reg_ce),
          .clr(internal_clr),
          .clk(clk),
          .o(c_out));
    end

  end
endgenerate
generate
  if ((latency == 0) || (extra_registers == 0))
  begin:latency_s
    assign s = conv_s;
  end
endgenerate
generate
  if (((latency == 0) || (extra_registers == 0)) &&
      (c_has_c_out == 1))
  begin:latency0
    assign c_out = temp_cout;
  end
endgenerate
generate
  if (c_has_c_out == 0)
  begin:tie_dangling_cout
    assign c_out = 0;
  end
endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xlconvert(din, clk, ce, clr, en, dout);
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
                              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate
generate
if (latency > 0)
     begin:latency_test
        synth_reg # (dout_width, latency)
          reg1 (
               .i(result),
               .ce(internal_ce),
               .clr(clr),
               .clk(clk),
               .o(dout));
     end
else
     begin:latency0
        assign dout = result;
     end
endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);
generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule


module reinterpret_87da68fdf8 (
  input [(18 - 1):0] input_port,
  output [(18 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(18 - 1):0] input_port_1_40;
  wire signed [(18 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module  xlslice  (x, y);
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;
input [x_width-1:0] x;
output [y_width-1:0] y;
assign y = x[new_msb:new_lsb];
endmodule
// Generated from Simulink block "algodev/Audio_algoritmo/echo_left/gain1"

module gain1_module_bfdc6b1340 (
  ce_1,
  clk_1,
  in1,
  out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [16:0] in1;
  output [32:0] out1;

  wire [0:0] ce_1_sg_x0;
  wire [0:0] clk_1_sg_x0;
  wire [15:0] constant_op_net;
  wire [16:0] delay4_q_net_x0;
  wire [32:0] mult_p_net_x0;

  assign ce_1_sg_x0 = ce_1;
  assign clk_1_sg_x0 = clk_1;
  assign delay4_q_net_x0 = in1;
  assign out1 = mult_p_net_x0;


  constant_f949d4a507  constant_x0 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );

  xlmult_algodev #(

    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(14),
    .b_width(17),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(17),
    .c_baat(16),
    .c_output_width(33),
    .c_type(0),
    .core_name0("mult_11_2_9c87a4aa35fb2a9b"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(28),
    .p_width(33),
    .quantization(1))
  mult (
    .a(constant_op_net),
    .b(delay4_q_net_x0),
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .core_ce(ce_1_sg_x0),
    .core_clk(clk_1_sg_x0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .p(mult_p_net_x0)
  );
endmodule
// Generated from Simulink block "algodev/Audio_algoritmo/echo_left/gain2"

module gain2_module_2c83a50dc6 (
  ce_1,
  clk_1,
  in1,
  out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [16:0] in1;
  output [32:0] out1;

  wire [0:0] ce_1_sg_x1;
  wire [0:0] clk_1_sg_x1;
  wire [15:0] constant1_op_net;
  wire [16:0] delay4_q_net_x1;
  wire [32:0] mult1_p_net_x0;

  assign ce_1_sg_x1 = ce_1;
  assign clk_1_sg_x1 = clk_1;
  assign delay4_q_net_x1 = in1;
  assign out1 = mult1_p_net_x0;


  constant_57bfc9d6c9  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  xlmult_algodev #(

    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(17),
    .b_arith(`xlSigned),
    .b_bin_pt(14),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(17),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(17),
    .c_output_width(33),
    .c_type(0),
    .core_name0("mult_11_2_27d1945b067283da"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(28),
    .p_width(33),
    .quantization(1))
  mult1 (
    .a(delay4_q_net_x1),
    .b(constant1_op_net),
    .ce(ce_1_sg_x1),
    .clk(clk_1_sg_x1),
    .clr(1'b0),
    .core_ce(ce_1_sg_x1),
    .core_clk(clk_1_sg_x1),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .p(mult1_p_net_x0)
  );
endmodule
// Generated from Simulink block "algodev/Audio_algoritmo/echo_left"

module echo_left_module_9c3592d1ee (
  ce_1,
  clk_1,
  in1,
  in2,
  out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] in1;
  input [0:0] in2;
  output [17:0] out1;

  wire [33:0] addsub1_s_net;
  wire [16:0] addsub_s_net;
  wire [15:0] audioleftin_net_x0;
  wire [0:0] ce_1_sg_x2;
  wire [0:0] clk_1_sg_x2;
  wire [15:0] convert_dout_net;
  wire [16:0] delay4_q_net_x1;
  wire [15:0] delay5_q_net;
  wire [0:0] enable_net_x0;
  wire [32:0] mult1_p_net_x0;
  wire [32:0] mult_p_net_x0;
  wire [17:0] reinterpret_output_port_net_x0;
  wire [17:0] slice_y_net;

  assign ce_1_sg_x2 = ce_1;
  assign clk_1_sg_x2 = clk_1;
  assign audioleftin_net_x0 = in1;
  assign enable_net_x0 = in2;
  assign out1 = reinterpret_output_port_net_x0;


  xladdsub_algodev #(

    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(14),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(17),
    .core_name0("addsb_11_0_232ff08b73742c1b"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(14),
    .s_width(17))
  addsub (
    .a(convert_dout_net),
    .b(audioleftin_net_x0),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub_s_net)
  );

  xladdsub_algodev #(

    .a_arith(`xlSigned),
    .a_bin_pt(28),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(14),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(34),
    .core_name0("addsb_11_0_115949a8e6f0bfc4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(28),
    .s_width(34))
  addsub1 (
    .a(mult1_p_net_x0),
    .b(delay5_q_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub1_s_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(28),
    .din_width(33),
    .dout_arith(2),
    .dout_bin_pt(14),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .din(mult_p_net_x0),
    .en(1'b1),
    .dout(convert_dout_net)
  );

  xldelay #(

    .latency(4500),
    .reg_retiming(0),
    .reset(0),
    .width(17))
  delay4 (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .d(addsub_s_net),
    .en(enable_net_x0),
    .rst(1'b1),
    .q(delay4_q_net_x1)
  );

  xldelay #(

    .latency(3),
    .reg_retiming(0),
    .reset(0),
    .width(16))
  delay5 (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .d(audioleftin_net_x0),
    .en(1'b1),
    .rst(1'b1),
    .q(delay5_q_net)
  );

  gain1_module_bfdc6b1340  gain1_bfdc6b1340 (
    .ce_1(ce_1_sg_x2),
    .clk_1(clk_1_sg_x2),
    .in1(delay4_q_net_x1),
    .out1(mult_p_net_x0)
  );

  gain2_module_2c83a50dc6  gain2_2c83a50dc6 (
    .ce_1(ce_1_sg_x2),
    .clk_1(clk_1_sg_x2),
    .in1(delay4_q_net_x1),
    .out1(mult1_p_net_x0)
  );

  reinterpret_87da68fdf8  reinterpret (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(slice_y_net),
    .output_port(reinterpret_output_port_net_x0)
  );

  xlslice #(

    .new_lsb(14),
    .new_msb(31),
    .x_width(34),
    .y_width(18))
  slice (
    .x(addsub1_s_net),
    .y(slice_y_net)
  );
endmodule
// Generated from Simulink block "algodev/Audio_algoritmo"

module audio_algoritmo_module_7f549da308 (
  ce_1,
  clk_1,
  in1,
  in2,
  in3,
  out1,
  out2
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] in1;
  input [15:0] in2;
  input [0:0] in3;
  output [17:0] out1;
  output [17:0] out2;

  wire [15:0] audioleftin_net_x1;
  wire [15:0] audiorightin_net_x1;
  wire [0:0] ce_1_sg_x6;
  wire [0:0] clk_1_sg_x6;
  wire [0:0] enable_net_x2;
  wire [17:0] reinterpret_output_port_net_x2;
  wire [17:0] reinterpret_output_port_net_x3;

  assign ce_1_sg_x6 = ce_1;
  assign clk_1_sg_x6 = clk_1;
  assign audioleftin_net_x1 = in1;
  assign audiorightin_net_x1 = in2;
  assign enable_net_x2 = in3;
  assign out1 = reinterpret_output_port_net_x2;
  assign out2 = reinterpret_output_port_net_x3;


  echo_left_module_9c3592d1ee  echo_left_9c3592d1ee (
    .ce_1(ce_1_sg_x6),
    .clk_1(clk_1_sg_x6),
    .in1(audioleftin_net_x1),
    .in2(enable_net_x2),
    .out1(reinterpret_output_port_net_x2)
  );

  echo_left_module_9c3592d1ee  echo_right_67823a1158 (
    .ce_1(ce_1_sg_x6),
    .clk_1(clk_1_sg_x6),
    .in1(audiorightin_net_x1),
    .in2(enable_net_x2),
    .out1(reinterpret_output_port_net_x3)
  );
endmodule
// Generated from Simulink block "algodev"

(* core_generation_info = "algodev,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,compilation=HDL_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=64,xilinx_adder_subtracter_block=4,xilinx_bit_slice_extractor_block=2,xilinx_constant_block_block=4,xilinx_delay_block=4,xilinx_gateway_in_block=3,xilinx_gateway_out_block=2,xilinx_multiplier_block=4,xilinx_system_generator_block=1,xilinx_type_converter_block=2,xilinx_type_reinterpreter_block=2,}" *)
module algodev (
  audioleftin,
  audioleftout,
  audiorightin,
  audiorightout,
  ce_1,
  clk_1,
  enable
);

  input [15:0] audioleftin;
  input [15:0] audiorightin;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] enable;
  output [17:0] audioleftout;
  output [17:0] audiorightout;

  wire [15:0] audioleftin_net;
  wire [17:0] audioleftout_net;
  wire [15:0] audiorightin_net;
  wire [17:0] audiorightout_net;
  wire [0:0] ce_1_sg_x7;
  wire [0:0] clk_1_sg_x7;
  wire [0:0] enable_net;

  assign audioleftin_net = audioleftin;
  assign audioleftout = audioleftout_net;
  assign audiorightin_net = audiorightin;
  assign audiorightout = audiorightout_net;
  assign ce_1_sg_x7 = ce_1;
  assign clk_1_sg_x7 = clk_1;
  assign enable_net = enable;


  audio_algoritmo_module_7f549da308  audio_algoritmo_7f549da308 (
    .ce_1(ce_1_sg_x7),
    .clk_1(clk_1_sg_x7),
    .in1(audioleftin_net),
    .in2(audiorightin_net),
    .in3(enable_net),
    .out1(audioleftout_net),
    .out2(audiorightout_net)
  );
endmodule

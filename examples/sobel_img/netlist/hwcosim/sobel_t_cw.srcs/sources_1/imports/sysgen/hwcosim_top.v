//----------------------------------------------------------------------------
// System Generator version 12.3 Verilog source file.
//
// Copyright(C) 2010 by Xilinx, Inc.  All rights reserved.  This
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
// text at all times.  (c) Copyright 1995-2010 Xilinx, Inc.  All rights
// reserved.
//----------------------------------------------------------------------------

(* core_generation_info = "hwcosim_top,hwcosim,{Board=sp605,Interface=jtag,HDLLanguage=verilog,Flow=sysgen,}" *)
module hwcosim_top
  (
    hwcosim_sys_clk_p,
    hwcosim_sys_clk_n
  );

  input hwcosim_sys_clk_p;
  input hwcosim_sys_clk_n;

  wire sys_clk_int;

  wire hwcosim_sys_clk_ibuf;

  wire hwcosim_clkgen_dcm_clkfb;
  wire hwcosim_clkgen_dcm_clk0;
  wire hwcosim_clkgen_dcm_clk2x;
  wire hwcosim_clkgen_dcm_clkdv;
  wire hwcosim_clkgen_dcm_clkfx;
  wire hwcosim_clkgen_dcm_clk0_buf;
  wire hwcosim_clkgen_dcm_clk2x_buf;
  wire hwcosim_clkgen_dcm_clkdv_buf;
  wire hwcosim_clkgen_dcm_clkfx_buf;
  wire hwcosim_clkgen_dcm_locked;

  wire hwcosim_dut_src_clk;
  wire hwcosim_dut_fr_clk;
  wire hwcosim_dut_ss_clk;

  wire hwcosim_sstep_clk_int;
  wire hwcosim_cosim_clk_sel_int;
  wire hwcosim_we_int;
  wire hwcosim_re_int;
  wire [7:0] hwcosim_bank_sel_int;
  wire [23:0] hwcosim_addr_int;
  wire [31:0] hwcosim_data_in_int;
  wire [31:0] hwcosim_data_out_int;

  IBUFGDS ibufgds_hwcosim_sys_clk
    (
      .I (hwcosim_sys_clk_p),
      .IB (hwcosim_sys_clk_n),
      .O (hwcosim_sys_clk_ibuf)
    );

  DCM #(
      .CLKFX_MULTIPLY (2),
      .CLKFX_DIVIDE (6),
      .DFS_FREQUENCY_MODE ("LOW"),
      .DLL_FREQUENCY_MODE ("LOW"),
      .CLKIN_PERIOD (5.0),
      .CLKIN_DIVIDE_BY_2 ("FALSE"),
      .CLKOUT_PHASE_SHIFT ("NONE"),
      .CLK_FEEDBACK ("1X"),
      .PHASE_SHIFT (0)
    )
    hwcosim_clkgen_dcm (
      .CLKFB (hwcosim_clkgen_dcm_clkfb),
      .CLKIN (hwcosim_sys_clk_ibuf),
      .DSSEN (1'b0),
      .PSCLK (1'b0),
      .PSEN (1'b0),
      .PSINCDEC (1'b0),
      .RST (1'b0),
      .CLK0 (hwcosim_clkgen_dcm_clk0),
      .CLK180 (),
      .CLK270 (),
      .CLK2X (hwcosim_clkgen_dcm_clk2x),
      .CLK2X180 (),
      .CLK90 (),
      .CLKDV (hwcosim_clkgen_dcm_clkdv),
      .CLKFX (hwcosim_clkgen_dcm_clkfx),
      .CLKFX180 (),
      .LOCKED (hwcosim_clkgen_dcm_locked),
      .PSDONE (),
      .STATUS ()
    );

  BUFGCE bufgce_hwcosim_clkgen_dcm_clkfx
    (
      .I (hwcosim_clkgen_dcm_clkfx),
      .CE (hwcosim_clkgen_dcm_locked),
      .O (hwcosim_clkgen_dcm_clkfx_buf)
    );

  BUFG bufg_dcm_clkfb
    (
      .I (hwcosim_clkgen_dcm_clk0),
      .O (hwcosim_clkgen_dcm_clkfb)
    );

  BUFGMUX bufgmux_comp1
    (
      .I0 (hwcosim_dut_src_clk),
      .I1 (hwcosim_sstep_clk_int),
      .S (1'b0),
      .O (hwcosim_dut_fr_clk)
    );

  BUFGMUX bufgmux_comp2
    (
      .I0 (hwcosim_sstep_clk_int),
      .I1 (hwcosim_dut_src_clk),
      .S (hwcosim_cosim_clk_sel_int),
      .O (hwcosim_dut_ss_clk)
    );

  assign hwcosim_dut_src_clk = hwcosim_clkgen_dcm_clkfx_buf;
  assign sys_clk_int = hwcosim_dut_fr_clk;

  hwcosim_interface hwcif
    (
      .hwcosim_sys_clk (hwcosim_sys_clk_ibuf),
      .hwcosim_dut_fr_clk (hwcosim_dut_fr_clk),
      .hwcosim_dut_ss_clk (hwcosim_dut_ss_clk),
      .hwcosim_mm_we (hwcosim_we_int),
      .hwcosim_mm_re (hwcosim_re_int),
      .hwcosim_mm_bank_sel (hwcosim_bank_sel_int),
      .hwcosim_mm_addr (hwcosim_addr_int),
      .hwcosim_mm_data_in (hwcosim_data_in_int),
      .hwcosim_mm_data_out (hwcosim_data_out_int)
    );

  (* box_type="user_black_box" *) jtagcosim_iface_spartan6 cosim_core_inst
    (
      .sys_clk (sys_clk_int),
      .addr (hwcosim_addr_int),
      .bank_sel (hwcosim_bank_sel_int),
      .cosim_clk_sel (hwcosim_cosim_clk_sel_int),
      .data_in (hwcosim_data_in_int),
      .data_out (hwcosim_data_out_int),
      .sstep_clk (hwcosim_sstep_clk_int),
      .we (hwcosim_we_int),
      .re (hwcosim_re_int)
    ) /* synthesis syn_noprune=1 syn_black_box=1 */;


endmodule
 
module jtagcosim_iface_spartan6
  (
    sys_clk,
    addr,
    bank_sel,
    cosim_clk_sel,
    data_in,
    data_out,
    sstep_clk,
    we,
    re
  );
  input sys_clk;
  output [23:0] addr;
  output [7:0] bank_sel;
  output cosim_clk_sel;
  output [31:0] data_in;
  input [31:0] data_out;
  output sstep_clk;
  output we;
  output re;
endmodule

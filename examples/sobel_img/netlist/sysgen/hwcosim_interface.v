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

module hwcosim_shared_memory_lock_manager(clk, hw_req, hw_grant, sw_req, sw_grant);
  input clk;
  input hw_req;
  output reg hw_grant;
  output sw_req;
  input sw_grant;

  wire hw_req_int;
  reg hr_reg1;
  wire hr_reg1_en;
  reg hr_reg2;
  reg sw_req_int;

  assign sw_req = sw_req_int;
  assign hr_reg1_en = ~hr_reg2;

  // Increase # pulses for hw_req signal
  always @(posedge clk or negedge hw_req) begin
    if (!hw_req) begin
      hr_reg1 <= 1'b0;
    end else begin
      if (hr_reg1_en) begin
        hr_reg1 <= 1'b1;
      end
    end
  end

  always @(posedge clk) begin
    hr_reg2 <= hr_reg1;
  end

  assign hw_req_int = hw_req & hr_reg1;

  // Generate sw_req signal
  always @(posedge clk or negedge hw_req_int) begin
    if (!hw_req_int) begin
      sw_req_int <= 1'b0;
    end else begin
      if (!sw_grant) begin
        sw_req_int <= 1'b1;
      end
    end
  end

  // Generate hw_grant signal
  always @(posedge clk or negedge hw_req_int) begin
    if (!hw_req_int) begin
      hw_grant <= 1'b0;
    end else begin
      if (sw_req_int && sw_grant) begin
        hw_grant <= 1'b1;
      end
    end
  end

endmodule

//----------------------------------------------------------------------------

module hwcosim_shared_register(clk, ce, clr, i, o);
  parameter WIDTH = 32;
  parameter [WIDTH-1:0] INIT_VALUE = {WIDTH{1'b0}};

  input clk;
  input ce;
  input clr;
  input [WIDTH-1:0] i;
  output [WIDTH-1:0] o;

  genvar index;
  generate
    for (index = 0; index < WIDTH; index = index + 1)
    begin:fd_prim_array
      if (INIT_VALUE[index] == 0)
      begin:rst_comp
        FDRE fdre_comp
        (
          .C (clk),
          .D (i[index]),
          .Q (o[index]),
          .CE (ce),
          .R (clr)
        );
      end
      else
      begin:set_comp
        FDSE fdse_comp
        (
          .C (clk),
          .D (i[index]),
          .Q (o[index]),
          .CE (ce),
          .S (clr)
        );
      end
    end
  endgenerate
endmodule

//----------------------------------------------------------------------------

module hwcosim_memory_map
  (
    mm_o_b,
    mm_o_g,
    mm_o_r,
    mm_i_sobelout,
    hwcosim_mm_clk,
    hwcosim_mm_we,
    hwcosim_mm_re,
    hwcosim_mm_bank_sel,
    hwcosim_mm_addr,
    hwcosim_mm_data_in,
    hwcosim_mm_data_out
  );

  output [15:0] mm_o_b;
  output [15:0] mm_o_g;
  output [15:0] mm_o_r;
  input [40:0] mm_i_sobelout;
  input hwcosim_mm_clk;
  input hwcosim_mm_we;
  input hwcosim_mm_re;
  input [7:0] hwcosim_mm_bank_sel;
  input [23:0] hwcosim_mm_addr;
  input [31:0] hwcosim_mm_data_in;
  output reg [31:0] hwcosim_mm_data_out;

  reg [31:0] hwcosim_mm_data_out_bank0;

  reg [15:0] int_o_b;
  reg [15:0] int_o_g;
  reg [15:0] int_o_r;
  wire [40:0] int_i_sobelout;

  always @(posedge hwcosim_mm_clk)
  begin
    if (hwcosim_mm_we && hwcosim_mm_bank_sel == 0) begin
      case (hwcosim_mm_addr)
        0 : int_o_b[15:0] <= hwcosim_mm_data_in[15:0];
        1 : int_o_g[15:0] <= hwcosim_mm_data_in[15:0];
        2 : int_o_r[15:0] <= hwcosim_mm_data_in[15:0];
        default : ;
      endcase
    end else begin
      case (hwcosim_mm_addr)
        0 : hwcosim_mm_data_out_bank0 <= int_i_sobelout[40:32];
        1 : hwcosim_mm_data_out_bank0 <= int_i_sobelout[31:0];
        default : ;
      endcase
    end
  end

  assign int_i_sobelout = mm_i_sobelout;
  assign mm_o_b = int_o_b;
  assign mm_o_g = int_o_g;
  assign mm_o_r = int_o_r;

  always @(hwcosim_mm_bank_sel,
           hwcosim_mm_data_out_bank0)
  begin
    case (hwcosim_mm_bank_sel)
      0 : hwcosim_mm_data_out <= hwcosim_mm_data_out_bank0;
      default : hwcosim_mm_data_out <= 0;
    endcase
  end

endmodule

//----------------------------------------------------------------------------

module hwcosim_interface
  (
    hwcosim_sys_clk,
    hwcosim_dut_fr_clk,
    hwcosim_dut_ss_clk, 
    hwcosim_mm_we,
    hwcosim_mm_re,
    hwcosim_mm_bank_sel,
    hwcosim_mm_addr,
    hwcosim_mm_data_in,
    hwcosim_mm_data_out
  );

  input hwcosim_sys_clk;
  input hwcosim_dut_fr_clk;
  input hwcosim_dut_ss_clk; 
  input hwcosim_mm_we;
  input hwcosim_mm_re;
  input [7:0] hwcosim_mm_bank_sel;
  input [23:0] hwcosim_mm_addr;
  input [31:0] hwcosim_mm_data_in;
  output [31:0] hwcosim_mm_data_out;
   
  wire [15:0] mm_o_b;
  wire [15:0] mm_o_g;
  wire [15:0] mm_o_r;
  wire [40:0] mm_i_sobelout;
  wire dut_o_ce;
  wire dut_o_clk;
  wire [15:0] dut_o_b;
  wire [15:0] dut_o_g;
  wire [15:0] dut_o_r;
  wire [40:0] dut_i_sobelout;

  hwcosim_memory_map hwcosim_memory_map_inst
    (
      .mm_o_b (mm_o_b),
      .mm_o_g (mm_o_g),
      .mm_o_r (mm_o_r),
      .mm_i_sobelout (mm_i_sobelout),
      .hwcosim_mm_clk (hwcosim_dut_fr_clk),
      .hwcosim_mm_we (hwcosim_mm_we),
      .hwcosim_mm_re (hwcosim_mm_re),
      .hwcosim_mm_bank_sel (hwcosim_mm_bank_sel),
      .hwcosim_mm_addr (hwcosim_mm_addr),
      .hwcosim_mm_data_in (hwcosim_mm_data_in),
      .hwcosim_mm_data_out (hwcosim_mm_data_out)
    );
    
  sobel_t_cw hwcosim_dut_inst
    (
      .ce (dut_o_ce),
      .clk (hwcosim_dut_ss_clk) ,
      .b (dut_o_b),
      .g (dut_o_g),
      .r (dut_o_r),
      .sobelout (dut_i_sobelout)
    ) ;

  assign dut_o_ce = 1;
  assign dut_o_b = mm_o_b;
  assign dut_o_g = mm_o_g;
  assign dut_o_r = mm_o_r;
  assign mm_i_sobelout = dut_i_sobelout;

endmodule


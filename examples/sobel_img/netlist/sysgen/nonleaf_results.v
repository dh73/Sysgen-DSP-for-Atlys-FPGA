// Generated from Simulink block "sobel_t/SobelFilter_imp/ABS1"

module abs1_module_50faf5e9b2 (
  ce_1,
  clk_1,
  in1,
  out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [39:0] in1;
  output [40:0] out1;

  wire [39:0] addsub2_s_net_x0;
  wire [0:0] ce_1_sg_x0;
  wire [0:0] clk_1_sg_x0;
  wire [40:0] mux_y_net_x0;
  wire [40:0] negate_op_net;
  wire [39:0] register1_q_net;
  wire [0:0] register2_q_net;
  wire [0:0] slice_y_net;

  assign ce_1_sg_x0 = ce_1;
  assign clk_1_sg_x0 = clk_1;
  assign addsub2_s_net_x0 = in1;
  assign out1 = mux_y_net_x0;


  mux_b4bf85038c  mux (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .d0(register1_q_net),
    .d1(negate_op_net),
    .sel(register2_q_net),
    .y(mux_y_net_x0)
  );

  negate_84a394a3a3  negate (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .ip(addsub2_s_net_x0),
    .op(negate_op_net)
  );

  xlregister #(

    .d_width(40),
    .init_value(40'b0000000000000000000000000000000000000000))
  register1 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(addsub2_s_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register1_q_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register2 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(slice_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net)
  );

  xlslice #(

    .new_lsb(39),
    .new_msb(39),
    .x_width(40),
    .y_width(1))
  slice (
    .x(addsub2_s_net_x0),
    .y(slice_y_net)
  );
endmodule
// Generated from Simulink block "sobel_t/SobelFilter_imp"

module sobelfilter_imp_module_1d64c29308 (
  ce_1,
  clk_1,
  in1,
  out1
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [33:0] in1;
  output [40:0] out1;

  wire [33:0] addsub1_s_net_x0;
  wire [39:0] addsub2_s_net_x0;
  wire [0:0] ce_1_sg_x1;
  wire [0:0] clk_1_sg_x1;
  wire [0:0] constant_op_net;
  wire [40:0] mux_y_net_x1;
  wire [38:0] sobel_x_dout_net;
  wire [38:0] sobel_y_dout_net;

  assign ce_1_sg_x1 = ce_1;
  assign clk_1_sg_x1 = clk_1;
  assign addsub1_s_net_x0 = in1;
  assign out1 = mux_y_net_x1;


  abs1_module_50faf5e9b2  abs1_50faf5e9b2 (
    .ce_1(ce_1_sg_x1),
    .clk_1(clk_1_sg_x1),
    .in1(addsub2_s_net_x0),
    .out1(mux_y_net_x1)
  );

  xladdsub_sobel_t #(

    .a_arith(`xlSigned),
    .a_bin_pt(28),
    .a_width(39),
    .b_arith(`xlSigned),
    .b_bin_pt(28),
    .b_width(39),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(40),
    .core_name0("addsb_11_0_29dfa978383111a1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(40),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(28),
    .s_width(40))
  addsub2 (
    .a(sobel_x_dout_net),
    .b(sobel_y_dout_net),
    .ce(ce_1_sg_x1),
    .clk(clk_1_sg_x1),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub2_s_net_x0)
  );

  constant_5e90e4a8ec  constant_x0 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );

  xlfir_compiler_22a56fbbd9d1f82c2b14ff138816f012  sobel_x (
    .ce(ce_1_sg_x1),
    .clk(clk_1_sg_x1),
    .din(addsub1_s_net_x0),
    .nd(constant_op_net),
    .src_ce(ce_1_sg_x1),
    .src_clk(clk_1_sg_x1),
    .dout(sobel_x_dout_net)
  );

  xlfir_compiler_f99aec0f9a91ebc5ec52d028c69d7f45  sobel_y (
    .ce(ce_1_sg_x1),
    .clk(clk_1_sg_x1),
    .din(addsub1_s_net_x0),
    .nd(constant_op_net),
    .src_ce(ce_1_sg_x1),
    .src_clk(clk_1_sg_x1),
    .dout(sobel_y_dout_net)
  );
endmodule
// Generated from Simulink block "sobel_t"

(* core_generation_info = "sobel_t,sysgen_core,{clock_period=15.00000000,clocking=Clock_Enables,compilation=SP605_(JTAG),sample_periods=1.00000000000,testbench=0,total_blocks=101,xilinx_adder_subtracter_block=3,xilinx_bit_slice_extractor_block=1,xilinx_bus_multiplexer_block=1,xilinx_constant_block_block=1,xilinx_constant_multiplier_block=3,xilinx_fir_compiler_5_0_block=2,xilinx_gateway_in_block=3,xilinx_gateway_out_block=2,xilinx_negate_block_block=1,xilinx_register_block=5,xilinx_resource_estimator_block=1,xilinx_system_generator_block=1,}" *)
module sobel_t (
  b,
  ce_1,
  clk_1,
  g,
  r,
  sobelout
);

  input [15:0] b;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] g;
  input [15:0] r;
  output [40:0] sobelout;

  wire [33:0] addsub1_s_net_x0;
  wire [32:0] addsub_s_net;
  wire [15:0] b_net;
  wire [0:0] ce_1_sg_x2;
  wire [0:0] clk_1_sg_x2;
  wire [31:0] cmult1_p_net;
  wire [31:0] cmult2_p_net;
  wire [31:0] cmult_p_net;
  wire [15:0] g_net;
  wire [15:0] r_net;
  wire [15:0] register1_q_net;
  wire [15:0] register2_q_net;
  wire [15:0] register_q_net;
  wire [40:0] sobelout_net;

  assign b_net = b;
  assign ce_1_sg_x2 = ce_1;
  assign clk_1_sg_x2 = clk_1;
  assign g_net = g;
  assign r_net = r;
  assign sobelout = sobelout_net;


  xladdsub_sobel_t #(

    .a_arith(`xlUnsigned),
    .a_bin_pt(28),
    .a_width(32),
    .b_arith(`xlUnsigned),
    .b_bin_pt(28),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(33),
    .core_name0("addsb_11_0_856b46edf5fd2c9b"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(33),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(28),
    .s_width(33))
  addsub (
    .a(cmult_p_net),
    .b(cmult1_p_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub_s_net)
  );

  xladdsub_sobel_t #(

    .a_arith(`xlUnsigned),
    .a_bin_pt(28),
    .a_width(33),
    .b_arith(`xlUnsigned),
    .b_bin_pt(28),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(34),
    .core_name0("addsb_11_0_ba165a98660a6463"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(34),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(28),
    .s_width(34))
  addsub1 (
    .a(addsub_s_net),
    .b(cmult2_p_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub1_s_net_x0)
  );

  xlcmult_sobel_t #(

    .a_arith(`xlUnsigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_bin_pt(14),
    .c_a_type(1),
    .c_a_width(16),
    .c_b_type(1),
    .c_b_width(16),
    .c_output_width(32),
    .core_name0("cmlt_11_2_a680687b7f91c37b"),
    .extra_registers(0),
    .multsign(1),
    .overflow(1),
    .p_arith(`xlUnsigned),
    .p_bin_pt(28),
    .p_width(32),
    .quantization(1),
    .zero_const(0))
  cmult (
    .a(register_q_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .core_ce(ce_1_sg_x2),
    .core_clk(clk_1_sg_x2),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .p(cmult_p_net)
  );

  xlcmult_sobel_t #(

    .a_arith(`xlUnsigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_bin_pt(14),
    .c_a_type(1),
    .c_a_width(16),
    .c_b_type(1),
    .c_b_width(16),
    .c_output_width(32),
    .core_name0("cmlt_11_2_a8cda2c4d6ade386"),
    .extra_registers(0),
    .multsign(1),
    .overflow(1),
    .p_arith(`xlUnsigned),
    .p_bin_pt(28),
    .p_width(32),
    .quantization(1),
    .zero_const(0))
  cmult1 (
    .a(register1_q_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .core_ce(ce_1_sg_x2),
    .core_clk(clk_1_sg_x2),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .p(cmult1_p_net)
  );

  xlcmult_sobel_t #(

    .a_arith(`xlUnsigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_bin_pt(14),
    .c_a_type(1),
    .c_a_width(16),
    .c_b_type(1),
    .c_b_width(16),
    .c_output_width(32),
    .core_name0("cmlt_11_2_ef11385c78568766"),
    .extra_registers(0),
    .multsign(1),
    .overflow(1),
    .p_arith(`xlUnsigned),
    .p_bin_pt(28),
    .p_width(32),
    .quantization(1),
    .zero_const(0))
  cmult2 (
    .a(register2_q_net),
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .clr(1'b0),
    .core_ce(ce_1_sg_x2),
    .core_clk(clk_1_sg_x2),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .p(cmult2_p_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register1 (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .d(g_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register1_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register2 (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .d(b_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register_x0 (
    .ce(ce_1_sg_x2),
    .clk(clk_1_sg_x2),
    .d(r_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net)
  );

  sobelfilter_imp_module_1d64c29308  sobelfilter_imp_1d64c29308 (
    .ce_1(ce_1_sg_x2),
    .clk_1(clk_1_sg_x2),
    .in1(addsub1_s_net_x0),
    .out1(sobelout_net)
  );
endmodule

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

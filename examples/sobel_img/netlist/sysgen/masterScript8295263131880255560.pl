
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/home/diego/Documents/Finalized/examples/sobel_img',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 15.0,
    'base_system_period_simulink' => 5.0863E-6,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => 'Fixed',
    'clock_settings' => {
      'dut_period' => '15',
      'dut_period_allowed' => '[15,20,30]',
      'dut_period_default' => '20',
      'source_period' => '5',
    },
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'SP605 (JTAG)',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'Atlys',
        'SP605 (JTAG)',
      ],
      'values' => [
        'target1',
        'target2',
        'target3',
      ],
    },
    'compilation_target' => 'SP605 (JTAG)',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-diego/cg_wk/c4e8ed07042386e9d',
    'coregen_part_family' => 'spartan6',
    'cosim_library' => 'JTAGRuntimeCosim_r4',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'sobel_t',
    'design_full_path' => '/home/diego/Documents/Finalized/examples/sobel_img/sobel_t.slx',
    'device' => 'xc6slx45t-3fgg484',
    'device_speed' => '-3',
    'directory' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist',
    'dsp_cache_root_path' => '/tmp/sysgentmp-diego',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/perl_results.v', },
      ],
    ],
    'force_scheduling' => 0.0,
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2078.00048828125,
    'generating_subsystem_handle' => 2078.00048828125,
    'generation_directory' => './netlist',
    'getimportblock_fcn' => 'xlGetHwcosimBlockName',
    'has_advanced_control' => '0',
    'hdlDir' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'verilog',
    'hdl_path' => '/home/diego/Documents/Finalized/examples/sobel_img',
    'hwcosim_board' => 'sp605-jtag',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2079.0003662109375,
    'matlab' => '/home/diego/eda/closedsource/matlab/R2013a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2078.00048828125,
    'mdlPath' => '/home/diego/Documents/Finalized/examples/sobel_img/sobel_t.mdl',
    'modelDiagnostics' => [
      {
        'count' => 101.0,
        'isMask' => 0.0,
        'type' => 'sobel_t Total blocks',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Buffer',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 7.0,
        'isMask' => 0.0,
        'type' => 'FrameConversion',
      },
      {
        'count' => 14.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'M-S-Function',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Math',
      },
      {
        'count' => 15.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Reshape',
      },
      {
        'count' => 23.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 14.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Unbuffer',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Convert 1-D to 2-D',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Image From File',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Transpose',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Video Viewer',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Multiplier Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx FIR Compiler 5.0 Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Negate Block Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Resource Estimator Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/diego/Documents/Finalized/examples/sobel_img/sobel_t.mdl',
    'myxilinx' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '105091716965',
    'package' => 'fgg484',
    'part' => 'xc6slx45t',
    'partFamily' => 'spartan6',
    'port_data_types_enabled' => 1.0,
    'postgeneration_fcn' => 'xlHwcosimPostGeneration',
    'precompile_fcn' => 'xlJTAGPreCompile',
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'PlanAhead',
    'proj_type_sgadvanced' => '',
    'report_true_rates' => 0.0,
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'settings_fcn' => 'xlHwcosimSettings',
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '50,50,0,0,token,white,0,58c5b5770fe5f7c311f53dbc6e73f0f6,right,,[ ],[ ]',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');

fprintf(\'\',\'COMMENT: end icon text\');',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 2078.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 5.0863E-6,
    'speed' => '-3',
    'synth_file' => 'PlanAhead Defaults',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'verilog',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 15.0,
    'sysgen' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 15.0,
      'base_system_period_simulink' => 5.0863E-6,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'ce_clr' => 0.0,
      'clock_loc' => 'Fixed',
      'clock_settings' => {
        'dut_period' => '15',
        'dut_period_allowed' => '[15,20,30]',
        'dut_period_default' => '20',
        'source_period' => '5',
      },
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'SP605 (JTAG)',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'Atlys',
          'SP605 (JTAG)',
        ],
        'values' => [
          'target1',
          'target2',
          'target3',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'spartan6',
      'cosim_library' => 'JTAGRuntimeCosim_r4',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 10.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => './netlist',
      'eval_field' => '0',
      'getimportblock_fcn' => 'xlGetHwcosimBlockName',
      'has_advanced_control' => '0',
      'hwcosim_board' => 'sp605-jtag',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2079.0003662109375,
      'package' => 'fgg484',
      'part' => 'xc6slx45t',
      'postgeneration_fcn' => 'xlHwcosimPostGeneration',
      'precompile_fcn' => 'xlJTAGPreCompile',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'PlanAhead',
      'proj_type_sgadvanced' => '',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'settings_fcn' => 'xlHwcosimSettings',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '50,50,0,0,token,white,0,58c5b5770fe5f7c311f53dbc6e73f0f6,right,,[ ],[ ]',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');

fprintf(\'\',\'COMMENT: end icon text\');',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 2078.00048828125,
      'simulink_period' => 5.0863E-6,
      'speed' => '-3',
      'synth_file' => 'PlanAhead Defaults',
      'synthesis_language' => 'verilog',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 15.0,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'version' => '13.1',
      'xilinx_device' => 'xc6slx45t-3fgg484',
      'xilinxfamily' => 'spartan6',
    },
    'sysgen_Root' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 15.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => '/tmp/sysgentmp-diego',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '13.1',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '1734013330200.714844 ns',
    'xilinx' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc6slx45t-3fgg484',
    'xilinx_family' => 'spartan6',
    'xilinx_package' => 'fgg484',
    'xilinx_part' => 'xc6slx45t',
    'xilinxdevice' => 'xc6slx45t-3fgg484',
    'xilinxfamily' => 'spartan6',
    'xilinxpart' => 'xc6slx45t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.v',
    'sourceFile' => 'hdl/conv_pkg.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.v',
    'sourceFile' => 'hdl/synth_reg.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.v',
    'sourceFile' => 'hdl/synth_reg_w_init.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'convert_type.v',
    'sourceFile' => 'hdl/convert_type.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c8e9e29f5e6f11f08d1e7c00f440f441',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] sel,
  input [(40 - 1):0] d0,
  input [(41 - 1):0] d1,
  output [(41 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(40 - 1):0] d0_1_24;
  wire [(41 - 1):0] d1_1_27;
  localparam [(41 - 1):0] const_value = 41\'b00000000000000000000000000000000000000000;
  reg [(41 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 41\'b00000000000000000000000000000000000000000;
    end
  wire [(41 - 1):0] pipe_16_22_front_din;
  wire [(41 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(41 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1\'b1) && (pipe_16_22_push_front_pop_back_en == 1\'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1\'b0 :
          begin
            unregy_join_6_1 = {{1{d0_1_24[39]}}, d0_1_24[39:0]};
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1\'b1;
  assign y = pipe_16_22_back;
endmodule
',
      'entity_name' => 'mux_b4bf85038c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '776dda6bba9923ad40e07269bcf9da64',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(40 - 1):0] ip,
  output [(41 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(40 - 1):0] ip_18_25;
  localparam signed [(41 - 1):0] const_value = 41\'sb00000000000000000000000000000000000000000;
  reg signed [(41 - 1):0] op_mem_48_20[0:(1 - 1)];
  initial
    begin
      op_mem_48_20[0] = 41\'b00000000000000000000000000000000000000000;
    end
  wire signed [(41 - 1):0] op_mem_48_20_front_din;
  wire signed [(41 - 1):0] op_mem_48_20_back;
  wire op_mem_48_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  wire signed [(41 - 1):0] cast_35_24;
  wire signed [(41 - 1):0] internal_ip_35_9_neg;
  reg signed [(41 - 1):0] internal_ip_join_30_1;
  localparam signed [(41 - 1):0] const_value_x_000002 = 41\'sb00000000000000000000000000000000000000000;
  assign ip_18_25 = ip;
  assign op_mem_48_20_back = op_mem_48_20[0];
  always @(posedge clk)
    begin:proc_op_mem_48_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_48_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_48_20[0] <= op_mem_48_20_front_din;
        end
    end
  assign cast_35_24 = {{1{ip_18_25[39]}}, ip_18_25[39:0]};
  assign internal_ip_35_9_neg = -cast_35_24;
  always @(internal_ip_35_9_neg)
    begin:proc_if_30_1
      if (1\'b0)
        begin
          internal_ip_join_30_1 = const_value_x_000002;
        end
      else 
        begin
          internal_ip_join_30_1 = internal_ip_35_9_neg;
        end
    end
  assign op_mem_48_20_front_din = internal_ip_join_30_1;
  assign op_mem_48_20_push_front_pop_back_en = 1\'b1;
  assign op = op_mem_48_20_back;
endmodule
',
      'entity_name' => 'negate_84a394a3a3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '568e409561fdfab523a3bf2067b5edf9',
    'sourceFile' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ac41a46516f255b1f0866e2a6f5441f0',
    'sourceFile' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ac86c7782fbff0aeff400235fe763054',
    'sourceFile' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 40',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 40',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 40',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_29dfa978383111a1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b1bc5a62ca34629961707442e8e65b9a',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[39:0] A;
     output[39:0] S;
     input[39:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_29dfa978383111a1',
      'entityName' => 'xladdsub_sobel_t',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '28dbd6b73312aed03ea951727c54b8a6',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1\'b1;
endmodule
',
      'entity_name' => 'constant_5e90e4a8ec',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT FIR_Compiler spartan6 Xilinx,_Inc. 5.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET allow_rounding_approximation = false',
    'CSET bestprecision = false',
    'CSET chan_in_adv = 0',
    'CSET clock_frequency = 250',
    'CSET coefficient_buffer_type = Not_Applicable',
    'CSET coefficient_file = no_coe_file_loaded',
    'CSET coefficient_fractional_bits = 0',
    'CSET coefficient_reload = false',
    'CSET coefficient_sets = 1',
    'CSET coefficient_sign = Signed',
    'CSET coefficient_structure = Inferred',
    'CSET coefficient_width = 16',
    'CSET coefficientsource = Vector',
    'CSET coefficientvector = -1,0,1,-2,0,2,-1,0,1',
    'CSET columnconfig = 9',
    'CSET data_buffer_type = Not_Applicable',
    'CSET data_fractional_bits = 28',
    'CSET data_sign = Unsigned',
    'CSET data_width = 34',
    'CSET decimation_rate = 1',
    'CSET displayreloadorder = false',
    'CSET filter_architecture = Transpose_Multiply_Accumulate',
    'CSET filter_selection = 1',
    'CSET filter_type = Single_Rate',
    'CSET gui_behaviour = Coregen',
    'CSET hardwareoversamplingrate = 1',
    'CSET has_ce = true',
    'CSET has_data_valid = false',
    'CSET has_nd = true',
    'CSET has_sclr = false',
    'CSET input_buffer_type = Not_Applicable',
    'CSET inter_column_pipe_length = 4',
    'CSET interpolation_rate = 1',
    'CSET multi_column_support = Disabled',
    'CSET number_channels = 1',
    'CSET number_paths = 1',
    'CSET optimization_goal = Area',
    'CSET output_buffer_type = Not_Applicable',
    'CSET output_rounding_mode = Full_Precision',
    'CSET output_width = 39',
    'CSET passband_max = 0.50000000000',
    'CSET passband_min = 0',
    'CSET preference_for_other_storage = Not_Applicable',
    'CSET quantization = Integer_Coefficients',
    'CSET rate_change_type = Integer',
    'CSET ratespecification = Sample_Period',
    'CSET registered_output = true',
    'CSET sample_frequency = 0.00100000000',
    'CSET sampleperiod = 1',
    'CSET sclr_deterministic = false',
    'CSET stopband_max = 1',
    'CSET stopband_min = 0.50000000000',
    'CSET usechan_in_adv = false',
    'CSET zero_pack_factor = 1',
    'SET device = xc6slx45t',
    'SET package = fgg484',
    'SET speedgrade = -3',
    'CSET component_name = fr_cmplr_v5_0_3273d736a853206c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2636a14d1e1a61ec0976c8aa428556d2',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(ce,clk,din,dout,nd,rdy,rfd,src_ce,src_clk);

input ce;
input clk;
input[33:0] din;
output[38:0] dout;
input nd;
output rdy;
output rfd;
input src_ce;
input src_clk;
  fr_cmplr_v5_0_3273d736a853206c fr_cmplr_v5_0_3273d736a853206c_instance(
      .ce(ce),
      .clk(clk),
      .din(din),
      .dout(dout),
      .nd(nd),
      .rdy(rdy),
      .rfd(rfd)
    );

 endmodule
',
      'entity_name' => 'xlfir_compiler_22a56fbbd9d1f82c2b14ff138816f012',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT FIR_Compiler spartan6 Xilinx,_Inc. 5.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET allow_rounding_approximation = false',
    'CSET bestprecision = false',
    'CSET chan_in_adv = 0',
    'CSET clock_frequency = 250',
    'CSET coefficient_buffer_type = Not_Applicable',
    'CSET coefficient_file = no_coe_file_loaded',
    'CSET coefficient_fractional_bits = 0',
    'CSET coefficient_reload = false',
    'CSET coefficient_sets = 1',
    'CSET coefficient_sign = Signed',
    'CSET coefficient_structure = Inferred',
    'CSET coefficient_width = 16',
    'CSET coefficientsource = Vector',
    'CSET coefficientvector = 1,2,1,0,0,0,-1,-2,-1',
    'CSET columnconfig = 9',
    'CSET data_buffer_type = Not_Applicable',
    'CSET data_fractional_bits = 28',
    'CSET data_sign = Unsigned',
    'CSET data_width = 34',
    'CSET decimation_rate = 1',
    'CSET displayreloadorder = false',
    'CSET filter_architecture = Transpose_Multiply_Accumulate',
    'CSET filter_selection = 1',
    'CSET filter_type = Single_Rate',
    'CSET gui_behaviour = Coregen',
    'CSET hardwareoversamplingrate = 1',
    'CSET has_ce = true',
    'CSET has_data_valid = false',
    'CSET has_nd = true',
    'CSET has_sclr = false',
    'CSET input_buffer_type = Not_Applicable',
    'CSET inter_column_pipe_length = 4',
    'CSET interpolation_rate = 1',
    'CSET multi_column_support = Disabled',
    'CSET number_channels = 1',
    'CSET number_paths = 1',
    'CSET optimization_goal = Area',
    'CSET output_buffer_type = Not_Applicable',
    'CSET output_rounding_mode = Full_Precision',
    'CSET output_width = 39',
    'CSET passband_max = 0.50000000000',
    'CSET passband_min = 0',
    'CSET preference_for_other_storage = Not_Applicable',
    'CSET quantization = Integer_Coefficients',
    'CSET rate_change_type = Integer',
    'CSET ratespecification = Sample_Period',
    'CSET registered_output = true',
    'CSET sample_frequency = 0.00100000000',
    'CSET sampleperiod = 1',
    'CSET sclr_deterministic = false',
    'CSET stopband_max = 1',
    'CSET stopband_min = 0.50000000000',
    'CSET usechan_in_adv = false',
    'CSET zero_pack_factor = 1',
    'SET device = xc6slx45t',
    'SET package = fgg484',
    'SET speedgrade = -3',
    'CSET component_name = fr_cmplr_v5_0_b6abdcad38a718af',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '11c311d18c65511020f9d92bcfdadec4',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(ce,clk,din,dout,nd,rdy,rfd,src_ce,src_clk);

input ce;
input clk;
input[33:0] din;
output[38:0] dout;
input nd;
output rdy;
output rfd;
input src_ce;
input src_clk;
  fr_cmplr_v5_0_b6abdcad38a718af fr_cmplr_v5_0_b6abdcad38a718af_instance(
      .ce(ce),
      .clk(clk),
      .din(din),
      .dout(dout),
      .nd(nd),
      .rdy(rdy),
      .rfd(rfd)
    );

 endmodule
',
      'entity_name' => 'xlfir_compiler_f99aec0f9a91ebc5ec52d028c69d7f45',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Unsigned',
    'CSET A_Width = 33',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Unsigned',
    'CSET B_Value = 0',
    'CSET B_Width = 33',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 33',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_856b46edf5fd2c9b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e7ea1af5df45e7b37fc9d067974365d3',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[32:0] A;
     output[32:0] S;
     input[32:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_856b46edf5fd2c9b',
      'entityName' => 'xladdsub_sobel_t',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Unsigned',
    'CSET A_Width = 34',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Unsigned',
    'CSET B_Value = 0',
    'CSET B_Width = 34',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 34',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_ba165a98660a6463',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4c4c7742db54fab29a1fe7a809257a58',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[33:0] A;
     output[33:0] S;
     input[33:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_ba165a98660a6463',
      'entityName' => 'xladdsub_sobel_t',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Multiplier spartan6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = false',
    'CSET constvalue = 4897',
    'CSET internaluser = 0',
    'CSET multtype = Constant_Coefficient_Multiplier',
    'CSET outputwidthhigh = 31',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 0',
    'CSET portatype = Unsigned',
    'CSET portawidth = 16',
    'CSET portbtype = Unsigned',
    'CSET portbwidth = 16',
    'CSET syncclear = false',
    'CSET use_custom_output_width = true',
    'CSET component_name = cmlt_11_2_a680687b7f91c37b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e293180a94a6b9d344a3cdd130828d1',
    'sourceFile' => 'hdl/xlcmult.v',
    'templateKeyValues' => {
      'core_component_def' => ' (p,a);
output [31:0] p;
input [15:0] a;',
      'core_instance_text' => '      .p(tmp_p),
      .a(tmp_a)',
      'core_name0' => 'cmlt_11_2_a680687b7f91c37b',
      'entityName' => 'xlcmult_sobel_t',
      'entity_name.0' => 'xlcmult',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Multiplier spartan6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = false',
    'CSET constvalue = 9617',
    'CSET internaluser = 0',
    'CSET multtype = Constant_Coefficient_Multiplier',
    'CSET outputwidthhigh = 31',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 0',
    'CSET portatype = Unsigned',
    'CSET portawidth = 16',
    'CSET portbtype = Unsigned',
    'CSET portbwidth = 16',
    'CSET syncclear = false',
    'CSET use_custom_output_width = true',
    'CSET component_name = cmlt_11_2_a8cda2c4d6ade386',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5149cddaef00e9b772b031e1c6a95831',
    'sourceFile' => 'hdl/xlcmult.v',
    'templateKeyValues' => {
      'core_component_def' => ' (p,a);
output [31:0] p;
input [15:0] a;',
      'core_instance_text' => '      .p(tmp_p),
      .a(tmp_a)',
      'core_name0' => 'cmlt_11_2_a8cda2c4d6ade386',
      'entityName' => 'xlcmult_sobel_t',
      'entity_name.0' => 'xlcmult',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Multiplier spartan6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = false',
    'CSET constvalue = 1868',
    'CSET internaluser = 0',
    'CSET multtype = Constant_Coefficient_Multiplier',
    'CSET outputwidthhigh = 31',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 0',
    'CSET portatype = Unsigned',
    'CSET portawidth = 16',
    'CSET portbtype = Unsigned',
    'CSET portbwidth = 16',
    'CSET syncclear = false',
    'CSET use_custom_output_width = true',
    'CSET component_name = cmlt_11_2_ef11385c78568766',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aca33c234128e22bbf827d989519b9ea',
    'sourceFile' => 'hdl/xlcmult.v',
    'templateKeyValues' => {
      'core_component_def' => ' (p,a);
output [31:0] p;
input [15:0] a;',
      'core_instance_text' => '      .p(tmp_p),
      .a(tmp_a)',
      'core_name0' => 'cmlt_11_2_ef11385c78568766',
      'entityName' => 'xlcmult_sobel_t',
      'entity_name.0' => 'xlcmult',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'accada6452f3812a9d39925ed058e5a8',
    'sourceFile' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346';
};

if ($@) {
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen/script_results8102373012558501346';
  exit(1);
}

exit(0);

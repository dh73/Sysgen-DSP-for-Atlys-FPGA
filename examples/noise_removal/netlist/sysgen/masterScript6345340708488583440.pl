
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/home/diego/Documents/Finalized/examples/noise_removal',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 15.0,
    'base_system_period_simulink' => 2.0833E-5,
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
        'SP605 (JTAG)',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'SP605 (JTAG)',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-diego/cg_wk/cb673fac78759681e',
    'coregen_part_family' => 'spartan6',
    'cosim_library' => 'JTAGRuntimeCosim_r4',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'noise_removal',
    'design_full_path' => '/home/diego/Documents/Finalized/examples/noise_removal/noise_removal.slx',
    'device' => 'xc6slx45t-3fgg484',
    'device_speed' => '-3',
    'directory' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist',
    'dsp_cache_root_path' => '/tmp/sysgentmp-diego',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/perl_results.v', },
      ],
    ],
    'force_scheduling' => 0.0,
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2078.0003662109375,
    'generating_subsystem_handle' => 2078.0003662109375,
    'generation_directory' => './netlist',
    'getimportblock_fcn' => 'xlGetHwcosimBlockName',
    'has_advanced_control' => '0',
    'hdlDir' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'verilog',
    'hdl_path' => '/home/diego/Documents/Finalized/examples/noise_removal',
    'hwcosim_board' => 'sp605-jtag',
    'impl_file' => 'ParHighEffort',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2079.0003662109375,
    'matlab' => '/home/diego/EDA/Matlab/R2013a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2078.0003662109375,
    'mdlPath' => '/home/diego/Documents/Finalized/examples/noise_removal/noise_removal.mdl',
    'modelDiagnostics' => [
      {
        'count' => 20.0,
        'isMask' => 0.0,
        'type' => 'noise_removal Total blocks',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Gain',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Sin',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Sum',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'TimeScope',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Slider Gain',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx FIR Compiler 5.0 Block',
      },
      {
        'count' => 1.0,
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
        'type' => 'Xilinx System Generator Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/diego/Documents/Finalized/examples/noise_removal/noise_removal.mdl',
    'myxilinx' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '480',
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
    'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
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
    'simulation_island_subsystem_handle' => 2078.0003662109375,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 2.0833E-5,
    'speed' => '-3',
    'synth_file' => 'TimingWithIOBPacking',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'verilog',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 15.0,
    'sysgen' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 15.0,
      'base_system_period_simulink' => 2.0833E-5,
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
          'SP605 (JTAG)',
        ],
        'values' => [
          'target1',
          'target2',
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
      'impl_file' => 'ParHighEffort',
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
      'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
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
      'simulation_island_subsystem_handle' => 2078.0003662109375,
      'simulink_period' => 2.0833E-5,
      'speed' => '-3',
      'synth_file' => 'TimingWithIOBPacking',
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
    'sysgen_Root' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 15.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen',
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
    'vsimtime' => '8196.115202 ns',
    'xilinx' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE',
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
  use SgGenerateCores;
  $instrs = [
    'SELECT FIR_Compiler spartan6 Xilinx,_Inc. 5.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET allow_rounding_approximation = false',
    'CSET bestprecision = true',
    'CSET chan_in_adv = 0',
    'CSET clock_frequency = 250',
    'CSET coefficient_buffer_type = Not_Applicable',
    'CSET coefficient_file = no_coe_file_loaded',
    'CSET coefficient_fractional_bits = 16',
    'CSET coefficient_reload = false',
    'CSET coefficient_sets = 1',
    'CSET coefficient_sign = Signed',
    'CSET coefficient_structure = Inferred',
    'CSET coefficient_width = 16',
    'CSET coefficientsource = Vector',
    'CSET coefficientvector = 0.0016,0.0013,-0.0005,-0.0037,-0.0055,-0.0018,0.0084,0.0175,0.0133,-0.0103,-0.0406,-0.0482,-0.0053,0.09,0.2034,0.2804,0.2804,0.2034,0.09,-0.0053,-0.0482,-0.0406,-0.0103,0.0133,0.0175,0.0084,-0.0018,-0.0055,-0.0037,-0.0005,0.0013,0.0016',
    'CSET columnconfig = 1',
    'CSET data_buffer_type = Not_Applicable',
    'CSET data_fractional_bits = 14',
    'CSET data_sign = Signed',
    'CSET data_width = 16',
    'CSET decimation_rate = 1',
    'CSET displayreloadorder = false',
    'CSET filter_architecture = Distributed_Arithmetic',
    'CSET filter_selection = 1',
    'CSET filter_type = Single_Rate',
    'CSET gui_behaviour = Coregen',
    'CSET hardwareoversamplingrate = 1',
    'CSET has_ce = false',
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
    'CSET output_width = 37',
    'CSET passband_max = 0.50000000000',
    'CSET passband_min = 0',
    'CSET preference_for_other_storage = Not_Applicable',
    'CSET quantization = Quantize_Only',
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
    'CSET component_name = fr_cmplr_v5_0_975105ecba5a1562',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c8eeb9616f21ba5784d64a8c9c887d16',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(ce,clk,din,dout,nd,rdy,rfd,src_ce,src_clk);

input ce;
input clk;
input[15:0] din;
output[36:0] dout;
input nd;
output rdy;
output rfd;
input src_ce;
input src_clk;
  fr_cmplr_v5_0_975105ecba5a1562 fr_cmplr_v5_0_975105ecba5a1562_instance(
      .clk(clk),
      .din(din),
      .dout(dout),
      .nd(nd),
      .rdy(rdy),
      .rfd(rfd)
    );

 endmodule
',
      'entity_name' => 'xlfir_compiler_df016c543556b6ac794122521aed0f92',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203';
};

if ($@) {
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen/script_results2169492074131316203';
  exit(1);
}

exit(0);

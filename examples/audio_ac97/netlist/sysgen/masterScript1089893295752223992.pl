
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
    'HDL_PATH' => '/home/diego/Documents/Finalized/examples/audio_ac97',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 10.0,
    'base_system_period_simulink' => 2.0833E-5,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'HDL Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'HDL Netlist',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-diego/cg_wk/c39d254dadb5e251c',
    'coregen_part_family' => 'spartan6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'algodev',
    'design_full_path' => '/home/diego/Documents/Finalized/examples/audio_ac97/algodev.slx',
    'device' => 'xc6slx45-3csg324',
    'device_speed' => '-3',
    'directory' => '/home/diego/Documents/Finalized/examples/audio_ac97/netlist',
    'dsp_cache_root_path' => '/tmp/sysgentmp-diego',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/perl_results.v', },
      ],
    ],
    'force_scheduling' => 0.0,
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2078.00048828125,
    'generating_subsystem_handle' => 2078.00048828125,
    'generation_directory' => './netlist',
    'has_advanced_control' => '0',
    'hdlDir' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'verilog',
    'hdl_path' => '/home/diego/Documents/Finalized/examples/audio_ac97',
    'impl_file' => 'ParHighEffort',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2079.0003662109375,
    'matlab' => '/home/diego/EDA/matlab/R2013a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2078.00048828125,
    'mdlPath' => '/home/diego/Documents/Finalized/examples/audio_ac97/algodev.mdl',
    'modelDiagnostics' => [
      {
        'count' => 64.0,
        'isMask' => 0.0,
        'type' => 'algodev Total blocks',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 11.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Mux',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Reshape',
      },
      {
        'count' => 29.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Unbuffer',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'From Multimedia File',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'To Multimedia File',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
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
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/diego/Documents/Finalized/examples/audio_ac97/algodev.mdl',
    'myxilinx' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '480007',
    'package' => 'csg324',
    'part' => 'xc6slx45',
    'partFamily' => 'spartan6',
    'port_data_types_enabled' => 1.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'PlanAhead',
    'proj_type_sgadvanced' => '',
    'report_true_rates' => 0.0,
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
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
    'simulation_island_subsystem_handle' => 2078.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 2.0833E-5,
    'speed' => '-3',
    'synth_file' => 'TimingWithIOBPacking',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'verilog',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 10.0,
    'sysgen' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 10.0,
      'base_system_period_simulink' => 2.0833E-5,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'HDL Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'spartan6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 10.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => './netlist',
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'impl_file' => 'ParHighEffort',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2079.0003662109375,
      'package' => 'csg324',
      'part' => 'xc6slx45',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'PlanAhead',
      'proj_type_sgadvanced' => '',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
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
      'simulation_island_subsystem_handle' => 2078.00048828125,
      'simulink_period' => 2.0833E-5,
      'speed' => '-3',
      'synth_file' => 'TimingWithIOBPacking',
      'synthesis_language' => 'verilog',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 10.0,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'xilinx_device' => 'xc6slx45-3csg324',
      'xilinxfamily' => 'spartan6',
    },
    'sysgen_Root' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 10.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => '/home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen',
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
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '5280359.801229 ns',
    'xilinx' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc6slx45-3csg324',
    'xilinx_family' => 'spartan6',
    'xilinx_package' => 'csg324',
    'xilinx_part' => 'xc6slx45',
    'xilinxdevice' => 'xc6slx45-3csg324',
    'xilinxfamily' => 'spartan6',
    'xilinxpart' => 'xc6slx45',
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
    'entity_declaration_hash' => 'ffb34125350f60daa9ec1152521b5532',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16\'b0011001100110011;
endmodule
',
      'entity_name' => 'constant_f949d4a507',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Multiplier spartan6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = false',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 32',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 0',
    'CSET portatype = Signed',
    'CSET portawidth = 16',
    'CSET portbtype = Signed',
    'CSET portbwidth = 17',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = false',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mult_11_2_9c87a4aa35fb2a9b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3b26e51a0d82210c5698d903218a124b',
    'sourceFile' => 'hdl/xlmult.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, B, P) /* synthesis syn_black_box */;
      input [15:0] A;
      input [16:0] B;
      output [32:0] P;',
      'core_instance_text' => '        .a(tmp_a),
        .b(tmp_b),
        .p(tmp_p)',
      'core_name0' => 'mult_11_2_9c87a4aa35fb2a9b',
      'entityName' => 'xlmult_algodev',
      'entity_name.0' => 'xlmult',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c31fff83f9b8026b8f6e2953fd9da9b4',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16\'b0010000000000000;
endmodule
',
      'entity_name' => 'constant_57bfc9d6c9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Multiplier spartan6 Xilinx,_Inc. 11.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = false',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 32',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 0',
    'CSET portatype = Signed',
    'CSET portawidth = 17',
    'CSET portbtype = Signed',
    'CSET portbwidth = 16',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = false',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mult_11_2_27d1945b067283da',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'beb724c5a3e24d77ecda38a65056cc08',
    'sourceFile' => 'hdl/xlmult.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, B, P) /* synthesis syn_black_box */;
      input [16:0] A;
      input [15:0] B;
      output [32:0] P;',
      'core_instance_text' => '        .a(tmp_a),
        .b(tmp_b),
        .p(tmp_p)',
      'core_name0' => 'mult_11_2_27d1945b067283da',
      'entityName' => 'xlmult_algodev',
      'entity_name.0' => 'xlmult',
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
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_232ff08b73742c1b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '51a55936461b87ee10562722d255ce0a',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[16:0] A;
     output[16:0] S;
     input[16:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_232ff08b73742c1b',
      'entityName' => 'xladdsub_algodev',
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
    'CSET A_Type = Signed',
    'CSET A_Width = 34',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
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
    'CSET component_name = addsb_11_0_115949a8e6f0bfc4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '280bd0afeb7c7fd4195fab606070ed66',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[33:0] A;
     output[33:0] S;
     input[33:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_115949a8e6f0bfc4',
      'entityName' => 'xladdsub_algodev',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed491607b1d857203d28d51284861c62',
    'sourceFile' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '88da70e1d1a3d5a27483b9826b0efb4f',
    'sourceFile' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '82f54ffbb4f546a8128b4770ce5606bf',
    'sourceFile' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bcc9835cd4cb27e3a067460044bad61f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'reinterpret_87da68fdf8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8545e683cfe87afae9231c7344e893d',
    'sourceFile' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907';
};

if ($@) {
  open(RESULTS, '> /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907') || 
    croak 'couldn\'t open /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/diego/Documents/Finalized/examples/audio_ac97/netlist/sysgen/script_results7291617761355468907';
  exit(1);
}

exit(0);

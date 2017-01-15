{
  'Design' => {
    'ConstraintsFile' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/sysgen_hwcosim.ucf',
    'EntityName' => 'noise_removal_cw',
    'HDLFileExtension' => 'v',
    'HDLFileList' => [
      {
        'Library' => 'work',
        'Path' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/noise_removal.v',
        'Type' => 'verilog'
      },
      {
        'Library' => 'work',
        'Path' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/noise_removal_cw.v',
        'Type' => 'verilog'
      }
    ],
    'HDLLanguage' => 'verilog',
    'ImplStrategyName' => 'ParHighEffort',
    'InstanceName' => 'sysgen_dut',
    'PeripheralList' => [

    ],
    'PortList' => [
      {
        'ConnectTo' => 1,
        'Direction' => 'in',
        'DisplayName' => 'ce',
        'IsMemoryMapped' => false,
        'Name' => 'ce',
        'SamplePeriod' => 1
      },
      {
        'Clock' => {
          'Period' => 15.00000000000
        },
        'DataType' => 'logic',
        'Direction' => 'in',
        'DisplayName' => 'clk',
        'IsClock' => true,
        'Name' => 'clk',
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'Fix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'Gateway In',
        'Name' => 'gateway_in',
        'Range' => {
          'Left' => '15',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'Fix_37_30',
        'Direction' => 'out',
        'DisplayName' => 'Gateway Out',
        'Name' => 'gateway_out',
        'Range' => {
          'Left' => '36',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'Fix_16_14',
        'Direction' => 'out',
        'DisplayName' => 'Gateway Out1',
        'Name' => 'gateway_out1',
        'Range' => {
          'Left' => '15',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      }
    ],
    'ProjectFile' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist/xst_noise_removal.prj',
    'SharedFIFOList' => [

    ],
    'SharedRAMList' => [

    ],
    'SharedRegisterList' => [

    ],
    'SynplifySynthesisConstraints' => [
      'define_attribute {clk} syn_maxfan {1000000}'
    ],
    'SynthStrategyName' => 'TimingWithIOBPacking',
    'SynthesisTool' => 'xst',
    'SynthesisToolExecutable' => 'xst',
    'UsesSynplify' => false,
    'UsesVivado' => false,
    'UsesXST' => true,
    'XSTSynthesisConstraints' => [
      'NET "clk" TNM_NET = "clk_eb7ec400";',
      'TIMESPEC "TS_clk_eb7ec400" = PERIOD "clk_eb7ec400" 15.0 ns HIGH 50 %;'
    ]
  },
  'Flow' => 'sysgen',
  'Incremental' => '',
  'IsMultipleClock' => '0',
  'IsZynqHIL' => '0',
  'Platform' => {
    'Board' => 'sp605',
    'BoundaryScanPosition' => 2,
    'Clock' => [
      {
        'Differential' => true,
        'Period' => 5,
        'Pin' => {
          'Negative' => 'K22',
          'Positive' => 'K21'
        },
        'VariablePeriods' => [
          15,
          20,
          30
        ]
      },
      {
        'Differential' => false,
        'Period' => 37.03703700000,
        'Pin' => 'AB13'
      }
    ],
    'Description' => 'SP605 (JTAG)',
    'Interface' => 'jtag',
    'Part' => {
      'BaseFamily' => 'spartan6',
      'Device' => 'xc6slx45t',
      'Family' => 'spartan6',
      'FamilyForSynplify' => 'spartan6',
      'Package' => 'fgg484',
      'Speed' => '-3'
    },
    'Type' => 'jtag',
    'Vendor' => 'Xilinx'
  },
  'Subflow' => 'planahead',
  'Target' => {
    'ExcludedModules' => [

    ],
    'Modules' => [

    ]
  }
}

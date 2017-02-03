{
  'Design' => {
    'ConstraintsFile' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sysgen_hwcosim.ucf',
    'EntityName' => 'sobel_t_cw',
    'HDLFileExtension' => 'v',
    'HDLFileList' => [
      {
        'Library' => 'work',
        'Path' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sobel_t.v',
        'Type' => 'verilog'
      },
      {
        'Library' => 'work',
        'Path' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/sobel_t_cw.v',
        'Type' => 'verilog'
      }
    ],
    'HDLLanguage' => 'verilog',
    'ImplStrategyName' => 'ISE Defaults*',
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
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'B',
        'Name' => 'b',
        'Range' => {
          'Left' => '15',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'G',
        'Name' => 'g',
        'Range' => {
          'Left' => '15',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'R',
        'Name' => 'r',
        'Range' => {
          'Left' => '15',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      },
      {
        'DataType' => 'Fix_41_28',
        'Direction' => 'out',
        'DisplayName' => 'SobelOut',
        'Name' => 'sobelout',
        'Range' => {
          'Left' => '40',
          'Right' => '0'
        },
        'SamplePeriod' => 1
      }
    ],
    'ProjectFile' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist/xst_sobel_t.prj',
    'SharedFIFOList' => [

    ],
    'SharedRAMList' => [

    ],
    'SharedRegisterList' => [

    ],
    'SynplifySynthesisConstraints' => [
      'define_attribute {clk} syn_maxfan {1000000}'
    ],
    'SynthStrategyName' => 'PlanAhead Defaults',
    'SynthesisTool' => 'xst',
    'SynthesisToolExecutable' => 'xst',
    'UsesSynplify' => false,
    'UsesVivado' => false,
    'UsesXST' => true,
    'XSTSynthesisConstraints' => [
      'NET "clk" TNM_NET = "clk_03c56d99";',
      'TIMESPEC "TS_clk_03c56d99" = PERIOD "clk_03c56d99" 15.0 ns HIGH 50 %;'
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

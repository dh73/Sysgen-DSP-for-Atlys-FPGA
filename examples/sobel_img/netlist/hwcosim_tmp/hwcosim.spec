{
  'ClockGenerator' => {
    'DCM' => {
      'Clk0' => {
        'Used' => false
      },
      'Clk2x' => {
        'Used' => false
      },
      'ClkDv' => {
        'Used' => false
      },
      'ClkFx' => {
        'Divisor' => 6,
        'Multiplier' => 2,
        'Used' => true
      },
      'ClkInDivideBy2' => false,
      'DFSFrequencyMode' => 'LOW',
      'DLLFrequencyMode' => 'LOW'
    },
    'Type' => 'DCM'
  },
  'CosimCore' => {
    'EntityName' => 'jtagcosim_iface_spartan6',
    'Interface' => {
      'Clock' => [
        {
          'Clock' => {
            'Period' => 15.00000000000
          },
          'Constraints' => [
            'NET "hwcosim_sys_clk_p" LOC = K21;',
            'NET "hwcosim_sys_clk_n" LOC = K22;'
          ],
          'DCMPort' => 'clkfx',
          'Direction' => 'in',
          'IOType' => 'ibufg',
          'Name' => 'sys_clk',
          'Width' => 1
        }
      ],
      'Cosim' => [
        {
          'Direction' => 'out',
          'Name' => 'addr',
          'Width' => 24
        },
        {
          'Direction' => 'out',
          'Name' => 'bank_sel',
          'Width' => 8
        },
        {
          'Direction' => 'out',
          'Name' => 'cosim_clk_sel',
          'Width' => 1
        },
        {
          'Direction' => 'out',
          'Name' => 'data_in',
          'Width' => 32
        },
        {
          'Direction' => 'in',
          'Name' => 'data_out',
          'Width' => 32
        },
        {
          'Direction' => 'out',
          'Name' => 'sstep_clk',
          'Width' => 1
        },
        {
          'Direction' => 'out',
          'Name' => 'we',
          'Width' => 1
        },
        {
          'Direction' => 'out',
          'Name' => 're',
          'Width' => 1
        }
      ]
    }
  },
  'Design' => {
    'BasePath' => '/home/diego/Documents/Finalized/examples/sobel_img/netlist',
    'Constraints' => [

    ],
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
        'DataType' => 'UFix_1_0',
        'Direction' => 'in',
        'DisplayName' => 'ce',
        'IsExternal' => false,
        'IsMemoryMapped' => false,
        'Name' => 'ce',
        'SamplePeriod' => 1,
        'VerilogDirection' => 'input',
        'Width' => 1
      },
      {
        'Clock' => {
          'Period' => 15.00000000000
        },
        'DataType' => 'logic',
        'Direction' => 'in',
        'DisplayName' => 'clk',
        'IsClock' => true,
        'IsExternal' => false,
        'IsMemoryMapped' => false,
        'Name' => 'clk',
        'SamplePeriod' => 1,
        'VerilogDirection' => 'input',
        'Width' => 1
      },
      {
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'B',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'b',
        'Range' => {
          'Left' => '15',
          'Length' => 16,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'input',
        'Width' => 16
      },
      {
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'G',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'g',
        'Range' => {
          'Left' => '15',
          'Length' => 16,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'input',
        'Width' => 16
      },
      {
        'DataType' => 'UFix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'R',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'r',
        'Range' => {
          'Left' => '15',
          'Length' => 16,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'input',
        'Width' => 16
      },
      {
        'DataType' => 'Fix_41_28',
        'Direction' => 'out',
        'DisplayName' => 'SobelOut',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'sobelout',
        'Range' => {
          'Left' => '40',
          'Length' => 41,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'output',
        'Width' => 41
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
  'MemoryMap' => {
    'InputPortMapping' => [
      {
        'Address' => 0,
        'Port' => {
          'Name' => 'b',
          'Range' => {
            'Left' => 15,
            'Length' => 16,
            'Order' => 'downto',
            'Right' => 0
          }
        }
      },
      {
        'Address' => 1,
        'Port' => {
          'Name' => 'g',
          'Range' => {
            'Left' => 15,
            'Length' => 16,
            'Order' => 'downto',
            'Right' => 0
          }
        }
      },
      {
        'Address' => 2,
        'Port' => {
          'Name' => 'r',
          'Range' => {
            'Left' => 15,
            'Length' => 16,
            'Order' => 'downto',
            'Right' => 0
          }
        }
      }
    ],
    'OutputPortMapping' => [
      {
        'Address' => 0,
        'Port' => {
          'Name' => 'sobelout',
          'Range' => {
            'Left' => 40,
            'Length' => 9,
            'Order' => 'downto',
            'Right' => 32
          }
        }
      },
      {
        'Address' => 1,
        'Port' => {
          'Name' => 'sobelout',
          'Range' => {
            'Left' => 31,
            'Length' => 32,
            'Order' => 'downto',
            'Right' => 0
          }
        }
      }
    ]
  },
  'Platform' => {
    'Board' => 'sp605',
    'BoundaryScanPosition' => 2,
    'Clock' => {
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
  'SYSGEN' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE/sysgen',
  'Subflow' => 'planahead',
  'Target' => {
    'ExcludedModules' => [

    ],
    'Modules' => [
      'jtag'
    ]
  },
  'TopLevel' => {
    'EntityName' => 'hwcosim_top'
  },
  'Type' => 'hwcosim',
  'Version' => '9.2',
  'XILINX' => '/home/diego/eda/closedsource/ISE/14.7/ISE_DS/ISE'
}

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
    'BasePath' => '/home/diego/Documents/Finalized/examples/noise_removal/netlist',
    'Constraints' => [

    ],
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
        'DataType' => 'Fix_16_14',
        'Direction' => 'in',
        'DisplayName' => 'Gateway In',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'gateway_in',
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
        'DataType' => 'Fix_37_30',
        'Direction' => 'out',
        'DisplayName' => 'Gateway Out',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'gateway_out',
        'Range' => {
          'Left' => '36',
          'Length' => 37,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'output',
        'Width' => 37
      },
      {
        'DataType' => 'Fix_16_14',
        'Direction' => 'out',
        'DisplayName' => 'Gateway Out1',
        'IsExternal' => false,
        'IsMemoryMapped' => true,
        'Name' => 'gateway_out1',
        'Range' => {
          'Left' => '15',
          'Length' => 16,
          'Order' => 'downto',
          'Right' => '0'
        },
        'SamplePeriod' => 1,
        'VerilogDirection' => 'output',
        'Width' => 16
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
  'MemoryMap' => {
    'InputPortMapping' => [
      {
        'Address' => 0,
        'Port' => {
          'Name' => 'gateway_in',
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
          'Name' => 'gateway_out',
          'Range' => {
            'Left' => 36,
            'Length' => 5,
            'Order' => 'downto',
            'Right' => 32
          }
        }
      },
      {
        'Address' => 1,
        'Port' => {
          'Name' => 'gateway_out',
          'Range' => {
            'Left' => 31,
            'Length' => 32,
            'Order' => 'downto',
            'Right' => 0
          }
        }
      },
      {
        'Address' => 2,
        'Port' => {
          'Name' => 'gateway_out1',
          'Range' => {
            'Left' => 15,
            'Length' => 16,
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
  'SYSGEN' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/sysgen',
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
  'XILINX' => '/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE'
}

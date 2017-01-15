# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#

namespace eval ::xilinx::dsp::planaheaddriver {
proc set_xst_synth_setting {} {
      set_property flow {XST 14} [get_runs synth_1]
      set paramvalueSynthStrategyName [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueSynthStrategyName} "XST Defaults*"] } {
            set_property strategy "XST Defaults" [get_runs synth_1]
         } else {
            set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
            return
         }
      }
      set_property strategy "XST Defaults" [get_runs synth_1]
      ::config_run synth_1 -program xst -option {More Options} -value {-bus_delimiter <> -case maintain -cross_clock_analysis YES -glob_opt AllClockNets -hierarchy_separator / -ifmt MIXED -iobuf NO -ofmt NGC -opt_level 2 -opt_mode SPEED  -write_timing_constraints YES -generics { } } 
}
proc set_xst_impl_setting {} {
      set_property flow {ISE 14} [get_runs impl_1]
      set paramvalueImplStrategyName [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueImplStrategyName} "ISE Defaults*"] } {
            set_property strategy "ISE Defaults" [get_runs impl_1]
         } else {
            set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
            return
         }
      }
	set paramvalueProjDir [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
    set paramvalueProject [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace Project ]
	set_property strategy "ISE Defaults" [get_runs impl_1]
    set bmmfile ${paramvalueProjDir}/../${paramvalueProject}.bmm
    set bmmfile [file normalize $bmmfile]
    ::import_files -norecurse $bmmfile
	set moreoptions_ngdbuild "-nt timestamp -bm ${paramvalueProject}.bmm"
	::config_run impl_1 -program ngdbuild -option {More Options} -value "$moreoptions_ngdbuild" 
	::config_run impl_1 -program map -option -ol -value "high"
	::config_run impl_1 -program map -option -timing -value "true"
	::config_run impl_1 -program par -option -ol -value "high"
}
proc set_vivado_synth_setting {} {
      set_property flow {Vivado Synthesis 2012} [get_runs synth_1]
      set paramvalueSynthStrategyName [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
         return
      }
}
proc set_vivado_impl_setting {} {
      set_property flow {Vivado Implementation 2012} [get_runs impl_1]
      set paramvalueImplStrategyName [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
         return
      }
}
proc generate_bitstream_vivado {} {
	set paramvalueProjDir [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
	set paramvalueProject [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace Project ] 
	set bitfile ${paramvalueProjDir}/../${paramvalueProject}.bit
	set bitfile [file normalize $bitfile] 
	set hwcosimbitfile ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/hwcosim_top.bit
	::reset_run synth_1
	::reset_run impl_1
	::launch_runs synth_1
	::wait_on_run synth_1
	#::set_property add_step Bitgen [get_runs impl_1] 
	#config_run impl_1 -program write_bitstream -option {More Options} -value {-bitgen_options {-g StartUpClk:JtagClk}} 
	::launch_runs impl_1 -to_step write_bitstream
	::wait_on_run impl_1
    if { [ file exists $hwcosimbitfile ] } {
	 if { [string match -nocase [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace mode_hwcosim ] "xsim"] } {
    		set bitfile ${paramvalueProjDir}/../hwcosim/${paramvalueProject}.bit
	        set bitfile [file normalize $bitfile] 
    		set hwcfile ${paramvalueProjDir}/../${paramvalueProject}.hwc
    		set hwcfile [file normalize $hwcfile]
    		file copy -force $hwcfile ${paramvalueProjDir}/../hwcosim/${paramvalueProject}.hwc
     }
    		file copy -force $hwcosimbitfile $bitfile
	} else {
         error "ERROR: failed to generate bitstream file $bitfile."
         exit 1
    }
}
proc generate_bitstream {} {
	set paramvalueProjDir [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
	set paramvalueProject [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace Project ] 
    set compilation [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace Compilation ]
	set bitfile ${paramvalueProjDir}/../${paramvalueProject}.bit
	set bitfile [file normalize $bitfile] 
	set bmm_bdfile ${paramvalueProjDir}/../${paramvalueProject}_bd.bmm
	set bmm_bdfile [file normalize $bmm_bdfile] 
	set hwcosimbitfile ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/hwcosim_top.bit
	set hwcosimbmmfile ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/${paramvalueProject}_bd.bmm
	::reset_run synth_1
	::reset_run impl_1
	::launch_runs synth_1
	::wait_on_run synth_1
	#::set_property add_step Bitgen [get_runs impl_1] 
	config_run impl_1 -program bitgen -option {More Options} -value {-g StartUpClk:JtagClk} 
	::launch_runs impl_1 -to_step bitgen
	::wait_on_run impl_1
    if { [ file exists $hwcosimbitfile ] } {
	 if { [string match -nocase [ ::xilinx::dsp::planaheadworker::dsp_get_param_value_in_driver_tcl_namespace mode_hwcosim ] "isim"] } {
    		set bitfile ${paramvalueProjDir}/../hwcosim/${paramvalueProject}.bit
	        set bitfile [file normalize $bitfile] 
    		set hwcfile ${paramvalueProjDir}/../${paramvalueProject}.hwc
    		set hwcfile [file normalize $hwcfile]
    		file copy -force $hwcfile ${paramvalueProjDir}/../hwcosim/${paramvalueProject}.hwc
     }
    		file copy -force $hwcosimbitfile $bitfile
			 if { [ string first Ethernet $compilation ] != -1 } {
				  file copy -force $hwcosimbmmfile $bmm_bdfile
			 }
	} else {
         error "ERROR: failed to generate bitstream file $bitfile."
         exit 1
    }
    puts "Generate Bistream Done !!"
}

	set mode_hwcosim {sysgen}
	set SynthStrategyName {TimingWithIOBPacking}
	set ImplStrategyName {ParHighEffort}
	set CustomProjectDir {hwcosim}
	set SynthesisTool {xst}
	set HDLLanguage {verilog}
	set Compilation {SP605 (JTAG)}
	set Project {noise_removal_cw}
	set DSPFamily {spartan6}
	set DSPDevice {xc6slx45t}
	set DSPPackage {fgg484}
	set DSPSpeed {-3}
	set TopLevelModule {hwcosim_top}
	set PostProjectCreationProc {generate_bitstream}
	set CustomUpdateSynthesisSettingsProc {set_xst_synth_setting}
	set CustomUpdateImplementationSettingsProc {set_xst_impl_setting}
	set ProjectFiles {
		{{./sysgen/hex_fr_cmplr_v5_0_975105ecba5a1562.mif}}
		{{./sysgen/fr_cmplr_v5_0_975105ecba5a1562.ngc} -view all}
		{{./sysgen/fr_cmplr_v5_0_975105ecba5a1562.mif}}
		{{./sysgen/xlpersistentdff.ngc} -view all}
		{{./sysgen/noise_removal.v} -view all}
		{{./sysgen/xlpersistentdff.ngc} -view all}
		{{./sysgen/noise_removal_cw.v} -view all}
		{{./sysgen/hwcosim_interface.v} -view all}
		{{./sysgen/hwcosim_top.v} -view all}
		{{./sysgen/jtagcosim_iface_spartan6.ngc} -view all}
		{{./sysgen/hwcosim_top.ucf}}
		{{./sysgen/hwcosim_top.bmm}}
	}
}
    source SgPaProject.tcl
    ::xilinx::dsp::planaheadworker::dsp_create_project
    
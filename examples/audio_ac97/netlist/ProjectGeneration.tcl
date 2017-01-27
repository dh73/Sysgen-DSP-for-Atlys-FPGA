#
# Created by System Generator     Fri Jan 27 06:26:51 2017
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsp::planaheaddriver {
    set SynthStrategyName {TimingWithIOBPacking}
    set ImplStrategyName {ParHighEffort}
    set Compilation {HDL Netlist}
    set Project {algodev_cw}
    set DSPFamily {Spartan6}
    set DSPDevice {xc6slx45}
    set DSPPackage {csg324}
    set DSPSpeed {-3}
    set HDLLanguage {verilog}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {100}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{algodev.v} -view All}
        {{algodev_cw.v} -view All}
        {{algodev_cw.ucf}}
        {{algodev_cw.xdc}}
        {{/home/diego/Documents/Finalized/examples/audio_ac97/algodev.slx}}
    }
    set TopLevelModule {algodev_cw}
    set SynthesisConstraintsFile {algodev_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgPaProject.tcl -notrace
    if { [info exists ::xilinx::dsp::planaheadtester::is_doing_planAheadGenTest] } {
        ::xilinx::dsp::planaheadworker::dsptest_compile_planahead_project
    } elseif { [info exists ::xilinx::dsp::planaheadtester::is_doing_planAheadGenPostSynthTest] } {
        ::xilinx::dsp::planaheadworker::dsptest_compile_planahead_project
    } else {
        ::xilinx::dsp::planaheadworker::dsp_create_project
    }

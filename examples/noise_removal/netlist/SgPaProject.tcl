namespace eval ::xilinx::dsp::planaheadworker {

   #-------------------------------------------------------
   # return name space qualifiers for worker tcl
   #-------------------------------------------------------
   proc dsp_get_worker_tcl_namespace_qualifiers {} {
      return [ namespace current ]
   }

   #-------------------------------------------------------
   # return name space qualifiers for driver tcl
   #-------------------------------------------------------
   proc dsp_get_driver_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::planaheaddriver
   }

   #-------------------------------------------------------
   # return name space qualifiers for sysgen submodule tcl
   #-------------------------------------------------------
   proc dsp_get_sysgensubmodule_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::sysgensubmodule
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_driver_tcl_namespace { param } {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      return [ dsp_get_param_value_in_tcl_namespace ${param} ${driverns} ]
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_sysgensubmodule_tcl_namespace { param } {
      set submodns [ dsp_get_sysgensubmodule_tcl_namespace_qualifiers ]
      return [ dsp_get_param_value_in_tcl_namespace ${param} ${submodns} ]
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_tcl_namespace { param tclns } {
      if { ![ info exists ${tclns}::${param} ] } {
         return ""
      }
      set paramvalue [ set ${tclns}::${param} ]
      return $paramvalue
   }

   #-------------------------------------------------------
   # return value device name
   #-------------------------------------------------------
   proc dsp_get_devicename { } {
      set paramvalueDevice [ dsp_get_param_value_in_driver_tcl_namespace DSPDevice ]
      set paramvaluePackage [ dsp_get_param_value_in_driver_tcl_namespace DSPPackage ]
      set paramvalueSpeed [ dsp_get_param_value_in_driver_tcl_namespace DSPSpeed ]
      set devicename ${paramvalueDevice}${paramvaluePackage}${paramvalueSpeed}
      return $devicename
   }

   #-------------------------------------------------------
   # return name space qualifiers for tester tcl
   #-------------------------------------------------------
   proc dsp_get_tester_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::planaheadtester
   }

   #-------------------------------------------------------
   # return exename of current tcl shell
   # the return string are vivado or plahAhead
   #-------------------------------------------------------
   proc dsp_get_currentshellname {} {
      set exename [ info nameofexecutable ]
      set currenttclshell [ file tail [ file rootname $exename ] ]
      return $currenttclshell
   }

   #-------------------------------------------------------
   # return 1 if the name of currently running tcl shell
   # matches with match_shellname
   #-------------------------------------------------------
   proc dsp_match_currentshellname { match_shellname } {
      set current_shellname [ dsp_get_currentshellname ]
      return [ string match $match_shellname $current_shellname ]
   }

   #-------------------------------------------------------
   # return 1 if running vivado tcl shell
   #-------------------------------------------------------
   proc dsp_is_running_vivado {} {
      return [ dsp_match_currentshellname vivado ]
   }

   #-------------------------------------------------------
   # return 1 if running planAhead tcl shell
   #-------------------------------------------------------
   proc dsp_is_running_planAhead {} {
      return [ dsp_match_currentshellname planAhead ]
   }

   #-------------------------------------------------------
   # return 1 if running in supported tcl shell vivado/planAhead
   #-------------------------------------------------------
   proc dsp_is_running_supportedshell {} {
      return [ expr { [ dsp_is_running_vivado ] || [ dsp_is_running_planAhead ] } ]
   }

   #-------------------------------------------------------
   # return 1 if in test mode
   #-------------------------------------------------------
   proc dsp_is_running_in_testmode {} {
      set testerns [ dsp_get_tester_tcl_namespace_qualifiers ]
      return [ expr { [ info exists ${testerns}::is_doing_planAheadGenTest ]
         || [ info exists ${testerns}::is_doing_planAheadGenPostSynthTest ] } ]
   }

   #-------------------------------------------------------
   # main program begins here
   #-------------------------------------------------------
   if { ![ dsp_is_running_supportedshell ] } {
      error "ERROR: Please run vivado or planAhead tcl."
      return
   }


   #-------------------------------------------------------------------------
   # Checks for a required parameter.
   #
   # @param  param          Parameter name.
   # @param  postproc       Post processor.
   # @return the parameter value.
   #-------------------------------------------------------------------------
   proc dsp_required_parameter {param {postproc ""}} {
      upvar $param p
      if { ![ info exists p ] } {
         error "ERROR: Required parameter \"[namespace tail $param]\" is not specified."
      }
      if { $postproc != "" } {
         eval $postproc p
      }
      return $p
   }

   #-------------------------------------------------------------------------
   # Checks for an optional parameter.
   #
   # @param  param          Parameter name.
   # @param  defval         Default value of the parameter if unspecified.
   # @param  postproc       Post processor.
   # @return the parameter value.
   #-------------------------------------------------------------------------
   proc dsp_optional_parameter {param {defval ""} {postproc ""}} {
      upvar $param p
      if { ![ info exists p ] } {
         set p $defval
      }
      if { $postproc != "" } {
         eval $postproc p
      }
      return $p
   }

   #-------------------------------------------------------------------------
   # Deletes an existing empty parameter.
   #
   # @param  param          Parameter name.
   #-------------------------------------------------------------------------
   proc dsp_clear_empty_parameter {param} {
      upvar $param p
      if { [ info exists p ] && [ expr { [ string length $p ] == 0 } ] } {
         unset p
      }
   }

   #-------------------------------------------------------------------------
   # Checks a Boolean flag.
   #
   # @param  param          Parameter name.
   # @param  defval         Default value of the parameter if unspecified.
   # @return 1 if the flag is specified and is true, or 0 othewise.
   #-------------------------------------------------------------------------
   proc dsp_check_flag {param {defval ""}} {
      upvar $param p
      return [ expr { [ info exists p ] && $p } ]
   }

   #-------------------------------------------------------------------------
   # return 1 if HDL language is VHDL
   #-------------------------------------------------------------------------
   proc dsp_hdllang_is_vhdl {} {
      set langtype [ dsp_get_param_value_in_driver_tcl_namespace HDLLanguage ]
      return [ expr { $langtype eq "VHDL" } ]
   }

   #-------------------------------------------------------------------------
   # read contents of a file and return the contents
   #
   # @param  targetfile     name of the file to read.
   # @return                contents of the file as one string.
   #-------------------------------------------------------------------------
   proc dsp_read_file { targetfile } {
      if { [ file exists $targetfile ] == 0 } {
         return ""
      }

      if { [ catch { set fp [open $targetfile r] } err ] } {
         puts "WARNING: can not open file $targetfile for reading"
         return ""
      } else {
         set data [read $fp]
         close $fp
         return $data
      }
   }

   #-------------------------------------------------------------------------
   # merge two list into one and return the merged list
   # @param fromlist1      list 1 to merge
   # @param fromlist2      list 2 to merge
   #-------------------------------------------------------------------------
   proc dsp_merge_lists { fromlist1 fromlist2 } {
      set mergedlist [list]
      foreach item $fromlist1 {
         lappend mergedlist $item
      }
      foreach item $fromlist2 {
         lappend mergedlist $item
      }
      return $mergedlist
   }

   #-------------------------------------------------------------------------
   # read input file, print to stdout
   # @param targetfile       the content of this file will be printed to stdout
   #-------------------------------------------------------------------------
   proc dsptest_print_file_to_stdout { targetfile } {
      set filetext [ dsp_read_file $targetfile ]
      if { [ string length $filetext ] > 0 } {
         puts $filetext
      }
   }

   #-------------------------------------------------------------------------
   # checks whether isim run through without problem, for xt smoket test
   #
   # @param  isimlog          isim log file name.
   # @return error string based on parsing isim log file
   #  1. find mismatch points isim and simulink
   #  2. find error message in log
   #  3. log file does not exist
   #-------------------------------------------------------------------------
   proc dsptest_parse_isimlog {isimlog} {
      if { [ file exists $isimlog ] == 0 } {
         return "$isimlog file not exists"
      }

      set filetext [ dsp_read_file $isimlog ]

      if { [ string length $filetext ] > 0 } {
         set lines [split $filetext \n]
         # set lastline [lindex $lines end-1]
         foreach st $lines {
            if { [string match {* mismatch*} $st] } {
               return "find mismatch"
            }
         }
      } 

      return ""
   }

   #-------------------------------------------------------------------------
   # create and run post-synth sim
   #-------------------------------------------------------------------------
   proc dsptest_run_post_synth_sim {} {
      ::open_netlist_design -name netlist_1
      ::set_property is_enabled false [::get_files -of_objects sources_1]

      set synthesistooltype [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      switch -- $synthesistooltype {
         "RDS" {
            ::set_param simulation.netlist.rodin 1 
         }
         "Vidado" {
            ::set_param simulation.netlist.rodin 1 
         }
      }

      #set srcfiles [planahead::get_files -of_objects sources_1]
      #foreach srcfile $srcfiles {
      #set_property is_enabled false [get_files -of_objects sources_1 $srcfile]
      #}

      set currentdir [ pwd ]
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjDir ]
      [cd $projDir]

      if { [ dsp_hdllang_is_vhdl ] } {
         set ext {.vhd}
         ::write_vhdl -force $projDir/post_synth.vhd
      } else {
         set ext {.v}
         ::write_verilog -force -mode sim $projDir/post_synth.v
      }

      ::add_files -fileset sim_1 -norecurse -scan_for_includes post_synth${ext}
      ::import_files -fileset sim_1 -norecurse -force post_synth${ext}

      [cd $currentdir]

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set postsynthvhd $projDir/${paramvalueProject}.srcs/sim_1/imports/hdl_netlist/post_synth${ext}
      ::reorder_files -fileset sim_1 -front $postsynthvhd

      ::launch_isim -batch -simset sim_1 -mode behavioral
   }

   #-------------------------------------------------------------------------
   # clean up post-synth sim
   #-------------------------------------------------------------------------
   proc dsptest_clean_up_post_synth_sim {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [ file normalize $paramvalueProjectDir ]

      if { [ dsp_hdllang_is_vhdl ] } {
         set ext {.vhd}
      } else {
         set ext {.v}
      }

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set postsynthvhd $projDir/${paramvalueProject}.srcs/sim_1/imports/hdl_netlist/post_synth${ext}

      ::remove_files -fileset sim_1 $postsynthvhd
      ::set_property is_enabled true [::get_files -of_objects sources_1]

      #set srcfiles [::get_files -of_objects sources_1]
      #foreach srcfile $srcfiles {
      #set_property is_enabled true [get_files -of_objects sources_1 $srcfile]
      #}
   }

   #-------------------------------------------------------------------------
   # add files with certain extenstion in certain directory to project
   #
   # @param  filedir          directory to look at
   # @param  fileext          file extension which should add
   # @param  skipfiles        list of files which should not add
   #-------------------------------------------------------------------------
   proc dsp_add_file_to_project {filedir fileext { skipfiles "" }} {
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfls
         set localcopyskipfl $skipfls
         set extfiles [ dsp_get_file_name_list $filedir $fileext 0 localcopyskipfl ]
      } else {
         set extfiles [ dsp_get_file_name_list $filedir $fileext ]
      }
      if { [llength $extfiles] > 0 } {
         ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $extfiles
      }
   }

   #-------------------------------------------------------------------------
   # wait until isim is finished
   #
   # @param  isimlog          isim log file name.
   # @param  simtype          behavior/post-synth/timing
   # @param  deleteisimlog    0/1, 1 is to delete
   # @return msgtext          empty string means no error
   #-------------------------------------------------------------------------
   proc dsptest_wait_on_isim {isimlog simtype deleteisimlog} {
      set ncount 0
      while { [ expr {[ dsptest_isim_done $isimlog ] == 0} ] && $ncount < 360} {
         [ exec sleep 10 ]
         incr ncount
      }

      set isimerrmsg0 ""

      if { $ncount >= 360 } {
         set stmpmsg0 "error happened while running $simtype simulation.\n"
         set isimerrmsg0 [concat $isimerrmsg0 $stmpmsg0]
      } else {
         set isimmsg [ dsptest_parse_isimlog $isimlog ]
         if { [ dsp_is_good_string $isimmsg ] } {
            set stmpmsg0 "$isimmsg in $simtype simulation.\n"
            set isimerrmsg0 [concat $isimerrmsg0 $stmpmsg0]
         }
      }

      if { $deleteisimlog == 1 && [ file exists $isimlog ] == 1 } {
         #file delete $isimlog
         file rename -force $isimlog ${isimlog}_${simtype}
      }

      if { [string length $isimerrmsg0] > 0 } {
         ::close_project
         error "ERROR: $isimerrmsg0"
      }

      return $isimerrmsg0;
   }

   #-------------------------------------------------------------------------
   # checks whether a previous isim has finished
   #
   # @param  isimlog          isim log file name.
   # @return 1 if there is a previous isim has finished before.
   #-------------------------------------------------------------------------
   proc dsptest_isim_done { isimlog } {
      if { [ file exists $isimlog ] == 0 } {
         return 0
      }

      set data [ dsp_read_file $isimlog ]
      set lines [ split $data \n ]

      set lastline [ lindex $lines end-1 ]
      if { [ string match -nocase {*#*quit*-f*} $lastline ] } {
         return 1
      } else {
         set lastline [ lindex $lines end ]
         return [ string match -nocase {*#*quit*-f*} $lastline ]
      }
   }

   #-------------------------------------------------------------------------
   # Post processor to turn the given parameter to lower case.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_lowercase_pp { param } {
      upvar $param p
      set p [ string tolower $p ]
      return $p
   }

   #-------------------------------------------------------------------------
   # Post processor for the SynthesisTool parameter.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_synthesis_tool_pp { param } {
      upvar $param p
      switch [ string tolower $p ] {
         "xst" {
            set p "XST"
         }
         "rds" {
            set p "RDS"
         }
         "vivado" {
            set p "Vivado"
         }
         "synplify" {
            set p "Synplify"
         }
         "synplify pro" {
            set p "Synplify Pro"
         }
         default {
            error "ERROR: Invalid value for parameter \"SynthesisTool\": $p"
         }
      }
   }

   #-------------------------------------------------------------------------
   # Post processor for the HDLLanguage parameter.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_hdl_language_pp {param} {
      upvar $param p
      switch [string tolower $p] {
         "vhdl" {
            set p "VHDL"
         }
         "verilog" {
            set p "Verilog"
         }
         default {
            error "ERROR: Invalid value for parameter \"HDLLanguage\": $p"
         }
      }
   }

   #-------------------------------------------------------------------------
   # Dumps all variables of a given namespace. The current namespace is used
   # if no namespace is specified.
   #
   # @param  ns             Target namespace.
   #-------------------------------------------------------------------------
   proc dsp_dump_variables {{ns ""}} {
      if { $ns eq "" } {
         set ns [ namespace current ]
      }

      foreach param [ lsort [info vars $ns\::*] ] {
         upvar $param p
         # TODO : print array, remove upvar
         puts [namespace tail $param]\ =\ $p
      }
   }

   #-------------------------------------------------------------------------
   # Handles an exception when evaluating the given script and displays an
   # appropriate error message.
   #
   # @param  script         Script to evaluate.
   # @param  msg            Message to display upon an exception.
   # @param  append_msg     Specifies whether any returned error message is
   #                        also displayed.
   # @return 1 if the script is evaluated successfully, or 0 othewise.
   #-------------------------------------------------------------------------
   proc dsp_handle_exception {script {msg ""} {append_msg True}} {
      if [catch { uplevel $script } result] {
         if {$msg eq ""} {
            set msg "ERROR: An internal error occurred."
         }
         if {$append_msg} {
            puts stderr "\n$result"
         }
         puts stderr "$msg"
         return 0
      }
      return 1
   }

   #-------------------------------------------------------
   # return compilation flow name which represents the
   # compilation field in Sysgen token: HDL Netlist, Bitstream etc
   # return empty string if error
   #-------------------------------------------------------
   proc dsp_get_compilation_flow_name {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::Compilation ] } {
         return [ dsp_get_param_value_in_driver_tcl_namespace Compilation ]
      } else {
         return ""
      }
   }

   #-------------------------------------------------------
   # return 1 if the name of compilation flow name
   # matches with shellNameToMatch
   #-------------------------------------------------------
   proc dsp_match_compilation_flow_name { flowNameToMatch } {
      set compilationFlowName [ dsp_get_compilation_flow_name ]
      return [ string match $flowNameToMatch $compilationFlowName ]
   }

   #-------------------------------------------------------
   # return 1 if running HDL Netlist compilation
   #-------------------------------------------------------
   proc dsp_is_hdlnetlist_compilation {} {
      set compilationFlowName {HDL Netlist}
      return [ dsp_match_compilation_flow_name $compilationFlowName ]
   }

   #-------------------------------------------------------
   # return 1 if running Bitstream compilation
   #-------------------------------------------------------
   proc dsp_is_bitstream_compilation {} {
      return [ dsp_match_compilation_flow_name Bitstream ]
   }
   proc dsp_is_ipxact_compilation {} {
      return [ dsp_match_compilation_flow_name {IP Packager} ]
   }
 
   #-------------------------------------------------------------------------
   # check a proc exists, if yes run the proc and return 1 
   # if proc does not exist, return 0
   # @param  procname       name of the proc to run.
   # @param  np             name space for the proc.
   # @return 1 if proc found and run, otherwise return 0
   #-------------------------------------------------------------------------
   proc dsp_check_and_run_proc { procname {np ""} } {
      if { [ string length $np ] > 0 } {
         if { $np == "::" } {
            set decoratedprocname ::${procname}
         } else {
            set decoratedprocname ${np}::${procname}
         }
      } else {
         set decoratedprocname $procname
      }

      set findproc [ info proc $decoratedprocname ]
      if { [ string length $findproc ] > 0  } {
         eval $decoratedprocname
         return 1
      } else {
         return 0
      }
   }


   #-------------------------------------------------------
   # run tcl proc in dsp namespaces with precedence
   #-------------------------------------------------------
   proc dsp_run_proc_in_dsp_namespaces { procname } {
      if { [ string length $procname ] < 1 } {
         return
      }

      set ns [ namespace qualifiers $procname ]
      if { $ns > 0 } {
         if { [ dsp_check_and_run_proc $procname ] } {
            return
         }
      } else {
         set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
         if { [ dsp_check_and_run_proc $procname ${driverns} ] } {
            return
         }

         set wrokerns [ dsp_get_worker_tcl_namespace_qualifiers ]
         if { [ dsp_check_and_run_proc $procname ${wrokerns} ] } {
            return
         }

         if { [ dsp_check_and_run_proc $procname {::} ] } {
            return
         }

         if { [ dsp_check_and_run_proc $procname ] } {
            return
         }
     } 

     puts "WARNING: can not find proc: $procname"
   }

   #-------------------------------------------------------------------------
   # Processes all project parameters.
   #
   # REQUIRED PARAMETERS
   # ======================================================================
   #   Project
   #     PlanAhead project name.
   #
   #   DSPFamily
   #     Device family into which the design is implemented.
   #
   #   DSPDevice
   #     Device into which the design is implemented.
   #
   #   DSPPackage
   #     Package for the device being targeted.
   #
   #   DSPSpeed
   #     Speed grade of the device being targeted.
   #
   #   ProjectFiles
   #     Source files to be added in the project.
   #
   #
   # OPTIONAL PARAMETERS
   # ======================================================================
   # (*) Notes:
   #     "::=" denotes the list of supported values for each parameter.
   #
   # ----------------------------------------------------------------------
   #
   #   CompilationFlow
   #     Compilation flow.
   #
   #   TopLevelModule
   #     Top-level module of the design.
   #
   #   HDLLanguage
   #     Preferred language property controls the default setting for
   #     process properties that generate HDL output.
   #       ::= "VHDL" | "Verilog"
   #
   #   SynthesisTool
   #     Synthesis tool used for the design.
   #       ::= "XST" | "RDS" | "Synplify" | "Synplify Pro"
   #
   #   SynthesisConstraintsFile
   #     Synthesis constraints file. XCF for XST,
   #     SDC for Synplify/Synplify Pro.
   #
   #   SynthesisRegisterBalancing
   #     Register balancing option of the Synthesis process.
   #
   #   SynthesisRegisterDuplication
   #     Register duplication option of the Synthesis process.
   #
   #   SynthesisRetiming
   #     Retiming option of the Synthesis process. Synplify Pro Only.
   #       ::= True | False
   #
   #   WriteTimingConstraints
   #     Specifies whether or not to place timing constraints in the NGC
   #     file.
   #       ::= True | False
   #
   #   WriteVendorConstraints
   #     Specifies whether or not to generate vendor constraints file.
   #       ::= True | False
   #
   #   ReadCores
   #     Specifies whether or not black box cores are read for timing
   #     and area estimation in order to get better optimization of
   #     the rest of the design.
   #       ::= True | False
   #
   #   InsertIOBuffers
   #     Specifies whether or not to infer input/output buffers on all
   #     top-level I/O ports of the design.
   #       ::= True | False
   #
   #   BusDelimiter
   #     Specifies the delimiter type used to define the signal vectors in
   #     the resulting netlist.
   #       ::= "<>" | "[]" | "{}" | "()"
   #
   #   HierarchySeparator
   #     Hierarchy separator character which will be used in name
   #     generation when the design hierarchy is flattened.
   #       ::= "/" | "_"
   #
   #   KeepHierarchy
   #     Specifies whether or not the corresponding design unit should be
   #     preserved and not merged with the rest of the design.
   #       ::= "Yes" | "No" | "Soft"
   #
   #   Frequency
   #     Global clock frequency for timing-driven synthesis.
   #
   #   FanoutLimit
   #     Maximum limit of the fanout of nets.
   #
   #   MapRegisterDuplication
   #     Register duplication option of the Map process.
   #
   #   MapEffortLevel
   #     Effort level of the Map process.
   #
   #   PAREffortLevel
   #     Effort level of the Place & Route process.
   #
   #   BlockMemoryMapFile
   #     Block memory map (.bmm) file for the Data2MEM process.
   #
   #   BlockMemoryContentFile
   #     Block memory content file for the Data2MEM process.
   #
   #   Simulator
   #     Tool used for simulation.
   #
   #   DesignInstance
   #     Design instance name.
   #
   #   TestBenchModule
   #     Test-bench module.
   #
   #   SimulationTime
   #     Simulation time.
   #
   #   BehavioralSimulationCustomDoFile
   #     Custom Do file for the Behavioral Simulation process.
   #
   #   PostTranslateSimulationCustomDoFile
   #     Custom Do file for the Post-Translate Simulation process.
   #
   #   PostMapSimulationCustomDoFile
   #     Custom Do file for the Post-Map Simulation process.
   #
   #   PostPARSimulationCustomDoFile
   #     Custom Do file for the Post-Place & Route Simulation process.
   #
   #   ISimCustomProjectFile
   #     Custom project file for PlanAhead Simulator.
   #
   #   HasVerilogSource
   #     Indicate the project contains a Verilog source file.
   #
   #   ImplementationStopView
   #
   #   ProjectGenerator
   #
   #   PostProjectCreationProc
   #     optional param in driver tcl, tclsh will call this proc after project creation.
   #
   #   CustomUpdateParametersProc
   #     optional param in driver tcl, this tcl proc will be called to update parameters.
   #
   #   CustomUpdateSynthesisSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update synthesis settings.
   #
   #   CustomUpdateImplementationSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update implementation settings.
   #
   #   CustomUpdateSimulationSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update simulation settings.
   #
   #   CustomProjectDir
   #     optional param in driver tcl, this is dir name relative to tcl working dir, planAhead or vivado
   #     project will be generated in this dir
   #-------------------------------------------------------------------------
   proc dsp_process_parameters {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      dsp_required_parameter ${driverns}::Project

      #if { ! [ dsp_is_running_in_testmode ] } {
         dsp_required_parameter ${driverns}::DSPFamily dsp_lowercase_pp
         dsp_required_parameter ${driverns}::DSPDevice dsp_lowercase_pp
         dsp_required_parameter ${driverns}::DSPPackage dsp_lowercase_pp
         dsp_required_parameter ${driverns}::DSPSpeed
      #}

      dsp_required_parameter ${driverns}::ProjectFiles
      dsp_optional_parameter ${driverns}::Compilation {HDL Netlist}

      dsp_optional_parameter ${driverns}::SynthStrategyName {}
      dsp_optional_parameter ${driverns}::ImplStrategyName {}
      dsp_optional_parameter ${driverns}::CompilationFlow {general}
      dsp_optional_parameter ${driverns}::HDLLanguage {VHDL} dsp_hdl_language_pp
      dsp_optional_parameter ${driverns}::SynthesisTool {XST} dsp_synthesis_tool_pp
      dsp_optional_parameter ${driverns}::SynthesisRegisterBalancing {No}
      dsp_optional_parameter ${driverns}::SynthesisRegisterDuplication True
      dsp_optional_parameter ${driverns}::SynthesisRetiming True
      dsp_optional_parameter ${driverns}::WriteTimingConstraints False
      dsp_optional_parameter ${driverns}::WriteVendorConstraints False
      dsp_optional_parameter ${driverns}::ReadCores True
      dsp_optional_parameter ${driverns}::InsertIOBuffers True
      set is_vhdl [ dsp_hdllang_is_vhdl ]
      #dsp_optional_parameter ${driverns}::BusDelimiter [expr { $is_vhdl ? {()} : {[]} }]
      dsp_optional_parameter ${driverns}::BusDelimiter [expr { $is_vhdl ? {()} : {()} }]
      dsp_optional_parameter ${driverns}::HierarchySeparator {/}
      dsp_optional_parameter ${driverns}::KeepHierarchy {No}
      dsp_optional_parameter ${driverns}::HasVerilogSource False
      dsp_optional_parameter ${driverns}::MapRegisterDuplication True
      dsp_optional_parameter ${driverns}::MapEffortLevel {High}
      dsp_optional_parameter ${driverns}::PAREffortLevel {High}
      dsp_optional_parameter ${driverns}::DesignInstance {sysgen_dut}

      dsp_clear_empty_parameter ${driverns}::TopLevelModule
      dsp_clear_empty_parameter ${driverns}::SynthesisConstraintsFile
      dsp_clear_empty_parameter ${driverns}::Frequency
      dsp_clear_empty_parameter ${driverns}::FanoutLimit
      dsp_clear_empty_parameter ${driverns}::BlockMemoryMapFile
      dsp_clear_empty_parameter ${driverns}::BlockMemoryContentFile
      dsp_clear_empty_parameter ${driverns}::Simulator
      dsp_clear_empty_parameter ${driverns}::TestBenchModule
      dsp_clear_empty_parameter ${driverns}::BehavioralSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostTranslateSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostMapSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostPARSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::ISimCustomProjectFile
      dsp_clear_empty_parameter ${driverns}::ProjectGenerator
      dsp_clear_empty_parameter ${driverns}::ImplementationStopView
      dsp_clear_empty_parameter ${driverns}::PostProjectCreationProc
      #set ${driverns}::PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
      dsp_clear_empty_parameter ${driverns}::CustomUpdateParametersProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateSynthesisSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateImplementationSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateSimulationSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomProjectDir
      dsp_clear_empty_parameter ${driverns}::FileRepository

      if { [ info exists ${driverns}::CustomProjectDir ] } {
         set paramvalueCustomUpdateProjectDir [ dsp_get_param_value_in_driver_tcl_namespace CustomProjectDir ]
         if { [dsp_is_good_string $paramvalueCustomUpdateProjectDir] } {
            dsp_optional_parameter ${driverns}::ProjectDir ${paramvalueCustomUpdateProjectDir}
         }
      }

      if { ![ info exists ${driverns}::ProjectDir ] } {
         if { [ dsp_is_hdlnetlist_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir {hdl_netlist}
         } elseif { [ dsp_is_bitstream_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir {bitstream}
         } elseif { [ dsp_is_ipxact_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir [dsp_ip_packager_get_location]
         } else {      
            dsp_optional_parameter ${driverns}::ProjectDir {hwcosim}
         }
      }

      if { [ info exists ${driverns}::CustomUpdateParametersProc ] } {
         set paramvalueCustomUpdateParametersProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateParametersProc ]
         dsp_run_proc_in_dsp_namespaces $paramvalueCustomUpdateParametersProc
      }
   } 
   
   #-------------------------------------------------------------------------
   # Dumps all parameters.
   #-------------------------------------------------------------------------
   proc dsp_dump_parameters {} {
    dsp_dump_variables param
   }

   #-------------------------------------------------------------------------
   # a good string has length > 0 and has at least one non-white space char
   # return 0 if string is empty or only has white spaces
   # return 1 if string is good as descriped above
   # @param  str          Parameter name.
   #-------------------------------------------------------------------------
   proc dsp_is_good_string { str } {
      set strtmp [ string trim $str ]
      set length [ string length $strtmp ]
      if { $length == 0 } {
         return 0
      } else {
         return 1
      }
   }

   #-------------------------------------------------------------------------
   # return core part of file name. For example abc.d will return abc
   # @param filename       file name 
   #-------------------------------------------------------------------------
   proc dsp_get_file_core_name { filename } {
      if { ![dsp_is_good_string $filename] } {
         return ""
      }

      set dirnames [split $filename /]
      set fname [lindex $dirnames end]
      if { [dsp_is_good_string $fname] } {
         set names [split $fname .]
         set name [lindex $names end-1]
         return $name
      }

      return ""
   }

   #-------------------------------------------------------------------------
   # return the list of of search pathes for sysgen project files
   #-------------------------------------------------------------------------
   proc dsp_get_sysgen_project_file_search_path_list {} {
      set tmplist [list]

      set paramvalueFileRepository [ dsp_get_param_value_in_driver_tcl_namespace FileRepository ]
      if { [ dsp_is_good_string $paramvalueFileRepository ] } {
         set filereposdir [file normalize ${paramvalueFileRepository} ]
         if { [file exists ${filereposdir} ] } {
            lappend tmplist ${filereposdir}
         }
      }

      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjectDir ]

      set filedir "$projDir/../sysgen"
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         if { [ lsearch $tmplist ${filedir} ] < 0 } {
            lappend tmplist ${filedir}
         }
      }

      set filedir "$projDir/.."
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         if { [ lsearch $tmplist ${filedir} ] < 0 } {
            lappend tmplist ${filedir}
         }
      }

      return $tmplist
   }

   #-------------------------------------------------------------------------
   # return the full path to scoped ip dir for bxml flow
   #-------------------------------------------------------------------------
   proc dsp_get_scoped_ip_dir_full_path {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [ file normalize $paramvalueProjectDir ]

      set ipdir "$projDir/../ip"
      set ipdir [ file normalize ${ipdir} ]
      return ${ipdir}
   }

   #-------------------------------------------------------------------------
   # return the dir which has sysgen project files
   #-------------------------------------------------------------------------
   proc dsp_get_sysgen_project_file_dir {} {
      set paramvalueFileRepository [ dsp_get_param_value_in_driver_tcl_namespace FileRepository ]
      if { [ dsp_is_good_string $paramvalueFileRepository ] } {
         set filereposdir [file normalize ${paramvalueFileRepository} ]
         if { [file exists ${filereposdir} ] } {
            return ${filereposdir}
         }
      }

      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjectDir ]

      set filedir "$projDir/../sysgen"
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         return ${filedir}
      }

      set filedir "$projDir/.."
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         return ${filedir}
      }
   }

   #-------------------------------------------------------------------------
   # return a list of file names
   # when return list of core names, the file named abc.d, only abc will be in the return list
   # when return list of full names, the file named with full path will be in the return list
   # @param filedir          the dir in which to do glob
   # @param fileext          the file extention used to do glob
   # @param corenameonly     return list of core names if 1, otherwise return list of full names
   # @param skipfiles        list of files which should be skipped
   #-------------------------------------------------------------------------
   proc dsp_get_file_name_list { filedir fileext {corenameonly 0} {skipfiles ""}} {
      set skiplist [list]
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfl
         if { [llength $skipfl] > 0 } {
            foreach skipfname $skipfl {
               set fullname [file normalize $skipfname]
               set name [ dsp_get_file_core_name $fullname ]
               if { [ dsp_is_good_string $name] } {
                  lappend skiplist $name
               }
            }
         }
      }

      set namelist [list]
      set sourcefiles [ glob -nocomplain ${filedir}/*${fileext} ]
      foreach fullname $sourcefiles {
         set fullname [file normalize $fullname]
         set name [ dsp_get_file_core_name $fullname ]

         if { [llength $skiplist] > 0} {
            if { [ dsp_is_good_string $name] } {
               if { [lsearch $skiplist $name] >= 0 } {
                  continue
               }
            }
         }

         if { $corenameonly == 0 } {
            lappend namelist $fullname
         } else {
            if { [ dsp_is_good_string $name] } {
               lappend namelist $name
            }
         }
      }
      return $namelist
   }

   #-------------------------------------------------------------------------
   # return a list of file names
   # when return list of core names, the file named abc.d, only abc will be in the return list
   # when return list of full names, the file named with full path will be in the return list
   # @param pathlist         list of the dirs in which to do glob, if same file name appears in 
   #                          mulitiple dir, the one in the front of dir list are used, and the rest
   #                          files with same name are ignored
   # @param fileext          the file extention used to do glob
   # @param corenameonly     return list of core names if 1, otherwise return list of full names
   #-------------------------------------------------------------------------
   proc dsp_get_file_name_list_from_pathlist { pathlist fileext {corenameonly 0} } {
      set namelist [list]
      set addedfiles [list]
      foreach filedir $pathlist {
         set filedir [file normalize ${filedir} ]
         if { ![file exists ${filedir} ] } {
            continue
         }

         set tmplist [ dsp_get_file_name_list ${filedir} ${fileext} $corenameonly]
         foreach tmpfilename $tmplist {
            if { $corenameonly == 0 } {
               set corename [ dsp_get_file_core_name ${tmpfilename} ]
            } else {
               set corename ${tmpfilename}
            }

            if { [ dsp_is_good_string ${corename} ] } {
               if { [ lsearch $addedfiles ${corename} ] < 0 } {
                  lappend namelist ${tmpfilename}
                  lappend  addedfiles ${corename}
               }
            }
         }
      }
      return $namelist
   }

   #-------------------------------------------------------------------------
   # return 1 if project has test bench
   #-------------------------------------------------------------------------
   proc dsp_has_testbench {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      return [info exists ${driverns}::TestBenchModule]
   }

   #-------------------------------------------------------------------------
   # return 1 if project has created interface document
   #-------------------------------------------------------------------------
   proc dsp_has_create_interface_document {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [info exists ${driverns}::CreateInterfaceDocument] } {
         set paramvalueCreateInterfaceDocument [ dsp_get_param_value_in_driver_tcl_namespace CreateInterfaceDocument ]
         if { [string equal -nocase ${paramvalueCreateInterfaceDocument} "on"] } {
            return 1
         } else {
            return 0
         }
      } else {
         return 0
      }
   }

   #-------------------------------------------------------------------------
   # return name of the list var which is used to store files with specific extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_list_var_name { extname } {
      set extlower [ string tolower $extname ]
      return hidden_list_var_to_hold_file_$extlower
   }

   #-------------------------------------------------------------------------
   # return value of the list var which is used to store files with specific extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   #proc dsp_get_list_var_value { extname } {
   #   set tmplist [list]
   #   set listvarname [ dsp_get_list_var_name $extname ]
   #   if { [info exists $listvarname] } {
   #      set tmplist [set $listvarname] 
   #   } else {
   #      set tmplist [list] 
   #   }
   #   return $tmplist
   #}

   #-------------------------------------------------------------------------
   # return name of the list var which is used to store files with specific extension
   # @param extnamelist          list of file extentions
   #-------------------------------------------------------------------------
   proc dsp_reset_project_file_list_var { extnamelist } {
      foreach ext $extnamelist {
         set vn [ dsp_get_list_var_name $ext ]
         if { [ info exists $vn ] } {
            unset $vn
         }
      }
   }

   #-------------------------------------------------------------------------
   # return name of the handler proc for add project files with extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_add_project_files_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_add_project_files_handler_$extlower
   }

   #-------------------------------------------------------------------------
   # return name of the handler proc for add project files with extension to bxml
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_bxml_add_project_files_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_bxml_add_project_files_handler_$extlower
   }

   #-------------------------------------------------------------------------
   # handler for .ucf files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_ucf { filelist } {
      upvar $filelist ucffl
      if { [llength $ucffl] > 0 } {
         if { [ dsp_is_running_planAhead ] } {
            ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $ucffl
         } 
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ucf files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_ucf { fpbxml filelist } {
      upvar $filelist ucffl
      if { [llength $ucffl] > 0 } {
         if { [ dsp_is_running_planAhead ] } {
            #dsp_bxml_add_file_list $fpbxml $ucffl
            dsp_bxml_copy_ucf_add_ncf $fpbxml $ucffl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .tcl files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_tcl { filelist } {
      upvar $filelist tclfl
      if { [llength $tclfl] > 0 } {
         foreach tclf $tclfl {
            source ${tclf} -notrace
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .xdc files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_xdc { filelist } {
      upvar $filelist xdcfl
      if { [llength $xdcfl] > 0 } {
         if { [ dsp_is_running_vivado ] } {
            set_property constrs_type XDC [get_filesets constrs_1]
            ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $xdcfl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .xco files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_xco { filelist } {
      upvar $filelist xcofl
      if { [llength $xcofl] > 0 } {
         foreach xcofile $xcofl {
            set xcofile [file normalize $xcofile]
            set xcofilerootname [ file rootname $xcofile ]
            set ipname [ file tail $xcofilerootname ]
            if [dsp_is_good_string $ipname] {
               ::import_ip -file $xcofile -name  $ipname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .xdc files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_xdc { fpbxml filelist } {
      upvar $filelist xdcfl
      if { [llength $xdcfl] > 0 } {
         if { [ dsp_is_running_vivado ] } {
            dsp_bxml_add_file_list $fpbxml $xdcfl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ngc files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_ngc { filelist } {
      upvar $filelist ngcfl
      if { [llength $ngcfl] > 0 } {
         ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $ngcfl
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ngc files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_ngc { fpbxml filelist } {
      upvar $filelist ngcfl
      if { [llength $ngcfl] > 0 } {
         dsp_bxml_add_file_list $fpbxml $ngcfl
      }
   }

   #-------------------------------------------------------------------------
   # handler for .mif files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_mif { filelist } {
      upvar $filelist miffl
   #   if { [ dsp_has_testbench ] } {
         if { [llength $miffl] > 0 } {
            ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $miffl
         }
   #   }
   }

   #-------------------------------------------------------------------------
   # handler for .mif files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_mif { filebxml filelist } {
      upvar $filelist miffl
      dsp_bxml_add_file_list $filebxml $miffl
   }

   #-------------------------------------------------------------------------
   # handler for testbench files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_testbench { filelist } {
      upvar $filelist tbfl
      if { [ dsp_has_testbench ] } {
         if { [llength $tbfl] > 0 } {
            ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $tbfl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for testbench files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   #proc dsp_bxml_add_project_files_handler_testbench { fpbxml filelist } {
   #   upvar $filelist tbfl
   #   if { [ dsp_has_testbench ] } {
   #      if { [llength $tbfl] > 0 } {
   #         #dsp_bxml_add_file_list $fpbxml $tbfl
   #         set manualsimfiles [ dsp_merge_lists $manualsimfiles $tbfl ]
   #      }
   #   }
   #}

   #-------------------------------------------------------------------------
   # Adds source files to the project.
   #-------------------------------------------------------------------------
   proc dsp_add_project_files {} {
      set projfilesexts "xco ucf xdc mif ngc v vhd testbench tcl"
      set retcode [ dsp_reset_project_file_list_var $projfilesexts ]

      #set ucffiles [list]
      #set xdcfiles [list]
      #set tbfiles [list]
      #set miffiles [list]
 
      set_property design_mode RTL [ get_filesets sources_1]

      #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      #set projDir [file normalize $paramvalueProjectDir ]
      #set filedir "$projDir/../sysgen"
      #if { ![file exists $filedir ] } {
      #   set filedir "$projDir/.."
      #}

      set filedir [ dsp_get_sysgen_project_file_dir ]

      set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
      set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
      foreach p $paramvalueProjectFiles {
         set filen [list]
         set origname [lindex $p 0]
         set origrootname [ file rootname [lindex $p 0] ]
         set filenameraw "$filedir/$origname"
         if { [ file exists $filenameraw ] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }
         #set filename [file normalize [lindex $p 0]]
         set opts [lrange $p 1 end]
         set nopts [llength $opts]
         if {$nopts % 2 != 0} {
            error "Parameter \"ProjectFiles\" contains an invalid value \"$p\"."
         }
         # Remember it if the project contains a Verilog source file.
         if { [string match -nocase "*.v" $filename] } {
            set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
            set ${driverns}::HasVerilogSource True
         }

         foreach curext $projfilesexts {
            if { [string match -nocase "*.$curext" $filename] } {
               if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename]} {
                  if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} ${origrootname} ] } {
                     set listvarname [ dsp_get_list_var_name "testbench" ]
                     lappend $listvarname $filename
                  } else {
                     lappend filen $filename
                     ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $filen

                     for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                        set key [lindex $opts $i]
                        set val [lindex $opts [expr {$i + 1}]]
                        switch -- $key {
                           "-lib" {
                              set_property library $val [get_files -of_object {sources_1} [file tail $origname]]
                           }
                        }
                     }
                  }
               } else {
                  set listvarname [ dsp_get_list_var_name $curext ]
                  lappend $listvarname $filename
               }
               break
            }
         }

         #if { ![string match -nocase "*.mdl" $filename] } {
         #   if { [string match -nocase "*.ucf" $filename] } {
         #      lappend ucffiles $filename
         #   } elseif { [string match -nocase "*.xdc" $filename] } {
         #      lappend xdcfiles $filename
         #   } elseif { [string match -nocase "*.mif" $filename] } {
         #      lappend miffiles $filename
         #   } elseif { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename]} {
         #      if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} ${origrootname} ] } {
         #         lappend tbfiles $filename
         #      } else {
         #         lappend filen $filename
         #      }
         #   }
         #}

         #if { [llength $filen] > 0 } {
         #   ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $filen

         #   for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
         #      set key [lindex $opts $i]
         #      set val [lindex $opts [expr {$i + 1}]]
         #      switch -- $key {
         #         "-lib" {
         #            set_property library $val [get_files -of_object {sources_1} $origname]
         #         }
         #      }
         #   }
         #}
      }

      foreach curext $projfilesexts {
         set listvarname [ dsp_get_list_var_name $curext ]
         if { [ info exists $listvarname ] } {
            set handlername [ dsp_get_add_project_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $listvarname
            }
         }
      }

      #::set_property strategy poweroptimization [ get_runs synth_1 ]
      #set verilogSources [ glob $srcDir/FifoBuffer.v $srcDir/async_fifo.v $srcDir/rtlRam.v $srcDir/$projName/*.v ]
      #import_files -fileset [ get_filesets sources_1 ] -force -norecurse $verilogSources

      #if { [llength $ucffiles] > 0 } {
      #   if { [ dsp_is_running_planAhead ] } {
      #      ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $ucffiles
      #   }
         #if { [ dsp_is_running_vivado ] } {
         #   if { [ dsp_is_hwcosim_compilation ] } {  
         #      set_property constrs_type UCF [get_filesets constrs_1]
         #      ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $ucffiles                         
         #   }
         #}
      #}

      #if { [llength $xdcfiles] > 0 } {
      #   if { [ dsp_is_running_vivado ] } {
      #      set_property constrs_type XDC [get_filesets constrs_1]
      #      ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $xdcfiles
      #   }
      #}

      set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      if { [string equal -nocase ${paramvalueSynthesisTool} "RDS"]
         || [string equal -nocase ${paramvalueSynthesisTool} "Vivado"] } {

         set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
         set ipdir ${paramvalueProjectDir}/${paramvalueProject}.srcs/sources_1/ip
         if { ![ file exists $ipdir ] } {
            file mkdir $ipdir
         }
         set coeSources [ glob -nocomplain $filedir/*.coe ]
         foreach coefile $coeSources {
            file copy -force $coefile $ipdir
         }

         #set xcoIpNames [ dsp_get_file_name_list $filedir {.xco} 1 ]
         #set xcoSources [ glob $projDir/../sysgen/*.xco ]
         #set xcoSources [ glob -nocomplain $filedir/*.xco ]
         #if { ![ dsp_is_hwcosim_compilation ] } {
         #   foreach xcofile $xcoSources {
         #      set xcofile [file normalize $xcofile]
         #      set dirnames [split $xcofile /]
         #      set xcofilename [lindex $dirnames end]
         #      if [dsp_is_good_string $xcofilename] {
         #         set ipnames [split $xcofilename .]
         #         set ipname [lindex $ipnames end-1]
         #::import_ip -file $xcofile -name  $ipname
         #lappend xcoIpNames $ipname
         #      }
         #   }
         #}

         # source sysgen/SgVivadoCore.tcl file that contains
         # configuration instructions for all IP cores
         #set CoreConfigTclFile "$projDir/../sysgen/SgVivadoCore.tcl"
         set CoreConfigTclFile "${filedir}/SgVivadoCore.tcl"
         set CoreConfigTclFile [ file normalize ${CoreConfigTclFile} ]
         if { [file exists ${CoreConfigTclFile}] } {
            source ${CoreConfigTclFile}
         }

         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} 0 $listvarname]
         } else {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} ]
         }
         #if { [lsearch $xcoIpNames $ngcipname] < 0 } {
         #lappend ngcfiles $ngcfile
         #}
         if { [llength $ngcfiles] > 0 } {
            ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $ngcfiles
         }
      } else {
         set fileext ".ngc"
         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            dsp_add_file_to_project $filedir $fileext $listvarname
         } else {
            dsp_add_file_to_project $filedir $fileext
         }
      }

      set fileextlist [list]
      lappend fileextlist ".edn"
      lappend fileextlist ".edf"
      lappend fileextlist ".ndf"

      foreach fileext $fileextlist {
         dsp_add_file_to_project $filedir $fileext
      }

      if { [ dsp_has_testbench ] } {
         #if { [llength $tbfiles] > 0 } {
         #   ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $tbfiles
         #}

         #if { [llength $miffiles] > 0 } {
         #   ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $miffiles
         #}

         #set datpath "$projDir/../sysgen"
         #set datpath [file normalize $datpath ]
         #set datfiles [ dsp_get_file_name_list $datpath {.dat} ]
         #set addedfiles [ dsp_get_file_name_list $datpath {.dat} 1 ]

         #set datpath "$projDir/.."
         #set datpath [file normalize $datpath ]
         #set datfilesMore [ dsp_get_file_name_list $datpath {.dat} ]

         #foreach datfn $datfilesMore {
         #   set corename [ dsp_get_file_core_name $datfn ]
         #   if { [ lsearch $addedfiles $corename ] < 0 } {
         #      lappend  datfiles $datfn
         #   }
         #}

         set datapath [ dsp_get_sysgen_project_file_search_path_list ]
         set datfiles [ dsp_get_file_name_list_from_pathlist $datapath {.dat} ]

         if { [llength $datfiles] > 0 } {
            ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $datfiles
         }
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::TopLevelModule] {
         set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
         ::set_property top ${paramvalueTopLevelModule} [ get_property srcset [ current_run ] ]
      }
   }

   #-------------------------------------------------------------------------
   # Sets the synthesis settings for vivado.
   #-------------------------------------------------------------------------
   proc dsp_set_vivado_synthesis_settings {} {
      set_property flow {Vivado Synthesis 2012} [get_runs synth_1]
      set paramvalueSynthStrategyName [ dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
         return
      }
   } 

   #-------------------------------------------------------------------------
   # Sets the synthesis settings for XST.
   #-------------------------------------------------------------------------
   proc dsp_set_xst_synthesis_settings {} {
      set_property flow {XST 14} [get_runs synth_1]
      #set_property strategy Sysgen_Defaults [get_runs synth_1]

      set paramvalueSynthStrategyName [ dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueSynthStrategyName} "XST Defaults*"] } {
            set_property strategy "XST Defaults" [get_runs synth_1]
         } else {
            set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
            return
         }
      }
       
      ::config_run synth_1 -program xst -option -opt_mode -value speed
      ::config_run synth_1 -program xst -option -opt_level -value 1
      set paramvalueKeepHierarchy [ dsp_get_param_value_in_driver_tcl_namespace KeepHierarchy ]
      set moreoptions "-keep_hierarchy ${paramvalueKeepHierarchy}"

      # tmp walk around for CR 618368, pa xml parser cannot read in [], the bus delimiter for verilog
      # should roll back after the cr is fixed
      #if {[dsp_hdllang_is_vhdl]} {
      set paramvalueBusDelimiter [ dsp_get_param_value_in_driver_tcl_namespace BusDelimiter ]
      set moreoptions "$moreoptions -bus_delimiter ${paramvalueBusDelimiter}"
      #}

      set paramvalueHierarchySeparator [ dsp_get_param_value_in_driver_tcl_namespace HierarchySeparator ]
      set moreoptions "$moreoptions -hierarchy_separator ${paramvalueHierarchySeparator}"
      # TODO: Remove this check when PlanAhead settles with the read core property value

      set paramvalueReadCores [ dsp_get_param_value_in_driver_tcl_namespace ReadCores ]
      if {[string equal -nocase ${paramvalueReadCores} "false"]
         || [string equal -nocase ${paramvalueReadCores} "no"]} {
         set moreoptions "$moreoptions -read_cores no"
      } else {
         set moreoptions "$moreoptions -read_cores yes"
      }

      set paramvalueInsertIOBuffers [ dsp_get_param_value_in_driver_tcl_namespace InsertIOBuffers ]
      if { [string equal -nocase ${paramvalueInsertIOBuffers} "false"]
         || [string equal -nocase ${paramvalueInsertIOBuffers} "no"]} {
         set moreoptions "$moreoptions -iobuf no"
      } else {
         set moreoptions "$moreoptions -iobuf yes"
      }

      set paramvalueSynthesisRegisterBalancing [ dsp_get_param_value_in_driver_tcl_namespace SynthesisRegisterBalancing ]
      ::config_run synth_1 -program xst -option -register_balancing -value ${paramvalueSynthesisRegisterBalancing}

      set paramvalueSynthesisRegisterDuplication [ dsp_get_param_value_in_driver_tcl_namespace SynthesisRegisterDuplication ]
      if { [string equal -nocase ${paramvalueSynthesisRegisterDuplication} "false"]
         || [string equal -nocase ${paramvalueSynthesisRegisterDuplication} "no"]} {
         set moreoptions "$moreoptions -register_duplication no"
      } else {
         set moreoptions "$moreoptions -register_duplication yes"
      }

      set paramvalueWriteTimingConstraints [ dsp_get_param_value_in_driver_tcl_namespace WriteTimingConstraints ]
      if { [string equal -nocase ${paramvalueWriteTimingConstraints} "true"]
         || [string equal -nocase ${paramvalueWriteTimingConstraints} "yes"]} {
         set moreoptions "$moreoptions -write_timing_constraints yes"
      } else {
         set moreoptions "$moreoptions -write_timing_constraints no"
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::SynthesisConstraintsFile] {
         #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         #set projDir [file normalize ${paramvalueProjectDir} ]
         #set filedir "$projDir/../sysgen"
         #if { ![file exists $filedir ] } {
         #   set filedir "$projDir/.."
         #}
         set filedir [ dsp_get_sysgen_project_file_dir ]

         set paramvalueSynthesisConstraintsFile [ dsp_get_param_value_in_driver_tcl_namespace SynthesisConstraintsFile ]
         set origname ${paramvalueSynthesisConstraintsFile}
         set filenameraw "$filedir/$origname"
         if { [file exists $filenameraw] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }

         #set moreoptions "$moreoptions -iuc no"
         set moreoptions "$moreoptions -iuc yes"
         #set moreoptions "$moreoptions -uc \"${paramvalueSynthesisConstraintsFile}\""
         #set moreoptions "$moreoptions -uc ${paramvalueSynthesisConstraintsFile}"
         #set moreoptions "$moreoptions -uc \"[file normalize ${paramvalueSynthesisConstraintsFile}]\""
         #set moreoptions "$moreoptions -uc [file normalize ${paramvalueSynthesisConstraintsFile}]"
         ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $filename
      } else {
         set moreoptions "$moreoptions -iuc yes"
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::FanoutLimit] {
         set paramvalueFanoutLimit [ dsp_get_param_value_in_driver_tcl_namespace FanoutLimit ]
         set moreoptions "$moreoptions -max_fanout ${paramvalueFanoutLimit}"
      }

      ::config_run synth_1 -program xst -option {More Options} -value "$moreoptions"      
   } 

   #-------------------------------------------------------------------------
   # Sets target language settings.
   #-------------------------------------------------------------------------
   proc dsp_set_target_language_settings {} {
      if { [ dsp_hdllang_is_vhdl ] } {
         set_property target_language VHDL [current_project]
         if { [ dsp_has_testbench ] } {
            set_property -quiet ng.output_hdl_format VHDL [get_filesets sim_1]
         }
      } else {
         set_property target_language Verilog [current_project]
         if { [ dsp_has_testbench ] } {
            set_property -quiet ng.output_hdl_format Verilog [get_filesets sim_1]
         }
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the synthesis settings.
   #-------------------------------------------------------------------------
   proc dsp_set_synthesis_settings {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::CustomUpdateSynthesisSettingsProc ] } {
         set paramvalueCustomUpdateSynthesisSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateSynthesisSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateSynthesisSettingsProc}
      } else {

         set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
         switch -- ${paramvalueSynthesisTool} {
            "XST" { 
               dsp_set_xst_synthesis_settings 
            }
            "RDS" { 
               dsp_set_vivado_synthesis_settings 
            }
            "Vivado" { 
               dsp_set_vivado_synthesis_settings 
            }
         }
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_implementation_settings {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::CustomUpdateImplementationSettingsProc] } {
         set paramvalueCustomUpdateImplementationSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateImplementationSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateImplementationSettingsProc}
      } else {

         set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
         switch -- ${paramvalueSynthesisTool} {
            "XST" {   
               dsp_set_xst_implementation_settings 
            }
            "RDS" {
               dsp_set_vivado_implementation_settings
            }
            "Vivado" {
               dsp_set_vivado_implementation_settings
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # Sets the vivado implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_vivado_implementation_settings {} {
      set_property flow {Vivado Implementation 2012} [get_runs impl_1]
      set paramvalueImplStrategyName [ dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
         return
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the xst implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_xst_implementation_settings {} {

      set_property flow {ISE 14} [get_runs impl_1]
      #set_property strategy Sysgen_Defaults [get_runs impl_1]

      set paramvalueImplStrategyName [ dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueImplStrategyName} "ISE Defaults*"] } {
            set_property strategy "ISE Defaults" [get_runs impl_1]
         } else {
            set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
            return
         }
      }

      set moreoptions {-nt timestamp}
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::BlockMemoryMapFile] {
         set paramvalueBlockMemoryMapFile [ dsp_get_param_value_in_driver_tcl_namespace BlockMemoryMapFile ]
         set moreoptions "$moreoptions -bm ${paramvalueBlockMemoryMapFile}"
      }

      ::config_run impl_1 -program ngdbuild -option {More Options} -value "$moreoptions"

      # Determine the type of value the "Map Register Duplication" property accepts
      set paramvalueFamily [ dsp_get_param_value_in_driver_tcl_namespace DSPFamily ]
      switch -- ${paramvalueFamily} {
         "virtex" - "virtexe" - "spartan2" - "spartan2e" {
         }
         default {
            set map_reg_dup [ dsp_get_param_value_in_driver_tcl_namespace MapRegisterDuplication ]
            if {[string equal -nocase $map_reg_dup "true"]
               || [string equal -nocase $map_reg_dup "on"]
               || [string equal -nocase $map_reg_dup "yes"]} {
               set map_reg_dup {true}
            } else {
               set map_reg_dup {false}
            }
         }
      }

      # Map properties
      set mapol [ dsp_get_param_value_in_driver_tcl_namespace MapEffortLevel ]
      if {[string equal -nocase $mapol "high"]} {
         set mapol {high}
      } elseif {[string equal -nocase $mapol "standard"]
         || [string equal -nocase $mapol "std"]} {
         set mapol {std}
      } else {
         set mapol {<none>}
      }

      set paramvalueFamily [ dsp_get_param_value_in_driver_tcl_namespace DSPFamily ]
      switch -glob -- ${paramvalueFamily} {
         "*virtex4*" - "*spartan3*" {
            ::config_run impl_1 -program map -option -ol -value $mapol
            ::config_run impl_1 -program map -option -timing -value true
            ::config_run impl_1 -program map -option -register_duplication -value $map_reg_dup
         }
         "virtex" - "virtexe" - "spartan2" - "spartan2e" {
            ::config_run impl_1 -program map -option -timing -value true
         }
         default {
            ::config_run impl_1 -program map -option -ol -value $mapol
            ::config_run impl_1 -program map -option -register_duplication -value $map_reg_dup
         }
      }

      # Place & Route properties
      set parol [ dsp_get_param_value_in_driver_tcl_namespace PAREffortLevel ]
      if {[string equal -nocase $parol "high"]} {
         set parol {high}
      } elseif {[string equal -nocase $parol "standard"]
         || [string equal -nocase $parol "std"]} {
         set parol {std}
      } else {
         set parol {<none>}
      }
      ::config_run impl_1 -program par -option -ol -value $parol
   }

   #-------------------------------------------------------------------------
   # Sets the simulation settings
   #-------------------------------------------------------------------------
   proc dsp_set_simulation_settings {} {
      if { ![ dsp_has_testbench ] } {
         return
      } else {
         create_fileset -simset sim_1
         set_property SOURCE_SET sources_1 [ get_filesets sim_1 ]
         set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
         set_property top ${paramvalueTestBenchModule} [ get_filesets sim_1 ]
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      set has_simtime [info exists ${driverns}::SimulationTime]
      if {$has_simtime} {
         set paramvalueSimulationTime [ dsp_get_param_value_in_driver_tcl_namespace SimulationTime ]
         set_property runtime ${paramvalueSimulationTime} [ get_filesets sim_1 ]
      }

      if { [ info exists ${driverns}::CustomUpdateSimulationSettingsProc] } {
         set paramvalueCustomUpdateSimulationSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateSimulationSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateSimulationSettingsProc}
      } else {
         #set_property NG.MORE_NETGEN_OPTIONS {-sdf_anno false} [ get_filesets sim_1 ]
         set propertylist [string tolower [list_property [get_filesets sim_1]]]
         if { [lsearch $propertylist nl.sdf_anno] >= 0 } {
            set_property nl.sdf_anno false [get_filesets sim_1]
         }

         if { [lsearch $propertylist ng.sdf_anno] >= 0 } {
            set_property ng.sdf_anno false [get_filesets sim_1]
         }
         #set_property source_mgmt_mode DisplayOnly [current_project]

         # Commenting out library setting for ISim simulation for Verilog 
         # Setting of MORE_OPTIONS for verilog specific simulation libraries is not requires as of P.15 release
         #  set paramvalueHDLLanguage [ dsp_get_param_value_in_driver_tcl_namespace HDLLanguage ]
         #  set is_vhdl [expr { ${paramvalueHDLLanguage} eq "VHDL" }]
         #  if { !$is_vhdl } {
         #      #set_property -property_name FUSE.MORE_OPTIONS -property_value {-L unisims_ver -L simprims_ver -L xilinxcorelib_ver -L secureip} -object [get_filesets sim_1]
         #      set_property -name FUSE.MORE_OPTIONS -value "-L unisims_ver -L simprims_ver -L xilinxcorelib_ver -L secureip" -object [get_filesets sim_1]
         #  }
      }
   }

   #-------------------------------------------------------------------------
   # Starts the project creation.
   #-------------------------------------------------------------------------
   proc dsp_start_project_creation {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      if { [file exists ${paramvalueProjectDir}] } {
         file delete -force ${paramvalueProjectDir}
      }

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      #set paramvalueDevice [ dsp_get_param_value_in_driver_tcl_namespace DSPDevice ]
      #set paramvaluePackage [ dsp_get_param_value_in_driver_tcl_namespace DSPPackage ]
      #set paramvalueSpeed [ dsp_get_param_value_in_driver_tcl_namespace DSPSpeed ]
      #::create_project ${paramvalueProject} ${paramvalueProjectDir} \
      #-part ${paramvalueDevice}${paramvaluePackage}${paramvalueSpeed}

      set devicenamevalue [ dsp_get_devicename ]

      ::create_project ${paramvalueProject} ${paramvalueProjectDir} -part ${devicenamevalue}
   }

   #-------------------------------------------------------------------------
   # Finishes the project creation.
   #-------------------------------------------------------------------------
   proc dsp_finish_project_creation {} {
      if { [catch current_project] } {
         return
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::PostProjectCreationProc ] } {
         set paramvaluePostProjectCreationProc [ dsp_get_param_value_in_driver_tcl_namespace PostProjectCreationProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvaluePostProjectCreationProc}
      }

      ::close_project
   }

   #-------------------------------------------------------------------------
   # return relative file path
   #-------------------------------------------------------------------------
   proc dsp_get_proj_relative_path {filepath} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize ${paramvalueProjectDir} ]
      set toppath "$projDir/.."
      set toppath [ file normalize $toppath ]
      set normalpath [ file normalize $filepath ]
      set toppathsize [ string length $toppath ]
      set endidx [ expr $toppathsize - 1 ]
      set topsub [ string range $normalpath 0 $endidx ]
      if { [ string match $topsub $toppath ]} {
         set startidx [ expr $toppathsize + 1 ]
         set relativepath [ string range $normalpath $startidx end ]
         return $relativepath
      } else {
         return $filepath
      }
   }

   #-------------------------------------------------------------------------
   # add file with specific extention as  nodes to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_ext {fpbxml filedir fileext { skipfiles "" }} {
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfls
         set localcopyskipfl $skipfls
         set extfiles [ dsp_get_file_name_list $filedir $fileext 0 localcopyskipfl ]
      } else {
         set extfiles [ dsp_get_file_name_list $filedir $fileext ]
      }

      if { [llength $extfiles] > 0 } {
         dsp_bxml_add_file_list $fpbxml $extfiles
      }
   }

   #-------------------------------------------------------------------------
   # copy a list of ucf files to ncf files and add ncf files to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_copy_ucf_add_ncf {fpbxml ucffilenamelist} {
      if { [llength $ucffilenamelist] > 0 } {
         foreach ucffname $ucffilenamelist {
            if { [dsp_is_good_string $ucffname] } {
               set nlength [string length $ucffname]
               set nidxstart [ expr { $nlength - 3 } ]
               set nidxend [ expr { $nlength - 1 } ]
               set ncffname [string replace $ucffname $nidxstart $nidxend "ncf"]
               if { ![file exists $ncffname ] } {
                  file copy -force $ucffname $ncffname
               }
               dsp_bxml_add_file $fpbxml $ncffname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # write sime files which need dsp module to handle in pa project
   #-------------------------------------------------------------------------
   proc dsp_write_manualsimfile_list {filenamelist} {

      set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
      set filename ${subname}.simset
      set tmpfilename "./sysgen/$filename"
      set tmpfilename [file normalize $tmpfilename ]
      set fp [open $tmpfilename w]

      if { [llength $filenamelist] > 0 } {
         foreach fname $filenamelist {
            if { [dsp_is_good_string $fname] } {
               if { [file exists $fname] } {
                  puts $fp $fname
               }
            }
         }
      }

      close $fp
   }

   #-------------------------------------------------------------------------
   # add a list of files nodes to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_list {fpbxml filenamelist} {
      if { [llength $filenamelist] > 0 } {
         foreach fname $filenamelist {
            if { [dsp_is_good_string $fname] } {
               dsp_bxml_add_file $fpbxml $fname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # add a file node to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file {fpbxml filename} {
      set filename [dsp_get_proj_relative_path $filename]
      set fnameext [split $filename .]
      set ntmp [llength $fnameext]
      if { $ntmp > 1} {
         set sext [lindex $fnameext end]
         dsp_bxml_add_file_type $fpbxml $filename $sext
      }
   }

   #-------------------------------------------------------------------------
   # add a file node to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_type {fpbxml filename filetype} {
      set filetimestamp 0
      if { [file exists $filename] } {
         set filetimestamp [file mtime $filename]
      }

      puts -nonewline $fpbxml {<File Name="}
      puts -nonewline $fpbxml $filename
      puts -nonewline $fpbxml {" Type="}

      if [string match -nocase "vhd" $filetype] {
         puts -nonewline $fpbxml {VHDL}
      } elseif [string match -nocase "v" $filetype] {
         puts -nonewline $fpbxml {Verilog}
      } else {
         puts -nonewline $fpbxml [string toupper $filetype]
      }

      puts $fpbxml {">}
      puts $fpbxml "<Description>This is $filetype file</Description>"
      if { [string match -nocase "ncf" $filetype] } {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="false" Timestamp="}
      } elseif { [string match -nocase "xdc" $filetype] } {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="true" ScopedToRef="}
         set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
         puts -nonewline $fpbxml ${paramvalueTopLevelModule}
         puts -nonewline $fpbxml {" Timestamp="}
      } else {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="true" Timestamp="}
      }
      puts $fpbxml "$filetimestamp\"/>"
      if { [string match -nocase "ngc" $filetype] } {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "v" $filetype] || [string match -nocase "vhd" $filetype]} {
         set dirnames [split $filename /]
         set sfilename [lindex $dirnames end]
         set origrootname [ file rootname [lindex $sfilename 0] ]
         set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
         if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} $origrootname ] } {
            puts $fpbxml {<UsedIn Val="SIMULATION"/>}
         } else {
            puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
            puts $fpbxml {<UsedIn Val="SIMULATION"/>}
         }
      } elseif { [string match -nocase "ucf" $filetype] || [string match -nocase "ncf" $filetype] || [string match -nocase "xcf" $filetype]} {
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "xdc" $filetype] } {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "dat" $filetype] } {
         puts $fpbxml {<UsedIn Val="SIMULATION"/>}
      } elseif { [string match -nocase "mif" $filetype] || [string match -nocase "coe" $filetype] } {
         puts $fpbxml {<UsedIn Val="SIMULATION"/>}
      } else {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
      }
      puts $fpbxml {</File>}
   }

   #-------------------------------------------------------------------------
   # add files to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_files {fp} {
      set projfilesexts "ucf xdc mif ngc v vhd testbench"
      set retcode [ dsp_reset_project_file_list_var $projfilesexts ]

      #set ucffiles [list]
      #set xdcfiles [list]
      #set tbfiles [list]
      set manualsimfiles [list]
      #set miffiles [list]

      #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      #set projDir [file normalize ${paramvalueProjectDir} ]
      #set filedir "$projDir/../sysgen"
      #set filedir [file normalize $filedir ]
      #if { ![file exists $filedir ] } {
      #   set filedir "$projDir/.."
      #   set filedir [file normalize $filedir ]
      #}
      set filedir [ dsp_get_sysgen_project_file_dir ]

      set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
      set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
      foreach p ${paramvalueProjectFiles} {
         set filen [list]
         set origname [lindex $p 0]
         set origrootname [ file rootname [lindex $p 0] ]
         set filenameraw "$filedir/$origname"
         if { [file exists $filenameraw] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }
         #set filename [file normalize [lindex $p 0]]
         set opts [lrange $p 1 end]
         set nopts [llength $opts]
         if {$nopts % 2 != 0} {
            error "Parameter \"ProjectFiles\" contains an invalid value \"$p\"."
         }
         # Remember it if the project contains a Verilog source file.
         if [string match -nocase "*.v" $filename] {
            set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
            set ${driverns}::HasVerilogSource True
         }

         foreach curext $projfilesexts {
            if { [string match -nocase "*.$curext" $filename] } {
               if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename]} {
                  if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} ${origrootname} ] } {
                     set listvarname [ dsp_get_list_var_name "testbench" ]
                     lappend $listvarname $filename
                  } else {
                     lappend filen $filename
                     dsp_bxml_add_file_list $fp $filen

                     #for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                     #   set key [lindex $opts $i]
                     #   set val [lindex $opts [expr {$i + 1}]]
                     #   switch -- $key {
                     #      "-lib" {
                     #         set_property library $val [get_files -of_object {sources_1} $origname]
                     #      }
                     #   }
                     #}
                  }
               } else {
                  set listvarname [ dsp_get_list_var_name $curext ]
                  lappend $listvarname $filename
               }
               break
            }
         }

         #if { ![string match -nocase "*.mdl" $filename] } {
         #   if { [string match -nocase "*.ucf" $filename] } {
         #      lappend ucffiles $filename
         #   } elseif { [string match -nocase "*.xdc" $filename] } {
         #      lappend xdcfiles $filename
         #   } elseif { [string match -nocase "*.mif" $filename] } {
         #      lappend miffiles $filename
         #   } elseif { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename]} {
         #      if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} $origrootname ] } {
         #         lappend tbfiles $filename
         #      } else {
         #         lappend filen $filename
         #      }
         #   }
         #}

         #if { [llength $filen] > 0} {
         #   dsp_bxml_add_file_list $fp $filen
         #}
      }

      foreach curext $projfilesexts {
         set listvarname [ dsp_get_list_var_name $curext ]
         if { [ info exists $listvarname ] } {
            set handlername [ dsp_get_bxml_add_project_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $fp $listvarname
            }
         }
      }

      #::set_property strategy poweroptimization [ get_runs synth_1 ]
      #set verilogSources [ glob $srcDir/FifoBuffer.v $srcDir/async_fifo.v $srcDir/rtlRam.v $srcDir/$projName/*.v ]
      #import_files -fileset [ get_filesets sources_1 ] -force -norecurse $verilogSources

      #if { [llength $ucffiles] > 0 } {
      #   if { [ dsp_is_running_planAhead ] } {
      #      dsp_bxml_add_file_list $fp $ucffiles
      #      dsp_bxml_copy_ucf_add_ncf $fp $ucffiles
      #   }
      #}

      #if { [llength $xdcfiles] > 0 } {
      #   if { [ dsp_is_running_vivado ] } {
      #      dsp_bxml_add_file_list $fp $xdcfiles
      #   }
      #}

      set synthesistooltype [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      if {[string equal -nocase ${synthesistooltype} "RDS"]
         || [string equal -nocase ${synthesistooltype} "Vivado"] } {

         #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         #set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
         #set ipdir ${paramvalueProjectDir}/${paramvalueProject}.srcs/sources_1/ip
         set ipdir [ dsp_get_scoped_ip_dir_full_path ]
         if { ![ file exists $ipdir ] } {
            file mkdir $ipdir
         }
         set coeSources [ glob -nocomplain $filedir/*.coe ]
         foreach coefile $coeSources {
            file copy -force $coefile $ipdir
            dsp_bxml_add_file $fp $coefile
         }

         set callbackname "sgpaintcallback.tcl"
         if { [file exists $callbackname ] } {
             file delete -force $callbackname
         }
         #set fpcallback [open $callbackname w]
         #puts $fpcallback {set_property source_mgmt_mode DisplayOnly [current_project]}
         #close $fpcallback
 
         # Added for SgVivadoCore.tcl file for callback from Vivado project
         #set CoreConfigTclFile "$projDir/../sysgen/SgVivadoCore.tcl"
         set CoreConfigTclFile "${filedir}/SgVivadoCore.tcl"
         set CoreConfigTclFile [file normalize ${CoreConfigTclFile}]
         if { [file exists ${CoreConfigTclFile}] } {
            #set fpcallback [open $callbackname w]
            #puts $fpcallback "source {${CoreConfigTclFile}}"
            #close $fpcallback
         }

         #puts $fpcallback {set slistofexistingips [get_ips]}

         #set xcoIpNames [ dsp_get_file_name_list $filedir {.xco} 1 ]
         #set xcoSources [ glob $projDir/../sysgen/*.xco ]
         #set xcoSources [ glob -nocomplain $filedir/*.xco ]
         #foreach xcofile $xcoSources {
             #set xcofile [file normalize $xcofile]
             #set dirnames [split $xcofile /]
             #set xcofilename [lindex $dirnames end]
             #if { [dsp_is_good_string $xcofilename] } {
                 #set ipnames [split $xcofilename .]
                 #set ipname [lindex $ipnames end-1]
 
                 #puts -nonewline $fpcallback "if { "
                 #puts -nonewline $fpcallback {[lsearch $slistofexistingips }
                 #puts -nonewline $fpcallback "$ipname"
                 #puts -nonewline $fpcallback {] < 0 }
                 #puts $fpcallback "} {"
                 #puts $fpcallback "import_ip -file $xcofile -name  $ipname"
                 #puts $fpcallback "}"
 
                 #::import_ip -file $xcofile -name  $ipname
                 #dsp_bxml_add_file $fp $xcofilename
                 #set xcoIpNames "$xcoIpNames $ipname"
             #}
         #}

         #close $fpcallback

         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} 0 $listvarname]
         } else {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} ]
         }

         if { [llength $ngcfiles] > 0} {
            dsp_bxml_add_file_list $fp $ngcfiles
         }
      } else {
         set fileext ".ngc"
         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            dsp_bxml_add_file_ext $fp $filedir $fileext $listvarname
         } else {
            dsp_bxml_add_file_ext $fp $filedir $fileext
         }
     }
 
     set fileextlist [list]
     lappend fileextlist ".edn"
     lappend fileextlist ".edf"
     lappend fileextlist ".ndf"

     foreach fileext $fileextlist {
        dsp_bxml_add_file_ext $fp $filedir $fileext
     }

     if { [ dsp_has_testbench ] } {
        #set tbfiles [dsp_get_list_var_value "testbench"]
        set listvarname [ dsp_get_list_var_name "testbench" ]
        if { [info exists $listvarname] } {
           set tbfiles [set $listvarname] 
        } else {
           set tbfiles ""
        }
        if { [llength $tbfiles] > 0 } {
           #dsp_bxml_add_file_list $fp $tbfiles
           set manualsimfiles [ dsp_merge_lists $manualsimfiles $tbfiles ]
        }
 
        #set miffiles [dsp_get_list_var_value "mif"]
        #set listvarname [ dsp_get_list_var_name "mif" ]
        #if { [info exists $listvarname] } {
        #   set miffiles [set $listvarname] 
        #} else {
        #   set miffiles ""
        #}
        #if { [llength $miffiles] > 0 } {
        #   dsp_bxml_add_file_list $fp $miffiles
        #   set manualsimfiles [ dsp_merge_lists $manualsimfiles $miffiles ]
        #}
 
        #set datpath "$projDir/../sysgen"
        #set datpath [file normalize $datpath ]
        #set datfiles [ dsp_get_file_name_list $datpath {.dat} ]
        #set addedfiles [ dsp_get_file_name_list $datpath {.dat} 1 ]

        #set datpath "$projDir/.."
        #set datpath [file normalize $datpath ]
        #set datfilesMore [ dsp_get_file_name_list $datpath {.dat} ]

        #foreach datfn $datfilesMore {
        #   set corename [ dsp_get_file_core_name $datfn ]
        #   if { [ lsearch $addedfiles $corename ] < 0 } {
        #      lappend  datfiles $datfn
        #   }
        #}

        set datapath [ dsp_get_sysgen_project_file_search_path_list ]
        set datfiles [ dsp_get_file_name_list_from_pathlist $datapath {.dat} ]

        if { [llength $datfiles] > 0 } {
           #dsp_bxml_add_file_list $fp $datfiles
           set manualsimfiles [ dsp_merge_lists $manualsimfiles $datfiles ]
        }

        if { [llength $manualsimfiles] > 0 } {
           dsp_write_manualsimfile_list $manualsimfiles
        } else {
           set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
           set filename ${subname}.simset
           set tmpfilename "./sysgen/$filename"
           set tmpfilename [file normalize $tmpfilename ]

           if { [ file exists $tmpfilename ] == 1 } {
              file delete $tmpfilename
           }
        }
     }
   }

   #-------------------------------------------------------------------------
   # Creates bxml for SysGen sub module in a PA project
   #-------------------------------------------------------------------------
   proc dsp_write_bxml_file {} {
      set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
      set filename ${subname}.bxml
      set bxmlfilename "./$filename"
      set bxmlfilename [file normalize $bxmlfilename ]
      set fp [open $bxmlfilename w]
      set smachinetimestamp [clock seconds]
      puts $fp {<Root MajorVersion="0" MinorVersion="18" xmlns="" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="Compositefile.xsd">}
      set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
      set devicenamevalue [ dsp_get_devicename ]
      puts $fp "<CompositeFile CompositeFileTopName=\"${paramvalueTopLevelModule}\" CanBeSetAsTop=\"false\" CanDisplayChildGraph=\"true\" Part=\"${devicenamevalue}\">"
      puts $fp {<Description>A description of the composite file</Description>}

      puts -nonewline $fp {<Generation Name="SYNTHESIS" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts -nonewline $fp {<Generation Name="IMPLEMENTATION" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts -nonewline $fp {<Generation Name="SIMULATION" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts $fp {<FileCollection Name="SOURCES" Type="SOURCES">
<Description>A description for this file collection</Description>}

      dsp_bxml_add_files $fp

      puts $fp {</FileCollection>
</CompositeFile>
</Root>}
      close $fp
   }

   #-------------------------------------------------------------------------
   # Creates a SysGen sub module for existing PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_sysgen_submodule {} {
      dsp_write_bxml_file
    }

   #-------------------------------------------------------------------------
   # Creates a new PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_planahead_project {} {
      dsp_start_project_creation
      dsp_set_synthesis_settings
      dsp_set_implementation_settings
      dsp_set_simulation_settings
      dsp_set_target_language_settings
      dsp_add_project_files

      if { [ dsp_is_bitstream_compilation ] } {
         dsp_generate_planahead_bitstream
      }  

      dsp_finish_project_creation
   }

   #-------------------------------------------------------------------------
   # check bitstream file.
   #-------------------------------------------------------------------------
   proc dsp_check_bitstream_file {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
 
      set bitfile ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/${paramvalueProject}.bit 
      if { ! [ file exists $bitfile ] } {
         set bitgenerrmsg "failed to generate bitstream file $bitfile.\n"
         #error "ERROR: $bitgenerrmsg"
         puts "ERROR: $bitgenerrmsg"
         exit 1
      }
   }

   #-------------------------------------------------------------------------
   # Compiles an PlanAhead project into a bitstream.
   #-------------------------------------------------------------------------
   proc dsp_generate_planahead_bitstream {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
       
      ::reset_run synth_1
      ::reset_run impl_1

      #::set_param logicopt.enableMandatoryLopt no

      ::launch_runs synth_1
      ::wait_on_run synth_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/synth_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      #::set_property add_step Bitgen [get_runs impl_1] 

      ::launch_runs impl_1 -to_step bitgen
      ::wait_on_run impl_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      dsp_check_bitstream_file
   }

   #-------------------------------------------------------------------------
   # Do smoket test for an PlanAhead project
   #-------------------------------------------------------------------------
   proc dsptest_compile_planahead_project {} {
      set status [dsp_handle_exception {
         dsp_process_parameters
         dsp_dump_parameters
      } "ERROR: An error occurred when processing project parameters."]
      if {!$status} { return }

      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]

      ::set_param logicopt.enableMandatoryLopt no
      #::set_param simulation.disableSDFAnnotation 1

      set ext {.xpr}
      if { [ dsp_is_running_vivado ]} {
         set ext {.xpr}
      } else {
         set ext {.ppr}
      }
      ::open_project ${paramvalueProjDir}/${paramvalueProject}${ext}

      if { [ dsp_is_bitstream_compilation ] } {
         ::open_rtl_design -name rtl_1
         ::open_impl_design
         ::close_project
         dsp_check_bitstream_file
         return;
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      set has_simtime [info exists ${driverns}::SimulationTime]
      if {$has_simtime && [ dsp_is_running_planAhead ]} {
         set isimcmdfn [file normalize "xt_isim.cmd"]
         set isimcmd [open $isimcmdfn w]
         puts $isimcmd {onerror {resume}}
         set paramvalueSimulationTime [ dsp_get_param_value_in_driver_tcl_namespace SimulationTime ]
         puts $isimcmd "run ${paramvalueSimulationTime}"
         puts $isimcmd "quit -f"
         set_property isim.cmdfile $isimcmdfn [get_filesets sim_1]
         close $isimcmd
      }

      set ips [::get_ips -quiet]
      set nips [llength $ips]
      if { $nips > 0 } {
         ::reset_ip -ips [::get_ips]
         ::generate_ip -ips [::get_ips]
      }

      ::reset_run synth_1
      ::reset_run impl_1

      ::open_rtl_design -name rtl_1

      if { [ dsp_has_testbench ] } {
         if { [dsptest_launch_sim behavioral] == 0 } {
            ::close_project
            return
         }
      }

      ::launch_runs synth_1
      ::wait_on_run synth_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/synth_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      #dsptest_run_post_synth_sim

      #set simtype "post-synth"
      #set isimerrmsg [ dsptest_wait_on_isim $isimlog $simtype 1 ]
      #if { [string length $isimerrmsg] > 0 } {
      #    return
      #}

      #::close_project
      #error "post_synth is done"

      #dsptest_clean_up_post_synth_sim

      set testerns [ dsp_get_tester_tcl_namespace_qualifiers ]
      if { [info exists ${testerns}::is_doing_planAheadGenPostSynthTest] } {
         ::close_project
         return
      }

      #::set_property add_step Bitgen [get_runs impl_1]
      ::launch_runs impl_1
      ::wait_on_run impl_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      ::open_impl_design

      if { [ dsp_has_testbench ] } {
         if { [dsptest_launch_sim timing] == 0 } {
            ::close_project
            return
           }
      }

      ::close_project
   }

   #-------------------------------------------------------------------------
   # Entry point for creating a new PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_project {} {
      set status [dsp_handle_exception {
         dsp_process_parameters
         dsp_dump_parameters
      } "ERROR: An error occurred when processing project parameters."]
      if {!$status} { return }

      set sysgensubns [ dsp_get_sysgensubmodule_tcl_namespace_qualifiers ]
      if { [info exists ${sysgensubns}::is_generating_sysgensubmodule] } {
         set status [dsp_handle_exception {
            dsp_create_sysgen_submodule
         } "ERROR: An error occurred when creating the PlanAhead project."]
         if {!$status} { return }
      } else {
         set status [dsp_handle_exception {
            dsp_create_planahead_project
         } "ERROR: An error occurred when creating the PlanAhead project."]
         if {!$status} { return }
      }
   }

   #-------------------------------------------------------
   # Check is the flow is Vivado or PlanAhead. Returns
   # 1 for vivado
   #-------------------------------------------------------
   proc dsp_isLinuxOS {} {
      set isLinux 0
      package require platform
      set osType [platform::generic]
      if { [string equal -nocase -length 5 $osType "linux"] == 1 } {
         set isLinux 1
      }
      return $isLinux
   }

   #-------------------------------------------------------
   # Launch the simulator based on the right context with options
   # passed as arguments 
   #-------------------------------------------------------
   proc dsptest_launch_sim { mode } {
      set simlog [dsptest_sim_log_file]
      if {[ dsp_is_running_vivado ]} {
         if { [ string match $mode timing ] } {
            ::launch_xsim -mode [dsptest_translate_sim_mode $mode] -type [dsptest_get_sim_type $mode] -simset sim_1 
     } else {
            ::launch_xsim -mode [dsptest_translate_sim_mode $mode] -simset sim_1 
     }
         # use this check until close_sim works correctly on Windows also
         if { [dsp_isLinuxOS] } {
            ::close_sim
         }
      } else {
         ::launch_isim -batch -mode $mode -simset sim_1
         set simlog [dsptest_sim_log_file]
         set isimerrmsg [ dsptest_wait_on_isim $simlog $mode 1 ]
         if { [string length $isimerrmsg] > 0 } {
            return 0
         }
      }
      return 1
   }

   #--------------------------------------------------------
   # Return the simulation mode by mapping isim simulation mode
   # with xsim
   # -------------------------------------------------------
   proc dsptest_translate_sim_mode { mode } {
      switch -exact $mode {
         "timing"
         {return "post-implementation"}
         default
         {return $mode}
      }
   }

   #--------------------------------------------------------
   # Return the simulation type
   # with xsim
   # when we say 'timing', what we really want is 'functional'
   # -------------------------------------------------------
   proc dsptest_get_sim_type { mode } {
      switch -exact $mode {
         "timing"
         {return "functional"}
         default
         {return ""}
      }
   }

   #-------------------------------------------------------
   # Return path to the simulation log file to parse for errors
   # Used only by PlanAhead as in Vivado the error appears in
   # the vivad.log file 
   #-------------------------------------------------------
   proc dsptest_sim_log_file {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      if {[ dsp_is_running_vivado ]} {
         return ${paramvalueProjDir}/${paramvalueProject}.sim/sim_1/isim.log
      } else {
         return ${paramvalueProjDir}/${paramvalueProject}.sim/sim_1/isim.log
      }
   }
  
  #-------------------------------------------------------
  # Here are some file processing libraries that used in dsp_ip_packager.
  # There file processing libraries are very important.
  # You can use these functions to find files with patterns, 
  # read in file, write data to file, replace certain string with file. 
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # Return file list of full path names under base director with pattern
  # basedir - the directory to start looking in 
  # pattern - A pattern, as defined by the glob command, that the files must match 
  #-------------------------------------------------------
    proc dsp_find_files_with_pattern { basedir pattern } {  
       set basedir [string trimright [file join [file normalize $basedir] { }]]
       set fileList {}
       foreach fileName [glob -nocomplain -type {f r} -path $basedir $pattern] {
          lappend fileList $fileName
       }
       foreach dirName [glob -nocomplain -type {d  r} -path $basedir *] {
          set subDirList [dsp_find_files_with_pattern $dirName $pattern]
          if { [llength $subDirList] > 0 } {
             foreach subDirFile $subDirList {
                lappend fileList $subDirFile
             }
         }
      }
      return $fileList
 }
  #-------------------------------------------------------
  # Read file to memory
  # filename: the full path file 
  # return data from filename
  #-------------------------------------------------------
    proc dsp_read_file {filename} { 
       set fd [open $filename]
       set data [read $fd]
       close $fd
       return $data
    }     
  #-------------------------------------------------------
  # Write file with data
  # filename: the full path file 
  # data: data need to write to file
  #-------------------------------------------------------
    proc dsp_write_file {filename data} { 
       set fd [open $filename w]
       puts -nonewline $fd $data
       close $fd
    } 
  
  #-------------------------------------------------------
  # replace data in file 
  # filename: the full path file 
  # pattern: pattern for replace
  # replacement: new string used to replace stirng
  #-------------------------------------------------------
    proc dsp_replace_in_file {filename pattern replacement} { 
       set cont [dsp_read_file $filename]
       regsub -all $pattern $cont $replacement result
       dsp_write_file $filename $result
    } 
  #-------------------------------------------------------
  # Copy file to specified location
  # baseDir: base directory, from which to copy files
  # destDir: Destination Directory
  # patterns: pattern list. for example, set a {"*.v"} or set a {"*.v" "*.hdl" "*.ngc"}, using space to seperate
  #-------------------------------------------------------
   proc dsp_ip_packager_copy_files {baseDir destDir patterns} {  
       file mkdir $destDir
       foreach pattern $patterns {
          set ipFiles [dsp_find_files_with_pattern $baseDir $pattern]
          foreach absFile $ipFiles {
           if { [dsp_isLinuxOS] } {
			file copy -force $absFile $destDir
			
           } else {
			if { [string length $absFile] <256 } {
				file copy -force $absFile $destDir
		   	   } else {

			error "ERROR:file path too long, please reduce the path length: $absFile" 

		        }
           }
		
          }
      }
  }
 
  #-------------------------------------------------------
  # Here are some element functions for dsp_ip_packager.
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # Return the IP Packager file location
  #-------------------------------------------------------
    proc dsp_ip_packager_get_location { } {
       return "ip_packager"
    }
  #-------------------------------------------------------
  # Return the top level module name
  #-------------------------------------------------------
    proc dsp_ip_packager_get_top_name { } {
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       return [dsp_required_parameter ${driverns}::TopLevelModule]
    }
  #-------------------------------------------------------
  # Return vendor value
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_vendor {} {
       set text [dsp_get_param_value_in_driver_tcl_namespace IP_Vendor_Text]
       set replace [string map {" " "_"} $text]
       return $replace
    }
  #-------------------------------------------------------
  # Return library value
  #-------------------------------------------------------
    proc dsp_ip_packager_get_library {} {
       set lib [dsp_get_param_value_in_driver_tcl_namespace IP_Library_Text]
       set replace [string map {" " "_"} $lib]
       return $replace
    }
  #-------------------------------------------------------
  # Return Version number
  #-------------------------------------------------------
    proc dsp_ip_packager_get_version {} {
       set version [dsp_get_param_value_in_driver_tcl_namespace IP_Version_Text]
       set result [split $version "."]
       if { [llength $result] < 2 } {
          set ver [format "%s.0" $version]
          return $ver
       } else {
          return $version
       }
    }
  #-------------------------------------------------------
  # Return taxonomy
  #-------------------------------------------------------
    proc dsp_ip_packager_get_taxonomy {} {
       set taxonomy [dsp_get_param_value_in_driver_tcl_namespace IP_Categories_Text]
       set replace [string map {" " "_"} $taxonomy]
       set final [format "{/%s}" $replace]
       return $final
    }
    
  #-------------------------------------------------------
  # Return ip dir
  #-------------------------------------------------------
    proc dsp_ip_packager_get_common_Repos_flag {} {
       return [dsp_get_param_value_in_driver_tcl_namespace IP_Common_Repos]
    }
    proc dsp_ip_packager_get_common_Repos {} {
       set repos [dsp_get_param_value_in_driver_tcl_namespace IP_Dir]
       return $repos
    }
  #-------------------------------------------------------
  # get the status of this IP
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_life_cycle {} {
       set cycle [dsp_get_param_value_in_driver_tcl_namespace IP_LifeCycle_Menu]
       if {$cycle == "1"} {
          return {Production}
       }
       if {$cycle == "2"} {
          return {Beta}
       }
       if {$cycle == "3"} {
          return "Pre-Production"
       }
    }
  #-------------------------------------------------------
  # get the descriptions for the ip
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_description {} {
       set text [dsp_get_param_value_in_driver_tcl_namespace IP_Description]
       set descrip [format " This IP was generated from System Generator. All changes must be made in SysGen model. %s " $text]
       return $descrip
    }
  #-------------------------------------------------------
  # Set the default values for ip packager process
  #-------------------------------------------------------
    proc dsp_ip_packager_set_default_value { } {  
       set currentCore [ipx::current_core]
       set_property vendor [dsp_ip_packager_get_vendor] $currentCore
       set_property library [dsp_ip_packager_get_library] $currentCore
       set_property name [dsp_ip_packager_get_top_name] $currentCore
       set_property version [dsp_ip_packager_get_version] $currentCore
       set_property display_name [dsp_ip_packager_get_top_name] $currentCore
       set_property description [dsp_ip_packager_get_description] $currentCore
       set_property company_url {} $currentCore
       set_property taxonomy [dsp_ip_packager_get_taxonomy] $currentCore
    } 
  #-------------------------------------------------------
  # Set support family for ip packager process
  #-------------------------------------------------------
    proc dsp_ip_packager_set_support_family { } { 
        #set the support family
       set currentCore [ipx::current_core]
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       set tmplist [list]
       lappend tmplist [dsp_required_parameter ${driverns}::DSPFamily]
       lappend tmplist [dsp_ip_packager_get_life_cycle]
       set_property supported_families $tmplist $currentCore
    }
 
  #-------------------------------------------------------
  #Set the payment property for IP
  #required: true or false. If true, it requires payment, else no payment needs
  # 
  #-------------------------------------------------------
    proc dsp_ip_packager_set_payment {required} { 
       set currentCore [ipx::current_core]
       set_property payment_required $required $currentCore
       #set_property supports_coregen {false} $currentCore
    } 

  #-------------------------------------------------------
  #Set the license property for IP
  #license: license key
  #descrip: description for the license key
  #-------------------------------------------------------
    proc dsp_ip_packager_set_license {license descrip} { 
       set currentCore [ipx::current_core]
       ipx::add_license_key $license $currentCore
       set_property description $descrip [ipx::get_license_key $license $currentCore]
    } 
  #-------------------------------------------------------
  # Get IP path based on filled property 
  #-------------------------------------------------------
    proc dsp_ip_packager_get_full_path {} {  
       set currentCore [ipx::current_core]
       dsp_ip_packager_set_default_value
       dsp_ip_packager_set_support_family
       set root [get_property root_directory $currentCore]
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set folder [dsp_ip_packager_get_location]
       set verlist [split $ver {.}]
       set verstr ""
       foreach verpart $verlist {
          if { [string length $verstr] < 1 } {
             set verstr $verpart
          } else {
             set verstr [format "%s_%s" $verstr $verpart]
          }
       }
       set ipname [format "%s/%s/%s_%s_%s_v%s" $root $folder $ven $lib $nam $verstr]
       return $ipname
    } 
  #-------------------------------------------------------
  # Get IP name based on filled property 
  #-------------------------------------------------------
    proc dsp_ip_packager_get_ip_name {} {  
       set currentCore [ipx::current_core]
       dsp_ip_packager_set_default_value
       dsp_ip_packager_set_support_family
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set verlist [split $ver {.}]
       set verstr ""
       foreach verpart $verlist {
          if { [string length $verstr] < 1 } {
             set verstr $verpart
          } else {
             set verstr [format "%s_%s" $verstr $verpart]
          }
       }
       set ipname [format "%s_%s_%s_v%s" $ven $lib $nam $verstr ]
       return $ipname
    } 
  #-------------------------------------------------------
  # Here are some functions that actually doing dsp_ip_packager.
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # add files to file group
  # dir: directory to find files
  # pattern: pattern file format
  #-------------------------------------------------------
   proc dsp_ip_packager_add_files_to_group {dir group patterns libname} {  
      set root [get_property root_directory [ipx::current_core]]
      set folder [dsp_ip_packager_get_location]
      set ippath [format "%s/" [dsp_ip_packager_get_full_path]]
      set nam [dsp_ip_packager_get_top_name]
      foreach pattern $patterns {
         set ipFiles [dsp_find_files_with_pattern $dir $pattern]
         foreach absFile $ipFiles {
            set file [string range $absFile [string length $ippath] [string length $absFile]]
            ipx::add_file $file $group
            set_property library_name $libname [ipx::get_file $file $group]
         }
      }
  }

  #-------------------------------------------------------
  # Add sub IPs using subcore reference. Will deprecate soon
  #-------------------------------------------------------
   proc dsp_ip_packager_add_sub_ips {} { 
        set currentCore [ipx::current_core]
        set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore] 
        set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set ippath [dsp_ip_packager_get_full_path]
        set folder [dsp_ip_packager_get_location]
        set ips [get_ips]
        
        if {[llength $ips] > 0 } {
            generate_target {simulation Synthesis} $ips
            #special handler for only one IP situation, as if the result is only one ip, it returns string, not list.
            if {[llength $ips] == 1} {
                set ips [list $ips]
            }
            
            foreach ipName $ips {
                set ipPath [get_property IP_DIR $ipName]
                set vlnv [get_property IPDEF $ipName]
                set result [split $vlnv ":"]
                if { [llength $result] != 4} {
                    error "ERROR: Bad VLNV value for IP: $ips\n V:Vendor, L: Library, N: Name, V: Version " 
                }
                set vendor [lindex $result 0] 
                set library [lindex $result 1]
                set name [lindex $result 2] 
                set version [lindex $result 3] 
                # Add subcore reference to Synthesis 
                set baseDir [format "%s/synth" $ipPath]
                set destDirSynth [format "%s/ips/%s/synth" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSynth {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}
                ipx::add_component_subcore_ref $vendor $library $name $version $synth
                dsp_ip_packager_add_files_to_group $destDirSynth $synth {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"} {work}
                # Add subcore reference to Simulation    
                set baseDir [format "%s/sim" $ipPath]
                set destDirSim [format "%s/ips/%s/sim" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSim {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}
                ipx::add_component_subcore_ref $vendor $library $name $version $sim
                dsp_ip_packager_add_files_to_group $destDirSim $sim {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}  {work}

                # Add COE file into synthesis and simulation
                set baseDir [format "%s/%s/%s.srcs/sources_1/ip/" $root $folder $nam]
                set destDir [format "%s/ips" $ippath]
                dsp_ip_packager_copy_files $baseDir $destDir {"*.coe"}
                dsp_ip_packager_add_files_to_group $destDir $synth {"*.coe"} {work}
                dsp_ip_packager_add_files_to_group $destDir $sim {"*.coe"}  {work}
            }    
            
        }
    }
  #-------------------------------------------------------
  # Add sub IPs
  # Package "XCI" and "XCO" files into IP
  #-------------------------------------------------------
    proc dsp_ip_packager_add_sub_core {} { 
        set currentCore [ipx::current_core]
        set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore] 
        set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set folder [dsp_ip_packager_get_location]
        set ippath [dsp_ip_packager_get_full_path]
        set ips [get_ips]
        
        if {[llength $ips] > 0 } {
            #generate_target {simulation Synthesis} $ips
            #special handler for only one IP situation, as if the result is only one ip, it returns string, not list.
            if {[llength $ips] == 1} {
                set ips [list $ips]
            }
            
            foreach ipName $ips {
                set srcPath [get_property IP_DIR $ipName]
                # Add subcore reference to Synthesis 
                set baseDir [format "%s" $srcPath]
                set destDirSynth [format "%s/ips/%s/synth" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSynth {"*.xci" "*.xco"}
                dsp_ip_packager_add_files_to_group $destDirSynth $synth {"*.xci" "*.xco"} {work}
                # Add subcore reference to Simulation    
                set baseDir [format "%s" $srcPath]
                set destDirSim [format "%s/ips/%s/sim" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSim {"*.xci" "*.xco"}
                dsp_ip_packager_add_files_to_group $destDirSim $sim {"*.xci" "*.xco"}  {work}
            }    
            
        }
    }
  #-------------------------------------------------------
  #Check whether the packaged IP contains sub IPs
  # if there is sub IPs,generate files then add all the files 
  #-------------------------------------------------------
    proc dsp_ip_packager_add_files {} {
        set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
        set currentCore [ipx::current_core]
     # remove all the file groups that automatical generated by ip packager
        ipx::remove_file_group {xilinx_verilogsynthesis} $currentCore
        ipx::remove_file_group {xilinx_verilogbehavioralsimulation} $currentCore
        ipx::remove_file_group {xilinx_verilogtestbench} $currentCore
        ipx::remove_file_group {xilinx_vhdlsynthesis} $currentCore
        ipx::remove_file_group {xilinx_vhdlbehavioralsimulation} $currentCore
        ipx::remove_file_group {xilinx_vhdltestbench} $currentCore
        ipx::remove_file_group {xilinx_implementation} $currentCore
        
     # create file group for adding files.
        ipx::add_file_group -type {synthesis} {} $currentCore 
        ipx::add_file_group -type {simulation} {} $currentCore    
        set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore]
        set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
        set_property model_name [dsp_ip_packager_get_top_name] $synth
        set_property model_name [dsp_ip_packager_get_top_name] $sim 
        set ippath [dsp_ip_packager_get_full_path]        
        set folder [dsp_ip_packager_get_location]
        
      # handling sub ips before copying all source files.
        dsp_ip_packager_add_sub_ips
        
      #copy and add files.
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set baseDir [format "%s/%s/%s.srcs/sources_1/imports/sysgen/" $root $folder $nam]
        set destDir [format "%s/src/" $ippath]
        dsp_ip_packager_copy_files $baseDir $destDir {"*.ngc" "*.v" "*.vhd"}
        dsp_ip_packager_add_files_to_group $destDir $synth {"*.ngc" "*.v" "*.vhd"}  {work}
        dsp_ip_packager_add_files_to_group $destDir $sim {"*.ngc" "*.v" "*.vhd"} {work}
        
        set baseDir [format "%s/%s/%s.srcs/constrs_1/imports/sysgen/" $root $folder $nam]
        set destDir [format "%s/constrain/" $ippath]
        dsp_ip_packager_copy_files $baseDir $destDir {"*.xdc"}
        dsp_ip_packager_add_files_to_group $destDir $synth {"*.xdc"} {work}
        dsp_ip_packager_add_files_to_group $destDir $sim {"*.xdc"} {work}

        if { [ dsp_has_testbench ] }    {
            ipx::add_file_group -type {testbench} {} $currentCore
            set test [ipx::get_file_group xilinx_testbench $currentCore]
            set_property model_name [dsp_ip_packager_get_top_name] $test
            set baseDir [format "%s/%s/%s.srcs/sim_1/imports/sysgen/" $root $folder $nam]
            set destDir [format "%s/testbench/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.v" "*.vhd"}
            dsp_ip_packager_add_files_to_group $destDir $test {"*.v" "*.vhd"} {work}
        
            set baseDir [format "%s/%s/%s.srcs/sim_1/imports/" $root $folder $nam]
            set destDir [format "%s/testbench/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.dat"}
            dsp_ip_packager_add_files_to_group $destDir $test {"*.dat"} {work}
        }
        ipx::add_file_group -type {utility} {} $currentCore
        set utility [ipx::get_file_group xilinx_utilityxitfiles $currentCore]
        if { [ dsp_has_create_interface_document ] }    {
            ipx::add_file_group -type {version_info} {} $currentCore
            set versionInfo [ipx::get_file_group xilinx_versioninformation $currentCore]
            set baseDir [format "%s/documentation/" $root]
            set destDir [format "%s/version_info/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.htm"}
            dsp_ip_packager_add_files_to_group $destDir $versionInfo {"*.htm"} {work}
        
            set baseDir [format "%s/documentation/images/" $root]
            set destDir [format "%s/version_info/images/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.jpg" "*.gif" "*.bmp" "*.png"}
            dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
        }
        
        if { [ dsp_has_create_interface_document ] }    {
            ipx::add_file_group -type {datasheet} {} $currentCore
            set datasheet [ipx::get_file_group xilinx_datasheet $currentCore]
            set baseDir [format "%s/documentation/" $root]
            set destDir [format "%s/datasheet/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.htm"}
            dsp_ip_packager_add_files_to_group $destDir $datasheet {"*.htm"} {work}
        
            set baseDir [format "%s/documentation/images/" $root]
            set destDir [format "%s/datasheet/images/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.jpg" "*.gif" "*.bmp" "*.png"}
            dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
        }
    } 
  #-------------------------------------------------------
  # Archive IP to a specified ip name
  # ipname: Path and name of the IP
  # 
  #-------------------------------------------------------
    proc dsp_ip_packager_package {ipname} { 
       set currentCore [ipx::current_core]
       set root [get_property root_directory $currentCore]
       set ippath [dsp_ip_packager_get_full_path]

       foreach {port_obj} [ipx::get_all_port [ipx::current_core]] {
			set myname [get_property name $port_obj]

			if {[string match "clk" $myname]} {
				set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
				set_property bus_type_vlnv {xilinx.com:common:clock_rtl:1.0} $current_bus_interface
				set_property abstraction_type_vlnv {xilinx.com:common:clock:1.0} $current_bus_interface
				set_property interface_mode {slave} $current_bus_interface
				set current_port_map [ipx::add_port_map $myname $current_bus_interface]
				set_property logical_name {CLK} $current_port_map
				set_property physical_name {clk} $current_port_map
			} elseif {[string match "ce" $myname]} {
				set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
				set_property bus_type_vlnv {xilinx.com:common:clockenable_rtl:1.0} $current_bus_interface
				set_property abstraction_type_vlnv {xilinx.com:common:clockenable:1.0} $current_bus_interface
				set_property interface_mode {slave} $current_bus_interface
				set current_port_map [ipx::add_port_map $myname $current_bus_interface]
				set_property logical_name {CE} $current_port_map
				set_property physical_name {ce} $current_port_map
			} else {
				set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
				set_property bus_type_vlnv {xilinx.com:common:data_rtl:1.0} $current_bus_interface
				set_property abstraction_type_vlnv {xilinx.com:common:data:1.0} $current_bus_interface
				#set_property interface_mode {slave} $current_bus_interface
				set current_port_map [ipx::add_port_map $myname $current_bus_interface]
				set_property logical_name {DATA} $current_port_map
				set_property physical_name $myname $current_port_map
			}
		
		}
		
      set_property root_directory [format "%s/"  $ippath] $currentCore
      ipx::create_xgui_files $currentCore
      ipx::save_core $currentCore
      ipx::check_integrity -quiet $currentCore
      set archive [format "%s.zip" $ipname]
      ipx::archive_core $archive $currentCore
    
      set_property root_directory $root $currentCore
      if {[dsp_ip_packager_get_common_Repos_flag]} {
         file copy -force $ipname [dsp_ip_packager_get_common_Repos]
      }
    } 
    
  #-------------------------------------------------------
  # Ip packager remove sources
  # remove the source file of project
  # 
  #-------------------------------------------------------
    proc dsp_ip_packager_remove_sources {} {
       set filelist [get_files -of_objects {sources_1} *.v]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       set filelist [get_files -of_objects {sources_1} *.vhd]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       set filelist [get_files -of_objects {sources_1} *.coe]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       #remove subips
       set ips [get_files -of_objects {sources_1} *.xci]
       if {[llength $ips ] > 0 } {
          remove_files -fileset sources_1 $ips
       }
        #update_compile_order -fileset sources_1
   }
  #-------------------------------------------------------
  #Update IP Catalog to recognize packaged ip files
  #-------------------------------------------------------
    proc dsp_update_ip_catalog {} {  
       set currentCore [ipx::current_core]
       set root [get_property root_directory $currentCore]
       if {[dsp_ip_packager_get_common_Repos_flag]} {
          set common [dsp_ip_packager_get_common_Repos]
          set name [dsp_ip_packager_get_ip_name]
          set ippath [format "%s/%s" $common $name]
       } else {
          set ippath [dsp_ip_packager_get_full_path]
       }
       set_property ip_repo_paths  [format "%s/" $ippath] [current_fileset]
       update_ip_catalog -rebuild
   }

  #-------------------------------------------------------
  # Add IP to project
  #-------------------------------------------------------
    proc dsp_ip_packager_add_ip {} {  
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       set currentCore [ipx::current_core]
       set root [get_property root_directory $currentCore]
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set vlnvs [format "%s:%s:%s:%s" $ven $lib $nam $ver]
       set instant [format "%s_0" [dsp_ip_packager_get_ip_name]]
       create_ip -vlnv $vlnvs -module_name $instant
       if { [ dsp_has_testbench ] }    {
          if { [dsp_hdllang_is_vhdl] } {
             set testbench [lindex [get_files -of_objects {sim_1} *_tb.vhd] 0]
             if { [string length $testbench] > 0} {
                set pattern [format "work.%s" [dsp_ip_packager_get_top_name]]
                set replace [format "work.%s" $instant]
                dsp_replace_in_file $testbench $pattern $replace
             }
          } else {
            set testbench [lindex [get_files -of_objects {sim_1} *_tb.v] 0]
            if { [string length $testbench] > 0} {
               set pattern [format " %s " [dsp_ip_packager_get_top_name]]
               set replace [format " %s " $instant]
               dsp_replace_in_file $testbench $pattern $replace
            }
        }
            
       set_property top $instant [current_fileset]
       update_compile_order -fileset sources_1
       generate_target {Simulation Synthesis instantiation_template} [get_ips]
            #launch_xsim -simset sim_1 -mode behavioral
     }
  }
	
  #-------------------------------------------------------
  # Use File handler procedure to handle IP Packager
  # Sub ips handled by XCI file handler
  #-------------------------------------------------------
    proc dsp_ip_packager_add_files_by_handler {} {
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       set currentCore [ipx::current_core]
     # remove all the file groups that automatical generated by ip packager
       ipx::remove_file_group {xilinx_verilogsynthesis} $currentCore
       ipx::remove_file_group {xilinx_verilogbehavioralsimulation} $currentCore
       ipx::remove_file_group {xilinx_verilogtestbench} $currentCore
       ipx::remove_file_group {xilinx_vhdlsynthesis} $currentCore
       ipx::remove_file_group {xilinx_vhdlbehavioralsimulation} $currentCore
       ipx::remove_file_group {xilinx_vhdltestbench} $currentCore
       ipx::remove_file_group {xilinx_implementation} $currentCore

     # create file group for adding files.
       ipx::add_file_group -type {synthesis} {} $currentCore
       ipx::add_file_group -type {simulation} {} $currentCore
       set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore]
       set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
       set_property model_name [dsp_ip_packager_get_top_name] $synth
       set_property model_name [dsp_ip_packager_get_top_name] $sim
       set ippath [dsp_ip_packager_get_full_path]
       set folder [dsp_ip_packager_get_location]

      #copy and add files.
       dsp_ip_packager_handle_files
       set destDir [format "%s/src/" $ippath]
       dsp_ip_packager_add_files_to_group $destDir $synth {"*.ngc" "*.v" "*.vhd"}  {work}
       dsp_ip_packager_add_files_to_group $destDir $sim {"*.ngc" "*.v" "*.vhd"} {work}
      #handle constrain files
       set destDir [format "%s/constrain/" $ippath]
       dsp_ip_packager_add_files_to_group $destDir $synth {"*.xdc"} {work}
       dsp_ip_packager_add_files_to_group $destDir $sim {"*.xdc"} {work}
       #create test bench
       if { [ dsp_has_testbench ] } {
         ipx::add_file_group -type {testbench} {} $currentCore
         set test [ipx::get_file_group xilinx_testbench $currentCore]
         set_property model_name [dsp_ip_packager_get_top_name] $test
           
         set destDir [format "%s/testbench/" $ippath]
         dsp_ip_packager_add_files_to_group $destDir $test {"*.v" "*.vhd" "*.dat"} {work}
        
       }

        if { [ dsp_has_create_interface_document ] }    {
         #put image files into utility file group
          ipx::add_file_group -type {utility} {} $currentCore
          set utility [ipx::get_file_group xilinx_utilityxitfiles $currentCore]
          ipx::add_file_group -type {version_info} {} $currentCore
          set versionInfo [ipx::get_file_group xilinx_versioninformation $currentCore]
          set destDir [format "%s/version_info/" $ippath]
          dsp_ip_packager_add_files_to_group $destDir $versionInfo {"*.htm"} {work}
          set destDir [format "%s/version_info/images/" $ippath]
          dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
			
          # add datasheet
          ipx::add_file_group -type {datasheet} {} $currentCore
          set datasheet [ipx::get_file_group xilinx_datasheet $currentCore]
          set destDir [format "%s/datasheet/" $ippath]
          dsp_ip_packager_add_files_to_group $destDir $datasheet {"*.htm"} {work}
          set destDir [format "%s/datasheet/images/" $ippath]
          dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
        }   
    }
	
   #-------------------------------------------------------
   # Get Sysgen location
   #-------------------------------------------------------
   proc dsp_ip_packager_sysgen_location {} {
     return "sysgen"
   }

   #-------------------------------------------------------
   # Get Documentation location
   #-------------------------------------------------------
   proc dsp_ip_packager_sysgen_documentation {} {
     return "documentation"
   }

   #-------------------------------------------------------
   # File handler start point
   # First provides a list of extension file types, go through each
   # file type of this list, and call corresponding file handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handle_files {} {
      set fileexts "xci xco coe v vhd ngc ucf xdc mif dat htm jpg bmp gif png"
      set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]

      foreach curext $fileexts {
        set handlername [ dsp_ip_packager_get_handler_name $curext ]
        set findproc [ info proc $handlername ]
        if { [ string length $findproc ] > 0  } {
           eval $handlername $curext
        } 
      }
    }

   #-------------------------------------------------------
   # Based on extension name to get the corresponding handler
   #-------------------------------------------------------
   proc dsp_ip_packager_get_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_ip_packager_handler_$extlower
   }

   #-------------------------------------------------------
   # verilog File handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handler_v { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/src/" $ippath]
     file mkdir $destDir
	
	  if { [ dsp_has_testbench ] }   {
       set testbench [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule]
       set testDir [format "%s/testbench/" $ippath]
       file mkdir $testDir
	  }
	  
     foreach p $projfiles {
       set origname [lindex $p 0]
       set filenameraw "$filedir/$origname"
		 set origrootname [ file rootname [lindex $p 0] ]
		 
       if { [ file exists $filenameraw ] && [string match -nocase "*.v" $origname] } {
         if { [ dsp_has_testbench ] && [ string equal $origrootname $testbench ] }  {
            set filename [file normalize $filenameraw]
            file copy -force $filename $testDir
         } else {
            set filename [file normalize $filenameraw]
            file copy -force $filename $destDir
         }
       }
     }
	}

   #-------------------------------------------------------
   # VHD File handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handler_vhd { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/src/" $ippath]
     file mkdir $destDir
	
	  if { [ dsp_has_testbench ] }   {
		set testbench [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule]
		set testDir [format "%s/testbench/" $ippath]
		file mkdir $testDir
	  }
	  
     foreach p $projfiles {
       set origname [lindex $p 0]
       set filenameraw "$filedir/$origname"
		 set origrootname [ file rootname [lindex $p 0] ]
		 
       if { [ file exists $filenameraw ] && [string match -nocase "*.vhd" $origname] } {
          if { [ dsp_has_testbench ] && [ string equal $origrootname $testbench ] }  {
              set filename [file normalize $filenameraw]
              file copy -force $filename $testDir
          } else {
              set filename [file normalize $filenameraw]
              file copy -force $filename $destDir
          }
        }
      }
	}

   #-------------------------------------------------------
   # NGC File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_ngc { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/src/" $ippath]
     file mkdir $destDir
	
     foreach p $projfiles {
        set origname [lindex $p 0]
        set filenameraw "$filedir/$origname"
        set origrootname [ file rootname [lindex $p 0] ]
		 
        if { [ file exists $filenameraw ] && [string match -nocase "*.ngc" $origname] } {
          set filename [file normalize $filenameraw]
          file copy -force $filename $destDir
        } 
      }
	}

   #-------------------------------------------------------
   # MIF File handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handler_mif { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/src/" $ippath]
     file mkdir $destDir
	
     foreach p $projfiles {
       set origname [lindex $p 0]
       set filenameraw "$filedir/$origname"
		 set origrootname [ file rootname [lindex $p 0] ]
		 
       if { [ file exists $filenameraw ] && [string match -nocase "*.mif" $origname] } {
			set filename [file normalize $filenameraw]
         file copy -force $filename $destDir
       }
			 
     }
	}

   #-------------------------------------------------------
   # UCF File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_ucf { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/src/" $ippath]
     file mkdir $destDir
	
     foreach p $projfiles {
       set origname [lindex $p 0]
       set filenameraw "$filedir/$origname"
		 set origrootname [ file rootname [lindex $p 0] ]
		 
       if { [ file exists $filenameraw ] && [string match -nocase "*.ucf" $origname] } {
			set filename [file normalize $filenameraw]
         file copy -force $filename $destDir
       }
			 
     }
	}

   #-------------------------------------------------------
   # XDC File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_xdc { filelist } {
     set filedir [dsp_ip_packager_sysgen_location]
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set destDir [format "%s/constrain/" $ippath]
     file mkdir $destDir
	
     foreach p $projfiles {
       set origname [lindex $p 0]
       set filenameraw "$filedir/$origname"
		 set origrootname [ file rootname [lindex $p 0] ]
		 
       if { [ file exists $filenameraw ] && [string match -nocase "*.xdc" $origname] } {
			set filename [file normalize $filenameraw]
         file copy -force $filename $destDir
       }
			 
      }
	}

   #-------------------------------------------------------
   # DAT File handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handler_dat { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
	
	  if { [ dsp_has_testbench ] }   {
		set testDir [format "%s/testbench/" $ippath]
		file mkdir $testDir
		dsp_ip_packager_copy_files "." $testDir {"*.dat"}
	  }
	  
	}


   #-------------------------------------------------------
   # HTM File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_htm { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set docfrom [dsp_ip_packager_sysgen_documentation]
	
	  if { [ dsp_has_create_interface_document ] }   {
       set docDir [format "%s/version_info" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.htm"}
       set docDir [format "%s/datasheet" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.htm"}
	  }
	  
	}

   #-------------------------------------------------------
   # JPG File handler
   #-------------------------------------------------------
   proc dsp_ip_packager_handler_jpg { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set docfrom [format "%s/images" [dsp_ip_packager_sysgen_documentation]]
	
	  if { [ dsp_has_create_interface_document ] }   {
       set docDir [format "%s/version_info/images" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.jpg"}
       set docDir [format "%s/datasheet/images" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.jpg"}
	  }
	  
	}

   #-------------------------------------------------------
   # GIF File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_gif { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set docfrom [format "%s/images" [dsp_ip_packager_sysgen_documentation]]
	
	  if { [ dsp_has_create_interface_document ] }   {
       set docDir [format "%s/version_info/images" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.gif"}
       set docDir [format "%s/datasheet/images" $ippath]
       file mkdir $docDir
       dsp_ip_packager_copy_files $docfrom $docDir {"*.gif"}
	  }
	  
	}

   #-------------------------------------------------------
   # BMP File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_bmp { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set docfrom [format "%s/images" [dsp_ip_packager_sysgen_documentation]]
	
	  if { [ dsp_has_create_interface_document ] }   {
        set docDir [format "%s/version_info/images" $ippath]
        file mkdir $docDir
        dsp_ip_packager_copy_files $docfrom $docDir {"*.bmp"}
        set docDir [format "%s/datasheet/images" $ippath]
        file mkdir $docDir
        dsp_ip_packager_copy_files $docfrom $docDir {"*.bmp"}
	  }
	  
	}

   #-------------------------------------------------------
   # PNG File handler
   #-------------------------------------------------------
	proc dsp_ip_packager_handler_png { filelist } {
     set currentCore [ipx::current_core]
     set projfiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     set ippath [dsp_ip_packager_get_full_path]
     set docfrom [format "%s/images" [dsp_ip_packager_sysgen_documentation]]
	
	  if { [ dsp_has_create_interface_document ] }   {
      set docDir [format "%s/version_info/images" $ippath]
		file mkdir $docDir
		dsp_ip_packager_copy_files $docfrom $docDir {"*.png"}
      set docDir [format "%s/datasheet/images" $ippath]
      file mkdir $docDir
      dsp_ip_packager_copy_files $docfrom $docDir {"*.png"}
	  }
	  
	}
   #-------------------------------------------------------
   # XCI File handler
   #-------------------------------------------------------
    proc dsp_ip_packager_handler_xci { filelist } {
        set currentCore [ipx::current_core]
      set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore]
      set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
      set root [get_property root_directory $currentCore]
      set nam [dsp_ip_packager_get_top_name]
      set folder [dsp_ip_packager_get_location]
      set ippath [dsp_ip_packager_get_full_path]
      set ips [get_ips]
        
      if {[llength $ips] > 0 } {
      #generate_target {simulation Synthesis} $ips
      #special handler for only one IP situation, as if the result is only one ip, it returns string, not list.
        if {[llength $ips] == 1} {
          set ips [list $ips]
        }
            
        foreach ipName $ips {
          set srcPath [get_property IP_DIR $ipName]
         # Add subcore reference to Synthesis
          set baseDir [format "%s" $srcPath]
          set destDirSynth [format "%s/ips/%s/synth" $ippath $ipName]
          dsp_ip_packager_copy_files $baseDir $destDirSynth {"*.xci"}
          dsp_ip_packager_add_files_to_group $destDirSynth $synth {"*.xci"} {work}
          # Add subcore reference to Simulation
          set baseDir [format "%s" $srcPath]
          set destDirSim [format "%s/ips/%s/sim" $ippath $ipName]
          dsp_ip_packager_copy_files $baseDir $destDirSim {"*.xci"}
          dsp_ip_packager_add_files_to_group $destDirSim $sim {"*.xci"}  {work}
        }
            
     }
	  
   }

proc dsp_ip_packager_handler_coe { filelist } {
      set currentCore [ipx::current_core]
      set synth [ipx::get_file_group xilinx_anylanguagesynthesis $currentCore]
      set sim [ipx::get_file_group xilinx_anylanguagebehavioralsimulation $currentCore]
      set root [get_property root_directory $currentCore]
      set nam [dsp_ip_packager_get_top_name]
      set folder [dsp_ip_packager_get_location]
      set ippath [dsp_ip_packager_get_full_path]
      set ips [get_ips]
      set baseDir [format "%s/%s/%s.srcs/sources_1/ip/" $root $folder $nam]
      set destDir [format "%s/ips" $ippath]
      if {[llength $ips] > 0 } {
        if {[llength $ips] == 1} {
            set ips [list $ips]
           }
        foreach ipName $ips {
              set filename [format "%s/%s_vivado.coe" $baseDir $ipName]
              set location "$destDir/$ipName"
              if { [ file exists $filename ] } {
                 file copy -force $filename $location
              }
        }
      # Add COE file into synthesis and simulation
      dsp_ip_packager_add_files_to_group $destDir $synth {"*.coe"} {work}
      dsp_ip_packager_add_files_to_group $destDir $sim {"*.coe"}  {work}


     }

}



  #-------------------------------------------------------
  # Ip packager script
  # If there is no IP in design, just package like like GUI performed 
  # If there are IPs in the design, it package the IP using XCI files.
  #-------------------------------------------------------
 proc dsp_package_for_vivado_ip_integrator {} {

    set projpath [ get_property DIRECTORY [current_project] ]
    set nam [dsp_ip_packager_get_top_name]
    puts $projpath
    set baseDir [format "%s/%s.srcs/sources_1/ip/" $projpath $nam]
    set filelist [dsp_find_files_with_pattern $baseDir "*.coe"]

    foreach absFile $filelist {
        import_files -force -norecurse $absFile
        #add_files -norecurse $absFile
        update_compile_order -fileset sources_1
        update_compile_order -fileset sim_1
    }

    update_compile_order -fileset sources_1
    update_compile_order -fileset sim_1
    puts "----------------------------start IP Packager------------------"
       puts ">>generate ips"
       ipx::package_project
       set currentCore [ipx::current_core]
       set ipname [dsp_ip_packager_get_ip_name]
       puts $ipname
       puts ">>set payment"
       dsp_ip_packager_set_payment false
       puts ">>check on testbench and document"
       dsp_ip_packager_testbench_and_document
       puts ">>package ip"
       dsp_ip_packager_package_core $ipname

       if { [ dsp_has_testbench ] } {
         puts ">>update IP Catelog"
         dsp_ip_packager_remove_sources
         dsp_update_ip_catalog_new
         dsp_ip_packager_add_ip_to_proj
       }
       puts "----------------------------end IP Packager------------------"
       puts "\n"
       puts "--------------Instructions on how to use this IP--------------"
       set text [format "1. Copy %s.zip to your project location." [dsp_ip_packager_get_ip_name]]
       puts $text
       puts "2. In your Vivado project,  click on \"IP Catalog\".  In the IP Catalog window, right click on any empty area, select \"Add IP...\"."
       puts "3. In the pop up dialog, select \"Add Repository Path...\" from \"Repository Path:\" and provide the path to your IP location. "
       puts "4. Find your IP File and provide to \"IP File:\", then click on OK."
       puts "5. Find the IP name from IP Catalog, double click to add to your project."
       puts "6. Under Design Sources of your project, you will find a new IP added in. Use that IP name in your code to finish your design."

 }

  #-------------------------------------------------------
  # Ip packager add files using relative path to file groups
  #
  #-------------------------------------------------------
 proc dsp_ip_packager_add_files_with_path_to_group {dir group patterns libname} {
      set root [get_property root_directory [ipx::current_core]]
      set folder [dsp_ip_packager_get_location]
      set nam [dsp_ip_packager_get_top_name]

      foreach pattern $patterns {
         set ipFiles [dsp_find_files_with_pattern $dir $pattern]
         foreach absFile $ipFiles {
            set file [string range $absFile [expr 1+[string length $root]] [string length $absFile]]
            ipx::add_file $file $group
            set_property library_name $libname [ipx::get_file $file $group]
         }
      }
  }

  #-------------------------------------------------------
  # Ip packager add testbench and documentation like datasheet and version info to IP
  #
  #-------------------------------------------------------
 proc dsp_ip_packager_testbench_and_document  { }  {

    set currentCore [ipx::current_core]
    set root [get_property root_directory $currentCore]
    set nam [dsp_ip_packager_get_top_name]
    set folder [dsp_ip_packager_get_location]

    if { [dsp_hdllang_is_vhdl] } {
        set synth [ipx::get_file_group xilinx_vhdlsynthesis $currentCore]
        set sim [ipx::get_file_group xilinx_vhdlsynthesis $currentCore]
        if { [ dsp_has_testbench ] }  {
          set test [ipx::get_file_group xilinx_vhdltestbench $currentCore]
        }
    } else {
        set synth [ipx::get_file_group xilinx_verilogsynthesis $currentCore]
        set sim [ipx::get_file_group xilinx_verilogsynthesis $currentCore]
        if { [ dsp_has_testbench ] }  {
            set test [ipx::get_file_group xilinx_verilogtestbench $currentCore]
        }
    }


    if { [ dsp_has_testbench ] }    {
        #ipx::add_file_group -type {testbench} {} $currentCore

        set_property model_name [dsp_ip_packager_get_top_name] $test
        set dir [format "%s/%s/%s.srcs/sim_1/imports/sysgen/" $root $folder $nam]
        dsp_ip_packager_add_files_with_path_to_group $dir $test {"*.v" "*.vhd"} {work}

        set dir [format "%s/%s/%s.srcs/sim_1/imports/" $root $folder $nam]
        dsp_ip_packager_add_files_with_path_to_group $dir $test {"*.dat"} {work}
    }


    ipx::add_file_group -type {utility} {} $currentCore
    set utility [ipx::get_file_group xilinx_utilityxitfiles $currentCore]
    puts "start document packaging..."
    if { [ dsp_has_create_interface_document ] }    {

        ipx::add_file_group -type {version_info} {} $currentCore
        set dir [format "%s/documentation/" $root]
        set versionInfo [ipx::get_file_group xilinx_versioninformation $currentCore]
        dsp_ip_packager_add_files_with_path_to_group $dir $versionInfo {"*.htm"} {work}

        set dir [format "%s/documentation/images/" $root]
        dsp_ip_packager_add_files_with_path_to_group $dir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}

        ipx::add_file_group -type {datasheet} {} $currentCore
        set datasheet [ipx::get_file_group xilinx_datasheet $currentCore]
        set dir [format "%s/documentation/" $root]
        dsp_ip_packager_add_files_with_path_to_group $dir $datasheet {"*.htm"} {work}
    }

 }

 #-------------------------------------------------------
 # Ip packager Package IP with the giving IP name
 #
 #-------------------------------------------------------
 proc dsp_ip_packager_package_core {ipname} {
    set currentCore [ipx::current_core]
    set root [get_property root_directory $currentCore]
    set projpath [ get_property DIRECTORY [current_project] ]
    set ipname [dsp_ip_packager_get_ip_name]
    set ippath [format "%s/%s" $projpath $ipname]

    foreach {port_obj} [ipx::get_all_port [ipx::current_core]] {
        set myname [get_property name $port_obj]

        if {[string match "clk" $myname]} {
            set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
            set_property abstraction_type_vlnv {xilinx.com:common:clock:1.0} $current_bus_interface
            set_property bus_type_vlnv {xilinx.com:common:clock_rtl:1.0} $current_bus_interface
            set_property interface_mode {slave} $current_bus_interface
            set current_port_map [ipx::add_port_map $myname $current_bus_interface]
            set_property logical_name {CLK} $current_port_map
            set_property physical_name {clk} $current_port_map
       } elseif {[string match "ce" $myname]} {
            set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
            set_property bus_type_vlnv {xilinx.com:common:clockenable_rtl:1.0} $current_bus_interface
            set_property abstraction_type_vlnv {xilinx.com:common:clockenable:1.0} $current_bus_interface
            set_property interface_mode {slave} $current_bus_interface
            set current_port_map [ipx::add_port_map $myname $current_bus_interface]
            set_property logical_name {CE} $current_port_map
            set_property physical_name {ce} $current_port_map
      } else {
            set current_bus_interface [ipx::add_bus_interface $myname [ipx::current_core] ]
            set_property bus_type_vlnv {xilinx.com:common:data_rtl:1.0} $current_bus_interface
            set_property abstraction_type_vlnv {xilinx.com:common:data:1.0} $current_bus_interface
            #set_property interface_mode {slave} $current_bus_interface
            set current_port_map [ipx::add_port_map $myname $current_bus_interface]
            set_property logical_name {DATA} $current_port_map
            set_property physical_name $myname $current_port_map
      }

    }
    ipx::create_xgui_files $currentCore
    ipx::save_core $currentCore
    ipx::check_integrity -quiet $currentCore
    set archive [format "%s/%s.zip" $projpath $ipname]
    ipx::archive_core $archive $currentCore
    if {[dsp_ip_packager_get_common_Repos_flag]} {
        file copy -force $archive [dsp_ip_packager_get_common_Repos]
    }
 }

 #-------------------------------------------------------
 # Ip packager add IP to project
 #
 #-------------------------------------------------------
  proc dsp_ip_packager_add_ip_to_proj {} {
    set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
    set currentCore [ipx::current_core]
    set root [get_property root_directory $currentCore]
    set ven [get_property vendor $currentCore]
    set lib [get_property library $currentCore]
    set nam [get_property name $currentCore]
    set ver [get_property version $currentCore]
    set vlnvs [format "%s:%s:%s:%s" $ven $lib $nam $ver]
    set instant [format "%s_0" [dsp_ip_packager_get_ip_name]]
    create_ip -vlnv $vlnvs -module_name $instant
    if { [ dsp_has_testbench ] }    {
        if { [dsp_hdllang_is_vhdl] } {
            set testbench [lindex [get_files -of_objects {sim_1} *_tb.vhd] 0]
            if { [string length $testbench] > 0} {
                set pattern [format "work.%s" [dsp_ip_packager_get_top_name]]
                set replace [format "work.%s" $instant]
                dsp_replace_in_file $testbench $pattern $replace
             }
         } else {
            set testbench [lindex [get_files -of_objects {sim_1} *_tb.v] 0]
            if { [string length $testbench] > 0} {
               set pattern [format " %s " [dsp_ip_packager_get_top_name]]
               set replace [format " %s " $instant]
               dsp_replace_in_file $testbench $pattern $replace
            }
        }
        update_compile_order -fileset sources_1
        set_property top $instant [current_fileset]
        update_compile_order -fileset sources_1
        generate_target {Simulation Synthesis instantiation_template} [get_ips]
            #launch_xsim -simset sim_1 -mode behavioral
    }
  }

 #-------------------------------------------------------
 # Ip packager Update IP Catalog
 #
 #-------------------------------------------------------
 proc dsp_update_ip_catalog_new {} {
     set projpath [ get_property DIRECTORY [current_project] ]
     set currentCore [ipx::current_core]
     set root [get_property root_directory $currentCore]
     if {[dsp_ip_packager_get_common_Repos_flag]} {
        set common [dsp_ip_packager_get_common_Repos]
        set name [dsp_ip_packager_get_ip_name]
        set ippath [format "%s/%s" $common $name]
     } else {
        set ipname [dsp_ip_packager_get_ip_name]
        set ippath [format "%s/%s" $projpath $ipname]
     }
     set ip [format "%s/%s.zip" $projpath $ipname]
     set_property ip_repo_paths $projpath [current_fileset]
     update_ip_catalog
     update_ip_catalog -add_ip $ip -repo_path $projpath
 }

 #-------------------------------------------------------
 # Ip packager old version script
 #
 #-------------------------------------------------------
 proc dsp_package_for_vivado_ip_integrator_old {} {
    set projpath [ get_property DIRECTORY [current_project] ]
    set nam [dsp_ip_packager_get_top_name]
    set baseDir [format "%s/%s.srcs/sources_1/ip/" $projpath $nam]
    puts $baseDir
    set filelist [dsp_find_files_with_pattern $baseDir "*.coe"]
    puts $filelist
    foreach absFile $filelist {
       add_files -norecurse $absFile
    }
   puts "load COE file finished."
   update_compile_order -fileset sources_1
      puts "----------------------------start IP Packager------------------"
      ipx::package_project
      set ipname [dsp_ip_packager_get_full_path]
      puts $ipname
      puts ">>generate ips"
      #dsp_ip_packager_add_files
      dsp_ip_packager_add_files_by_handler
      puts ">>set payment"
      dsp_ip_packager_set_payment false
      puts ">>package ip!"
      dsp_ip_packager_package $ipname


      if { [ dsp_has_testbench ] } {
        puts ">>Update IP Catelog!"
        dsp_ip_packager_remove_sources
        dsp_update_ip_catalog
        dsp_ip_packager_add_ip
      }
      puts "----------------------------end IP Packager------------------"
		puts "\n"
		puts "--------------Instructions on how to use this IP--------------"
		set text [format "1. Copy %s.zip to your project location, unzip it." [dsp_ip_packager_get_ip_name]]
		puts $text
		puts "2. In your Vivado project,  click on \"IP Catalog\".  In the IP Catalog window, right click on any empty area, select \"Upate IP Catalog...\"." 
		puts "3. In the pop up dialog, click on \"Add Directories...\" and provide the path to your IP location. Do not forgot to check \"Reload All Repositories\"."
		puts "4. In IP catalog window, find this IP, double click on it to add into your project."
		puts "5. Under Design Sources of your project, you will find a new IP added in. Use that IP name in your code to finish your design."
    }
        

  

}
# END namespace ::xilinx::dsp::planaheadworker

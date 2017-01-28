//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

echo "This script was generated under a different operating system."
echo "Please update the PATH variable below, before executing this script"
exit

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/bin/lin64;/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/lib/lin64;/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/bin/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/bin/lin64;/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/EDK/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/ISE/lib/lin64:/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/common/lib/lin64;/home/diego/EDA/Xilinx/ISE/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc6slx45tcsg324-3N -dd _ngo -uc \"rt_audio_controller.ucf\" \"rt_audio_controller.edf\"" );
ISEStep( "map",
         "-intstyle pa -w \"rt_audio_controller.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"rt_audio_controller.ncd\" -w \"rt_audio_controller_routed.ncd\"" );
ISEStep( "trce",
         "-intstyle ise -o \"rt_audio_controller.twr\" -v 30 -l 30 \"rt_audio_controller_routed.ncd\" \"rt_audio_controller.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"rt_audio_controller_routed.ncd\" \"rt_audio_controller_routed.xdl\"" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}

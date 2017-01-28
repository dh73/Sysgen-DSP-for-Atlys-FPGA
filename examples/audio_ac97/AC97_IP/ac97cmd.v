module ac97cmd ( input         clk,
		         input 	       ac97_ready_sig,
		         input  [4:0]  volume,
		         input  [2:0]  source,
		         output [7:0]  cmd_addr,
		         output [15:0] cmd_data,
		         output        latching_cmd );
   
   // synthesis attribute BOX_TYPE of ac97cmd is "BLACK_BOX"      
                                    
endmodule // ac97cmd

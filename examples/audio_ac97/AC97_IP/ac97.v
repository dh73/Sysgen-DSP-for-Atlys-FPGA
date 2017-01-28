module ac97      ( input         clk,
                   input 	     n_reset,
                   input 	     latching_cmd,
                   input 	     ac97_sdata_in,
                   input 	     ac97_bitclk,
                   input  [17:0] L_out,
                   input  [17:0] R_out,
                   input  [7:0]  cmd_addr, 
                   input  [15:0] cmd_data, 
                   output [17:0] L_in, 
                   output [17:0] R_in,
                   output 	     ac97_sdata_out,
                   output 	     ac97_sync,
                   output 	     ac97_n_reset,
                   output 	     ac97_ready_sig );
   
   // synthesis attribute BOX_TYPE of ac97 is "BLACK_BOX"  
                   
endmodule // ac97

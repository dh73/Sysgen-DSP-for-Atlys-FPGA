//`define NO_LOOPBACK

module rt_audio_controller( input       clk,
			                input       n_reset,
			                input 	    sdata_in,
			                input 	    bitclk,
			                input [4:0] volume,
			                input [2:0] source,
			                output 	    sync,
			                output 	    codec_n_reset,
			                output 	    sdata_out );
   
   wire         ac97_ready_sig_w;
   wire [7:0]   cmd_addr_w;
   wire [15:0]  cmd_data_w;
   wire         latching_cmd_w;
   `ifdef NO_LOOPBACK
   wire [17:0]  left_audioin;
   wire [17:0]  right_audioin;
   wire [17:0]  left_audioout;
   wire [17:0]  right_audioout;
   `else
   wire [17:0]  left_loopback;
   wire [17:0] 	right_loopback;
   `endif
   wire         slot_status_signal;   

   /* FIX1: Puesto que los dos archivos NCG utilizan un IBUF para el puerto CLK, es necesario forzar a la herramienta a 
      eliminarlos y utilizar un IBUFG (global) en su lugar, de otra forma el proceso de MAP fallara con un 
      enrutamiento ilegal entre clock buffers, resultado esperado:
      [Opt 31-35] Removing redundant IBUF, controller/clk_IBUF, from the path connected to top-level port: clk 
      [Opt 31-35] Removing redundant IBUF, datapath/clk_IBUF, from the path connected to top-level port: clk 
   */
    IBUFG FIX1 (.I(clk), .O(gclk));
   
   ac97cmd    controller(     .clk(gclk),
			                  .ac97_ready_sig(ac97_ready_sig_w),
			                  .cmd_addr(cmd_addr_w),
                              .cmd_data(cmd_data_w),
                              .latching_cmd(latching_cmd_w),
                              .volume(volume),
                              .source(source) );
   
   ac97       datapath (  .n_reset(n_reset),
                          .clk(gclk),
                          .ac97_sdata_out(sdata_out),
                          .ac97_sdata_in(sdata_in),
                          .ac97_sync(sync),
                          .ac97_bitclk(bitclk),
                          .ac97_n_reset(codec_n_reset),
                          .ac97_ready_sig(slot_status_signal),
                          .latching_cmd(latching_cmd_w),
                          .cmd_addr(cmd_addr_w),
                          .cmd_data(cmd_data_w), 
                          `ifdef NO_LOOPBACK
                          .L_out(left_audioin),
                          .R_out(right_audioin),
                          .L_in(left_audioout),
                          .R_in(right_audioout)
                          `else
                          .L_out(left_loopback),
                          .R_out(right_loopback),
                          .L_in(left_loopback),
                          .R_in(right_loopback)
                          `endif );
                          
`ifdef NO_LOOPBACK
   algodev_cw algorithm_from_sysgen( .clk(clk),
				     .audioleftin(left_audioout),
				     .audiorightin(right_audioout),
				     .audioleftout(left_audioin),
				     .audiorightout(right_audioin),
				     .enable(slot_status_signal) ); // synthesis black_box
`endif

   assign ac97_ready_sig_w = slot_status_signal;
   /* assign source = 3'b000; Ejemplo para forzar una fuente de audio, en este caso el microfono */ 

endmodule // rt_audio_controller
		

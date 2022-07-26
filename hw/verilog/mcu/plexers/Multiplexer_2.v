/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_2                                                **
 **                                                                          **
 ******************************************************************************/

module Multiplexer_2( Enable,
                      MuxIn_0,
                      MuxIn_1,
                      Sel,
                      MuxOut);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input  MuxIn_0;
   input  MuxIn_1;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output MuxOut;

   /***************************************************************************
    ** Here the internal registers are defined                               **
    ***************************************************************************/
   reg s_selected_vector;

   assign MuxOut = s_selected_vector;

   always @(*)
   begin
      if (~Enable) s_selected_vector <= 0;
      else case (Sel)
         1'b0:
            s_selected_vector <= MuxIn_0;
         default:
            s_selected_vector <= MuxIn_1;
      endcase
   end

endmodule

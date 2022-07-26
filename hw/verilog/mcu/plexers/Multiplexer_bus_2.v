/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_bus_2                                            **
 **                                                                          **
 ******************************************************************************/

module Multiplexer_bus_2( Enable,
                          MuxIn_0,
                          MuxIn_1,
                          Sel,
                          MuxOut);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input[NrOfBits-1:0]  MuxIn_0;
   input[NrOfBits-1:0]  MuxIn_1;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[NrOfBits-1:0] MuxOut;

   /***************************************************************************
    ** Here the internal registers are defined                               **
    ***************************************************************************/
   reg[NrOfBits-1:0] s_selected_vector;

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

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_bus_4                                            **
 **                                                                          **
 ******************************************************************************/

module Multiplexer_bus_4( Enable,
                          MuxIn_0,
                          MuxIn_1,
                          MuxIn_2,
                          MuxIn_3,
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
   input[NrOfBits-1:0]  MuxIn_2;
   input[NrOfBits-1:0]  MuxIn_3;
   input[1:0]  Sel;

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
         2'b00:
            s_selected_vector <= MuxIn_0;
         2'b01:
            s_selected_vector <= MuxIn_1;
         2'b10:
            s_selected_vector <= MuxIn_2;
         default:
            s_selected_vector <= MuxIn_3;
      endcase
   end

endmodule

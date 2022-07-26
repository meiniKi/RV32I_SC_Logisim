/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_bus_8                                            **
 **                                                                          **
 ******************************************************************************/

module Multiplexer_bus_8( Enable,
                          MuxIn_0,
                          MuxIn_1,
                          MuxIn_2,
                          MuxIn_3,
                          MuxIn_4,
                          MuxIn_5,
                          MuxIn_6,
                          MuxIn_7,
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
   input[NrOfBits-1:0]  MuxIn_4;
   input[NrOfBits-1:0]  MuxIn_5;
   input[NrOfBits-1:0]  MuxIn_6;
   input[NrOfBits-1:0]  MuxIn_7;
   input[2:0]  Sel;

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
         3'b000:
            s_selected_vector <= MuxIn_0;
         3'b001:
            s_selected_vector <= MuxIn_1;
         3'b010:
            s_selected_vector <= MuxIn_2;
         3'b011:
            s_selected_vector <= MuxIn_3;
         3'b100:
            s_selected_vector <= MuxIn_4;
         3'b101:
            s_selected_vector <= MuxIn_5;
         3'b110:
            s_selected_vector <= MuxIn_6;
         default:
            s_selected_vector <= MuxIn_7;
      endcase
   end

endmodule

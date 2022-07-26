/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : XOR_GATE_BUS_ONEHOT                                          **
 **                                                                          **
 ******************************************************************************/

module XOR_GATE_BUS_ONEHOT( Input_1,
                            Input_2,
                            Result);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter BubblesMask = 1;
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[NrOfBits-1:0]  Input_1;
   input[NrOfBits-1:0]  Input_2;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[NrOfBits-1:0] Result;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[NrOfBits-1:0] s_real_input_1;
   wire[NrOfBits-1:0] s_real_input_2;
   wire[1:0] s_signal_invert_mask;


   /***************************************************************************
    ** Here the bubbles are processed                                        **
    ***************************************************************************/
   assign s_signal_invert_mask = BubblesMask;
   assign s_real_input_1 = (s_signal_invert_mask[0]) ? ~Input_1: Input_1;
   assign s_real_input_2 = (s_signal_invert_mask[1]) ? ~Input_2: Input_2;

   /***************************************************************************
    ** Here the functionality is defined                                     **
    ***************************************************************************/
   genvar n;
   generate
      for (n = 0 ; n < NrOfBits ; n = n + 1)
         begin
            assign Result[n] = (s_real_input_1[n] & ~(s_real_input_2[n])) | 
                               (~(s_real_input_1[n]) & s_real_input_2[n]);
         end
   endgenerate


endmodule

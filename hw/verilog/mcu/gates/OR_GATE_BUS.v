/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : OR_GATE_BUS                                                  **
 **                                                                          **
 ******************************************************************************/

module OR_GATE_BUS( Input_1,
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
   assign Result = s_real_input_1 |
                   s_real_input_2;


endmodule

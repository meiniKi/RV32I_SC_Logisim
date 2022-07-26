/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : AND_GATE_3_INPUTS                                            **
 **                                                                          **
 ******************************************************************************/

module AND_GATE_3_INPUTS( Input_1,
                          Input_2,
                          Input_3,
                          Result);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter BubblesMask = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Input_1;
   input  Input_2;
   input  Input_3;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Result;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_real_input_1;
   wire s_real_input_2;
   wire s_real_input_3;
   wire[2:0] s_signal_invert_mask;


   /***************************************************************************
    ** Here the bubbles are processed                                        **
    ***************************************************************************/
   assign s_signal_invert_mask = BubblesMask;
   assign s_real_input_1 = (s_signal_invert_mask[0]) ? ~Input_1: Input_1;
   assign s_real_input_2 = (s_signal_invert_mask[1]) ? ~Input_2: Input_2;
   assign s_real_input_3 = (s_signal_invert_mask[2]) ? ~Input_3: Input_3;

   /***************************************************************************
    ** Here the functionality is defined                                     **
    ***************************************************************************/
   assign Result = s_real_input_1 &
                   s_real_input_2 &
                   s_real_input_3;


endmodule

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Comparator                                                   **
 **                                                                          **
 ******************************************************************************/

module Comparator( DataA,
                   DataB,
                   A_EQ_B,
                   A_GT_B,
                   A_LT_B);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter TwosComplement = 1;
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[NrOfBits-1:0]  DataA;
   input[NrOfBits-1:0]  DataB;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output A_EQ_B;
   output A_GT_B;
   output A_LT_B;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_signed_greater;
   wire s_signed_less;
   wire s_unsigned_greater;
   wire s_unsigned_less;

   assign s_signed_less      = ($signed(DataA) < $signed(DataB));
   assign s_unsigned_less    = (DataA < DataB);
   assign s_signed_greater   = ($signed(DataA) > $signed(DataB));
   assign s_unsigned_greater = (DataA > DataB);

   assign A_EQ_B = (DataA == DataB);
   assign A_GT_B = (TwosComplement==1) ? s_signed_greater : s_unsigned_greater;
   assign A_LT_B = (TwosComplement==1) ? s_signed_less : s_unsigned_less;

endmodule

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Subtractor                                                   **
 **                                                                          **
 ******************************************************************************/

module Subtractor( BorrowIn,
                   DataA,
                   DataB,
                   BorrowOut,
                   Result);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter ExtendedBits = 1;
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  BorrowIn;
   input[NrOfBits-1:0]  DataA;
   input[NrOfBits-1:0]  DataB;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output BorrowOut;
   output[NrOfBits-1:0] Result;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_carry;
   wire[ExtendedBits-1:0] s_extended_dataA;
   wire[ExtendedBits-1:0] s_extended_dataB;
   wire[NrOfBits-1:0] s_inverted_dataB;
   wire[ExtendedBits-1:0] s_sum_result;

   assign   {s_carry,Result} = DataA + ~(DataB) + ~(BorrowIn);
   assign   BorrowOut = ~s_carry;

endmodule

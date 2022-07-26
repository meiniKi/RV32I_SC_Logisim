/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROMCONTENTS_ROM_1                                            **
 **                                                                          **
 ******************************************************************************/

module ROMCONTENTS_ROM_1( Address,
                          Data);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[11:0]  Address;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Data;
   reg[31:0] Data;

   always @ (Address)
   begin
      case(Address)
         default : Data = 0;
      endcase
   end

endmodule

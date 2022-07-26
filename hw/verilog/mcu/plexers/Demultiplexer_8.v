/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Demultiplexer_8                                              **
 **                                                                          **
 ******************************************************************************/

module Demultiplexer_8( DemuxIn,
                        Enable,
                        Sel,
                        DemuxOut_0,
                        DemuxOut_1,
                        DemuxOut_2,
                        DemuxOut_3,
                        DemuxOut_4,
                        DemuxOut_5,
                        DemuxOut_6,
                        DemuxOut_7);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  DemuxIn;
   input  Enable;
   input[2:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DemuxOut_0;
   output DemuxOut_1;
   output DemuxOut_2;
   output DemuxOut_3;
   output DemuxOut_4;
   output DemuxOut_5;
   output DemuxOut_6;
   output DemuxOut_7;
   assign DemuxOut_0   = (Enable&(Sel == 3'b000 )) ? DemuxIn : 0;
   assign DemuxOut_1   = (Enable&(Sel == 3'b001 )) ? DemuxIn : 0;
   assign DemuxOut_2   = (Enable&(Sel == 3'b010 )) ? DemuxIn : 0;
   assign DemuxOut_3   = (Enable&(Sel == 3'b011 )) ? DemuxIn : 0;
   assign DemuxOut_4   = (Enable&(Sel == 3'b100 )) ? DemuxIn : 0;
   assign DemuxOut_5   = (Enable&(Sel == 3'b101 )) ? DemuxIn : 0;
   assign DemuxOut_6   = (Enable&(Sel == 3'b110 )) ? DemuxIn : 0;
   assign DemuxOut_7   = (Enable&(Sel == 3'b111 )) ? DemuxIn : 0;

endmodule

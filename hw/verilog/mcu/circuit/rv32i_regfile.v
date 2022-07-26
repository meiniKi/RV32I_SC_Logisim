/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_regfile                                                **
 **                                                                          **
 ******************************************************************************/

module rv32i_regfile( LOGISIM_CLOCK_TREE_0,
                      clk,
                      din,
                      rd,
                      rs1,
                      rs2,
                      rst_n,
                      wen,
                      rsa,
                      rsb);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  clk;
   input[31:0]  din;
   input[4:0]  rd;
   input[4:0]  rs1;
   input[4:0]  rs2;
   input  rst_n;
   input  wen;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] rsa;
   output[31:0] rsb;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_19;
   wire[4:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[4:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_4;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_19[4:0]              = rs1;
   assign s_LOGISIM_BUS_7[31:0]              = din;
   assign s_LOGISIM_BUS_9[4:0]               = rd;
   assign s_LOGISIM_NET_14                   = wen;
   assign s_LOGISIM_BUS_20[4:0]              = rs2;
   assign s_LOGISIM_NET_18                   = clk;
   assign s_LOGISIM_NET_17                   = rst_n;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign rsa                                = s_LOGISIM_BUS_11[31:0];
   assign rsb                                = s_LOGISIM_BUS_22[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_4 = 1'd0;

   assign s_LOGISIM_NET_16 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_14),
              .Input_2(s_LOGISIM_BUS_9[4]),
              .Result(s_LOGISIM_NET_15));

   AND_GATE #(.BubblesMask(2))
      GATE_2 (.Input_1(s_LOGISIM_NET_14),
              .Input_2(s_LOGISIM_BUS_9[4]),
              .Result(s_LOGISIM_NET_21));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[31:0]),
             .MuxOut(s_LOGISIM_BUS_11[31:0]),
             .Sel(s_LOGISIM_BUS_19[4]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_1[31:0]),
             .MuxOut(s_LOGISIM_BUS_22[31:0]),
             .Sel(s_LOGISIM_BUS_20[4]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   rv32i_regbank      i_reg0 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                              .clk(s_LOGISIM_NET_18),
                              .din(s_LOGISIM_BUS_7[31:0]),
                              .is_upper(s_LOGISIM_NET_4),
                              .rd_16(s_LOGISIM_BUS_9[3:0]),
                              .rs1_16(s_LOGISIM_BUS_19[3:0]),
                              .rs1_d(s_LOGISIM_BUS_3[31:0]),
                              .rs2_16(s_LOGISIM_BUS_20[3:0]),
                              .rs2_d(s_LOGISIM_BUS_8[31:0]),
                              .rst_n(s_LOGISIM_NET_17),
                              .wen(s_LOGISIM_NET_21));

   rv32i_regbank      i_reg1 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                              .clk(s_LOGISIM_NET_18),
                              .din(s_LOGISIM_BUS_7[31:0]),
                              .is_upper(s_LOGISIM_NET_16),
                              .rd_16(s_LOGISIM_BUS_9[3:0]),
                              .rs1_16(s_LOGISIM_BUS_19[3:0]),
                              .rs1_d(s_LOGISIM_BUS_12[31:0]),
                              .rs2_16(s_LOGISIM_BUS_20[3:0]),
                              .rs2_d(s_LOGISIM_BUS_1[31:0]),
                              .rst_n(s_LOGISIM_NET_17),
                              .wen(s_LOGISIM_NET_15));



endmodule

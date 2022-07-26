/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_alu                                                    **
 **                                                                          **
 ******************************************************************************/

module rv32i_alu( LOGISIM_CLOCK_TREE_0,
                  op_add,
                  op_and,
                  op_eq,
                  op_ge,
                  op_geu,
                  op_lt,
                  op_ltu,
                  op_ne,
                  op_or,
                  op_rs2_imm,
                  op_sll,
                  op_sra,
                  op_srl,
                  op_sub,
                  op_xor,
                  rsa,
                  rsb_imm,
                  dout);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  op_add;
   input  op_and;
   input  op_eq;
   input  op_ge;
   input  op_geu;
   input  op_lt;
   input  op_ltu;
   input  op_ne;
   input  op_or;
   input  op_rs2_imm;
   input  op_sll;
   input  op_sra;
   input  op_srl;
   input  op_sub;
   input  op_xor;
   input[31:0]  rsa;
   input[31:0]  rsb_imm;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] dout;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_35                   = op_or;
   assign s_LOGISIM_NET_15                   = op_xor;
   assign s_LOGISIM_NET_47                   = op_sll;
   assign s_LOGISIM_NET_32                   = op_srl;
   assign s_LOGISIM_NET_50                   = op_sra;
   assign s_LOGISIM_NET_11                   = op_rs2_imm;
   assign s_LOGISIM_BUS_10[31:0]             = rsb_imm;
   assign s_LOGISIM_BUS_1[31:0]              = rsa;
   assign s_LOGISIM_NET_27                   = op_add;
   assign s_LOGISIM_NET_33                   = op_ge;
   assign s_LOGISIM_NET_5                    = op_eq;
   assign s_LOGISIM_NET_3                    = op_ne;
   assign s_LOGISIM_NET_13                   = op_lt;
   assign s_LOGISIM_NET_2                    = op_geu;
   assign s_LOGISIM_NET_19                   = op_ltu;
   assign s_LOGISIM_NET_41                   = op_sub;
   assign s_LOGISIM_NET_42                   = op_and;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign dout                               = s_LOGISIM_BUS_30[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[0] = s_LOGISIM_NET_37;
   assign s_LOGISIM_BUS_7[1] = 1'b0;
   assign s_LOGISIM_BUS_7[2] = 1'b0;
   assign s_LOGISIM_BUS_7[3] = 1'b0;
   assign s_LOGISIM_BUS_7[4] = 1'b0;
   assign s_LOGISIM_BUS_7[5] = 1'b0;
   assign s_LOGISIM_BUS_7[6] = 1'b0;
   assign s_LOGISIM_BUS_7[7] = 1'b0;
   assign s_LOGISIM_BUS_7[8] = 1'b0;
   assign s_LOGISIM_BUS_7[9] = 1'b0;
   assign s_LOGISIM_BUS_7[10] = 1'b0;
   assign s_LOGISIM_BUS_7[11] = 1'b0;
   assign s_LOGISIM_BUS_7[12] = 1'b0;
   assign s_LOGISIM_BUS_7[13] = 1'b0;
   assign s_LOGISIM_BUS_7[14] = 1'b0;
   assign s_LOGISIM_BUS_7[15] = 1'b0;
   assign s_LOGISIM_BUS_7[16] = 1'b0;
   assign s_LOGISIM_BUS_7[17] = 1'b0;
   assign s_LOGISIM_BUS_7[18] = 1'b0;
   assign s_LOGISIM_BUS_7[19] = 1'b0;
   assign s_LOGISIM_BUS_7[20] = 1'b0;
   assign s_LOGISIM_BUS_7[21] = 1'b0;
   assign s_LOGISIM_BUS_7[22] = 1'b0;
   assign s_LOGISIM_BUS_7[23] = 1'b0;
   assign s_LOGISIM_BUS_7[24] = 1'b0;
   assign s_LOGISIM_BUS_7[25] = 1'b0;
   assign s_LOGISIM_BUS_7[26] = 1'b0;
   assign s_LOGISIM_BUS_7[27] = 1'b0;
   assign s_LOGISIM_BUS_7[28] = 1'b0;
   assign s_LOGISIM_BUS_7[29] = 1'b0;
   assign s_LOGISIM_BUS_7[30] = 1'b0;
   assign s_LOGISIM_BUS_7[31] = 1'b0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_1[31:0]),
              .Input_2(s_LOGISIM_BUS_10[31:0]),
              .Result(s_LOGISIM_BUS_44[31:0]));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_3 (.Input_1(s_LOGISIM_BUS_1[31:0]),
              .Input_2(s_LOGISIM_BUS_10[31:0]),
              .Result(s_LOGISIM_BUS_49[31:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(0),
                         .NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_1[31:0]),
              .Input_2(s_LOGISIM_BUS_10[31:0]),
              .Result(s_LOGISIM_BUS_45[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_18),
              .Result(s_LOGISIM_NET_28));

   OR_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_46),
              .Input_2(s_LOGISIM_NET_22),
              .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_18),
                         .Result(s_LOGISIM_NET_36));

   OR_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_33),
              .Input_2(s_LOGISIM_NET_5),
              .Input_3(s_LOGISIM_NET_3),
              .Input_4(s_LOGISIM_NET_13),
              .Input_5(s_LOGISIM_NET_2),
              .Input_6(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_38[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_49[31:0]),
             .MuxOut(s_LOGISIM_BUS_39[31:0]),
             .Sel(s_LOGISIM_NET_35));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_39[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_45[31:0]),
             .MuxOut(s_LOGISIM_BUS_43[31:0]),
             .Sel(s_LOGISIM_NET_15));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_43[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_31[31:0]),
             .MuxOut(s_LOGISIM_BUS_34[31:0]),
             .Sel(s_LOGISIM_NET_47));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_34[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_29[31:0]),
             .MuxOut(s_LOGISIM_BUS_16[31:0]),
             .Sel(s_LOGISIM_NET_32));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_16[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_21[31:0]),
             .MuxOut(s_LOGISIM_BUS_12[31:0]),
             .Sel(s_LOGISIM_NET_50));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_7[31:0]),
             .MuxOut(s_LOGISIM_BUS_26[31:0]),
             .Sel(s_LOGISIM_NET_0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_10[31:0]),
             .MuxOut(s_LOGISIM_BUS_30[31:0]),
             .Sel(s_LOGISIM_NET_11));

   Multiplexer_2      MUX_8 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_28),
                             .MuxIn_1(s_LOGISIM_NET_18),
                             .MuxOut(s_LOGISIM_NET_20),
                             .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_9 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_20),
                             .MuxIn_1(s_LOGISIM_NET_36),
                             .MuxOut(s_LOGISIM_NET_24),
                             .Sel(s_LOGISIM_NET_3));

   Multiplexer_2      MUX_10 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_24),
                              .MuxIn_1(s_LOGISIM_NET_17),
                              .MuxOut(s_LOGISIM_NET_25),
                              .Sel(s_LOGISIM_NET_13));

   Multiplexer_2      MUX_11 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_25),
                              .MuxIn_1(s_LOGISIM_NET_40),
                              .MuxOut(s_LOGISIM_NET_9),
                              .Sel(s_LOGISIM_NET_2));

   Multiplexer_2      MUX_12 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_9),
                              .MuxIn_1(s_LOGISIM_NET_23),
                              .MuxOut(s_LOGISIM_NET_37),
                              .Sel(s_LOGISIM_NET_19));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_48[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_6[31:0]),
              .MuxOut(s_LOGISIM_BUS_8[31:0]),
              .Sel(s_LOGISIM_NET_41));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_8[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_44[31:0]),
              .MuxOut(s_LOGISIM_BUS_38[31:0]),
              .Sel(s_LOGISIM_NET_42));

   Subtractor #(.ExtendedBits(33),
                .NrOfBits(32))
      SUBTRACTOR2C_1 (.BorrowIn(1'b0),
                      .BorrowOut(open),
                      .DataA(s_LOGISIM_BUS_1[31:0]),
                      .DataB(s_LOGISIM_BUS_10[31:0]),
                      .Result(s_LOGISIM_BUS_6[31:0]));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(1'b0),
                 .CarryOut(open),
                 .DataA(s_LOGISIM_BUS_1[31:0]),
                 .DataB(s_LOGISIM_BUS_10[31:0]),
                 .Result(s_LOGISIM_BUS_48[31:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_31[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_10[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_2 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_29[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_10[4:0]));

   Shifter_32_bit #(.ShifterMode(3))
      Shifter_3 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_21[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_10[4:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_18),
                    .A_GT_B(s_LOGISIM_NET_4),
                    .A_LT_B(s_LOGISIM_NET_17),
                    .DataA(s_LOGISIM_BUS_1[31:0]),
                    .DataB(s_LOGISIM_BUS_10[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_22),
                    .A_GT_B(s_LOGISIM_NET_46),
                    .A_LT_B(s_LOGISIM_NET_23),
                    .DataA(s_LOGISIM_BUS_1[31:0]),
                    .DataB(s_LOGISIM_BUS_10[31:0]));



endmodule

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_aludec                                                 **
 **                                                                          **
 ******************************************************************************/

module rv32i_aludec( LOGISIM_CLOCK_TREE_0,
                     ar,
                     ar_i,
                     br,
                     funct3,
                     funct7,
                     lui_auipc,
                     op_add,
                     op_and,
                     op_beq,
                     op_bge,
                     op_bgeu,
                     op_blt,
                     op_bltu,
                     op_bne,
                     op_or,
                     op_rs2_imm,
                     op_sll,
                     op_slt,
                     op_sltu,
                     op_sra,
                     op_srl,
                     op_sub,
                     op_xor);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  ar;
   input  ar_i;
   input  br;
   input[2:0]  funct3;
   input[6:0]  funct7;
   input  lui_auipc;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output op_add;
   output op_and;
   output op_beq;
   output op_bge;
   output op_bgeu;
   output op_blt;
   output op_bltu;
   output op_bne;
   output op_or;
   output op_rs2_imm;
   output op_sll;
   output op_slt;
   output op_sltu;
   output op_sra;
   output op_srl;
   output op_sub;
   output op_xor;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[6:0] s_LOGISIM_BUS_39;
   wire[2:0] s_LOGISIM_BUS_40;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_37                   = br;
   assign s_LOGISIM_NET_3                    = lui_auipc;
   assign s_LOGISIM_BUS_39[6:0]              = funct7;
   assign s_LOGISIM_BUS_40[2:0]              = funct3;
   assign s_LOGISIM_NET_7                    = ar_i;
   assign s_LOGISIM_NET_14                   = ar;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign op_add                             = s_LOGISIM_NET_22;
   assign op_sub                             = s_LOGISIM_NET_23;
   assign op_sll                             = s_LOGISIM_NET_24;
   assign op_slt                             = s_LOGISIM_NET_21;
   assign op_sltu                            = s_LOGISIM_NET_25;
   assign op_xor                             = s_LOGISIM_NET_26;
   assign op_srl                             = s_LOGISIM_NET_27;
   assign op_sra                             = s_LOGISIM_NET_28;
   assign op_or                              = s_LOGISIM_NET_29;
   assign op_and                             = s_LOGISIM_NET_30;
   assign op_beq                             = s_LOGISIM_NET_31;
   assign op_bne                             = s_LOGISIM_NET_32;
   assign op_blt                             = s_LOGISIM_NET_33;
   assign op_bge                             = s_LOGISIM_NET_34;
   assign op_bltu                            = s_LOGISIM_NET_35;
   assign op_bgeu                            = s_LOGISIM_NET_36;
   assign op_rs2_imm                         = s_LOGISIM_NET_3;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_38),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_22));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_20),
              .Result(s_LOGISIM_NET_23));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_24));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_12),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_21));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_25));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_26));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_19),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_27));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_8),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_28));

   AND_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_29));

   AND_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_16),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_30));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_17),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_31));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_6),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_32));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_33));

   AND_GATE #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_11),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_34));

   AND_GATE #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_4),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_35));

   AND_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_16),
               .Input_2(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_36));

   OR_GATE #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_7),
               .Input_2(s_LOGISIM_NET_14),
               .Result(s_LOGISIM_NET_10));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_16));

   AND_GATE_3_INPUTS #(.BubblesMask(4))
      GATE_19 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_BUS_39[5]),
               .Input_2(s_LOGISIM_NET_11),
               .Result(s_LOGISIM_NET_8));

   AND_GATE_3_INPUTS #(.BubblesMask(2))
      GATE_21 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_11));

   AND_GATE #(.BubblesMask(2))
      GATE_22 (.Input_1(s_LOGISIM_NET_11),
               .Input_2(s_LOGISIM_BUS_39[5]),
               .Result(s_LOGISIM_NET_19));

   AND_GATE_3_INPUTS #(.BubblesMask(6))
      GATE_23 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_1));

   AND_GATE_3_INPUTS #(.BubblesMask(1))
      GATE_24 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_9));

   AND_GATE_3_INPUTS #(.BubblesMask(5))
      GATE_25 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_12));

   AND_GATE_3_INPUTS #(.BubblesMask(3))
      GATE_26 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_6));

   AND_GATE #(.BubblesMask(0))
      GATE_27 (.Input_1(s_LOGISIM_BUS_39[5]),
               .Input_2(s_LOGISIM_NET_17),
               .Result(s_LOGISIM_NET_2));

   AND_GATE_3_INPUTS #(.BubblesMask(7))
      GATE_28 (.Input_1(s_LOGISIM_BUS_40[2]),
               .Input_2(s_LOGISIM_BUS_40[1]),
               .Input_3(s_LOGISIM_BUS_40[0]),
               .Result(s_LOGISIM_NET_17));

   AND_GATE #(.BubblesMask(2))
      GATE_29 (.Input_1(s_LOGISIM_NET_17),
               .Input_2(s_LOGISIM_BUS_39[5]),
               .Result(s_LOGISIM_NET_18));

   OR_GATE #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_18),
               .Input_2(s_LOGISIM_NET_7),
               .Result(s_LOGISIM_NET_38));

   AND_GATE #(.BubblesMask(1))
      GATE_31 (.Input_1(s_LOGISIM_NET_7),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_20));



endmodule

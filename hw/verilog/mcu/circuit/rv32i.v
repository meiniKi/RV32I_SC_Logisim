/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i                                                        **
 **                                                                          **
 ******************************************************************************/

module rv32i( LOGISIM_CLOCK_TREE_0,
              clk,
              instr,
              mem_din_i,
              rst_n,
              instr_addr,
              mem_addr_o,
              mem_be0_o,
              mem_be1_o,
              mem_be2_o,
              mem_be3_o,
              mem_dout_o,
              mem_wen_o);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  clk;
   input[31:0]  instr;
   input[31:0]  mem_din_i;
   input  rst_n;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] instr_addr;
   output[31:0] mem_addr_o;
   output mem_be0_o;
   output mem_be1_o;
   output mem_be2_o;
   output mem_be3_o;
   output[31:0] mem_dout_o;
   output mem_wen_o;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[30:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[2:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[4:0] s_LOGISIM_BUS_22;
   wire[6:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[4:0] s_LOGISIM_BUS_38;
   wire[4:0] s_LOGISIM_BUS_42;
   wire[31:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_53;
   wire[31:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_58;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_60;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_68;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_70;
   wire[31:0] s_LOGISIM_BUS_73;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_1[0]                 = s_LOGISIM_BUS_36[1];
   assign s_LOGISIM_BUS_58[1]                = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_1[1]                 = s_LOGISIM_BUS_58[2];
   assign s_LOGISIM_BUS_1[1]                 = s_LOGISIM_BUS_36[2];
   assign s_LOGISIM_BUS_1[2]                 = s_LOGISIM_BUS_58[3];
   assign s_LOGISIM_BUS_1[2]                 = s_LOGISIM_BUS_36[3];
   assign s_LOGISIM_BUS_1[3]                 = s_LOGISIM_BUS_58[4];
   assign s_LOGISIM_BUS_1[3]                 = s_LOGISIM_BUS_36[4];
   assign s_LOGISIM_BUS_1[4]                 = s_LOGISIM_BUS_58[5];
   assign s_LOGISIM_BUS_1[4]                 = s_LOGISIM_BUS_36[5];
   assign s_LOGISIM_BUS_1[5]                 = s_LOGISIM_BUS_58[6];
   assign s_LOGISIM_BUS_1[5]                 = s_LOGISIM_BUS_36[6];
   assign s_LOGISIM_BUS_1[6]                 = s_LOGISIM_BUS_58[7];
   assign s_LOGISIM_BUS_1[6]                 = s_LOGISIM_BUS_36[7];
   assign s_LOGISIM_BUS_1[7]                 = s_LOGISIM_BUS_58[8];
   assign s_LOGISIM_BUS_1[7]                 = s_LOGISIM_BUS_36[8];
   assign s_LOGISIM_BUS_1[8]                 = s_LOGISIM_BUS_58[9];
   assign s_LOGISIM_BUS_1[8]                 = s_LOGISIM_BUS_36[9];
   assign s_LOGISIM_BUS_1[9]                 = s_LOGISIM_BUS_58[10];
   assign s_LOGISIM_BUS_1[9]                 = s_LOGISIM_BUS_36[10];
   assign s_LOGISIM_BUS_1[10]                = s_LOGISIM_BUS_58[11];
   assign s_LOGISIM_BUS_1[10]                = s_LOGISIM_BUS_36[11];
   assign s_LOGISIM_BUS_1[11]                = s_LOGISIM_BUS_58[12];
   assign s_LOGISIM_BUS_1[11]                = s_LOGISIM_BUS_36[12];
   assign s_LOGISIM_BUS_1[12]                = s_LOGISIM_BUS_58[13];
   assign s_LOGISIM_BUS_1[12]                = s_LOGISIM_BUS_36[13];
   assign s_LOGISIM_BUS_1[13]                = s_LOGISIM_BUS_58[14];
   assign s_LOGISIM_BUS_1[13]                = s_LOGISIM_BUS_36[14];
   assign s_LOGISIM_BUS_1[14]                = s_LOGISIM_BUS_58[15];
   assign s_LOGISIM_BUS_1[14]                = s_LOGISIM_BUS_36[15];
   assign s_LOGISIM_BUS_1[15]                = s_LOGISIM_BUS_58[16];
   assign s_LOGISIM_BUS_1[15]                = s_LOGISIM_BUS_36[16];
   assign s_LOGISIM_BUS_1[16]                = s_LOGISIM_BUS_58[17];
   assign s_LOGISIM_BUS_1[16]                = s_LOGISIM_BUS_36[17];
   assign s_LOGISIM_BUS_1[17]                = s_LOGISIM_BUS_58[18];
   assign s_LOGISIM_BUS_1[17]                = s_LOGISIM_BUS_36[18];
   assign s_LOGISIM_BUS_1[18]                = s_LOGISIM_BUS_58[19];
   assign s_LOGISIM_BUS_1[18]                = s_LOGISIM_BUS_36[19];
   assign s_LOGISIM_BUS_1[19]                = s_LOGISIM_BUS_58[20];
   assign s_LOGISIM_BUS_1[19]                = s_LOGISIM_BUS_36[20];
   assign s_LOGISIM_BUS_1[20]                = s_LOGISIM_BUS_58[21];
   assign s_LOGISIM_BUS_1[20]                = s_LOGISIM_BUS_36[21];
   assign s_LOGISIM_BUS_1[21]                = s_LOGISIM_BUS_58[22];
   assign s_LOGISIM_BUS_1[21]                = s_LOGISIM_BUS_36[22];
   assign s_LOGISIM_BUS_1[22]                = s_LOGISIM_BUS_58[23];
   assign s_LOGISIM_BUS_1[22]                = s_LOGISIM_BUS_36[23];
   assign s_LOGISIM_BUS_1[23]                = s_LOGISIM_BUS_58[24];
   assign s_LOGISIM_BUS_1[23]                = s_LOGISIM_BUS_36[24];
   assign s_LOGISIM_BUS_1[24]                = s_LOGISIM_BUS_58[25];
   assign s_LOGISIM_BUS_1[24]                = s_LOGISIM_BUS_36[25];
   assign s_LOGISIM_BUS_1[25]                = s_LOGISIM_BUS_58[26];
   assign s_LOGISIM_BUS_1[25]                = s_LOGISIM_BUS_36[26];
   assign s_LOGISIM_BUS_1[26]                = s_LOGISIM_BUS_58[27];
   assign s_LOGISIM_BUS_1[26]                = s_LOGISIM_BUS_36[27];
   assign s_LOGISIM_BUS_1[27]                = s_LOGISIM_BUS_58[28];
   assign s_LOGISIM_BUS_1[27]                = s_LOGISIM_BUS_36[28];
   assign s_LOGISIM_BUS_1[28]                = s_LOGISIM_BUS_58[29];
   assign s_LOGISIM_BUS_1[28]                = s_LOGISIM_BUS_36[29];
   assign s_LOGISIM_BUS_1[29]                = s_LOGISIM_BUS_58[30];
   assign s_LOGISIM_BUS_1[29]                = s_LOGISIM_BUS_36[30];
   assign s_LOGISIM_BUS_1[30]                = s_LOGISIM_BUS_58[31];
   assign s_LOGISIM_BUS_1[30]                = s_LOGISIM_BUS_36[31];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_56[31:0]             = mem_din_i;
   assign s_LOGISIM_BUS_6[31:0]              = instr;
   assign s_LOGISIM_NET_29                   = rst_n;
   assign s_LOGISIM_NET_47                   = clk;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign instr_addr                         = s_LOGISIM_BUS_50[31:0];
   assign mem_wen_o                          = s_LOGISIM_NET_62;
   assign mem_be0_o                          = s_LOGISIM_NET_32;
   assign mem_be1_o                          = s_LOGISIM_NET_63;
   assign mem_be2_o                          = s_LOGISIM_NET_33;
   assign mem_be3_o                          = s_LOGISIM_NET_64;
   assign mem_addr_o                         = s_LOGISIM_BUS_70[31:0];
   assign mem_dout_o                         = s_LOGISIM_BUS_31[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_28[31:0] = 32'd4;

   assign s_LOGISIM_BUS_58[0] = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_72),
                         .Result(s_LOGISIM_NET_3));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_18),
              .Input_2(s_LOGISIM_NET_54),
              .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_8),
              .Input_2(s_LOGISIM_BUS_36[0]),
              .Result(s_LOGISIM_NET_11));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_35),
              .Input_2(s_LOGISIM_NET_66),
              .Result(s_LOGISIM_NET_2));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_4),
                         .Result(s_LOGISIM_NET_46));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_72),
              .Input_2(s_LOGISIM_NET_4),
              .Input_3(s_LOGISIM_NET_2),
              .Input_4(s_LOGISIM_NET_23),
              .Input_5(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_67));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_72),
              .Input_2(s_LOGISIM_NET_2),
              .Input_3(s_LOGISIM_NET_10),
              .Input_4(s_LOGISIM_NET_23),
              .Input_5(s_LOGISIM_NET_4),
              .Result(s_LOGISIM_NET_0));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_30),
                         .Result(s_LOGISIM_NET_45));

   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_18),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_30));

   OR_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_4),
               .Input_2(s_LOGISIM_NET_51),
               .Result(s_LOGISIM_NET_49));

   OR_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_19),
               .Input_2(s_LOGISIM_NET_57),
               .Result(s_LOGISIM_NET_34));

   OR_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_13),
               .Input_2(s_LOGISIM_NET_52),
               .Result(s_LOGISIM_NET_48));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[31:0]),
             .MuxOut(s_LOGISIM_BUS_36[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_17[31:0]),
             .MuxOut(s_LOGISIM_BUS_73[31:0]),
             .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_36[31:0]),
             .MuxOut(s_LOGISIM_BUS_53[31:0]),
             .Sel(s_LOGISIM_NET_46));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(s_LOGISIM_NET_10),
             .MuxIn_0(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_7[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_17[31:0]),
             .MuxOut(s_LOGISIM_BUS_68[31:0]),
             .Sel(s_LOGISIM_NET_0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_50[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_61[31:0]),
             .MuxOut(s_LOGISIM_BUS_43[31:0]),
             .Sel(s_LOGISIM_NET_45));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_58[31:0]),
             .MuxOut(s_LOGISIM_BUS_60[31:0]),
             .Sel(s_LOGISIM_NET_4));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(1'b0),
                 .CarryOut(open),
                 .DataA(s_LOGISIM_BUS_50[31:0]),
                 .DataB(s_LOGISIM_BUS_73[31:0]),
                 .Result(s_LOGISIM_BUS_15[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_60[31:0]),
                       .Q(s_LOGISIM_BUS_50[31:0]),
                       .Reset(s_LOGISIM_NET_29),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   rv32i_alu      i_alu (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .dout(s_LOGISIM_BUS_12[31:0]),
                         .op_add(s_LOGISIM_NET_49),
                         .op_and(s_LOGISIM_NET_40),
                         .op_eq(s_LOGISIM_NET_25),
                         .op_ge(s_LOGISIM_NET_55),
                         .op_geu(s_LOGISIM_NET_37),
                         .op_lt(s_LOGISIM_NET_34),
                         .op_ltu(s_LOGISIM_NET_48),
                         .op_ne(s_LOGISIM_NET_69),
                         .op_or(s_LOGISIM_NET_59),
                         .op_rs2_imm(s_LOGISIM_NET_16),
                         .op_sll(s_LOGISIM_NET_24),
                         .op_sra(s_LOGISIM_NET_71),
                         .op_srl(s_LOGISIM_NET_26),
                         .op_sub(s_LOGISIM_NET_39),
                         .op_xor(s_LOGISIM_NET_41),
                         .rsa(s_LOGISIM_BUS_43[31:0]),
                         .rsb_imm(s_LOGISIM_BUS_68[31:0]));

   rv32i_lsu      rv32i_lsu_1 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                               .be0_o(s_LOGISIM_NET_32),
                               .be1_o(s_LOGISIM_NET_63),
                               .be2_o(s_LOGISIM_NET_33),
                               .be3_o(s_LOGISIM_NET_64),
                               .func3_i(s_LOGISIM_BUS_14[2:0]),
                               .mem_addr_i(s_LOGISIM_BUS_12[31:0]),
                               .mem_addr_o(s_LOGISIM_BUS_70[31:0]),
                               .rdat_o(s_LOGISIM_BUS_20[31:0]),
                               .rmem_i(s_LOGISIM_BUS_56[31:0]),
                               .st_i(s_LOGISIM_NET_10),
                               .wdat_i(s_LOGISIM_BUS_9[31:0]),
                               .wenmem_o(s_LOGISIM_NET_62),
                               .wmem_o(s_LOGISIM_BUS_31[31:0]));

   rv32i_indec      i_indec (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .ar_i(s_LOGISIM_NET_23),
                             .ar_r(s_LOGISIM_NET_5),
                             .auipc(s_LOGISIM_NET_66),
                             .br(s_LOGISIM_NET_8),
                             .ebc(s_LOGISIM_NET_65),
                             .funct3(s_LOGISIM_BUS_14[2:0]),
                             .funct7(s_LOGISIM_BUS_27[6:0]),
                             .imm(s_LOGISIM_BUS_17[31:0]),
                             .instr(s_LOGISIM_BUS_6[31:0]),
                             .jal(s_LOGISIM_NET_18),
                             .jalr(s_LOGISIM_NET_54),
                             .ld(s_LOGISIM_NET_72),
                             .lui(s_LOGISIM_NET_35),
                             .rd(s_LOGISIM_BUS_38[4:0]),
                             .rs1(s_LOGISIM_BUS_22[4:0]),
                             .rs2(s_LOGISIM_BUS_42[4:0]),
                             .st(s_LOGISIM_NET_10));

   rv32i_regfile      i_regfile (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                 .clk(s_LOGISIM_NET_47),
                                 .din(s_LOGISIM_BUS_53[31:0]),
                                 .rd(s_LOGISIM_BUS_38[4:0]),
                                 .rs1(s_LOGISIM_BUS_22[4:0]),
                                 .rs2(s_LOGISIM_BUS_42[4:0]),
                                 .rsa(s_LOGISIM_BUS_61[31:0]),
                                 .rsb(s_LOGISIM_BUS_7[31:0]),
                                 .rst_n(s_LOGISIM_NET_29),
                                 .wen(s_LOGISIM_NET_67));

   rv32i_aludec      i_decoder (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                .ar(s_LOGISIM_NET_5),
                                .ar_i(s_LOGISIM_NET_23),
                                .br(s_LOGISIM_NET_8),
                                .funct3(s_LOGISIM_BUS_14[2:0]),
                                .funct7(s_LOGISIM_BUS_27[6:0]),
                                .lui_auipc(s_LOGISIM_NET_2),
                                .op_add(s_LOGISIM_NET_51),
                                .op_and(s_LOGISIM_NET_40),
                                .op_beq(s_LOGISIM_NET_25),
                                .op_bge(s_LOGISIM_NET_55),
                                .op_bgeu(s_LOGISIM_NET_37),
                                .op_blt(s_LOGISIM_NET_57),
                                .op_bltu(s_LOGISIM_NET_52),
                                .op_bne(s_LOGISIM_NET_69),
                                .op_or(s_LOGISIM_NET_59),
                                .op_rs2_imm(s_LOGISIM_NET_16),
                                .op_sll(s_LOGISIM_NET_24),
                                .op_slt(s_LOGISIM_NET_19),
                                .op_sltu(s_LOGISIM_NET_13),
                                .op_sra(s_LOGISIM_NET_71),
                                .op_srl(s_LOGISIM_NET_26),
                                .op_sub(s_LOGISIM_NET_39),
                                .op_xor(s_LOGISIM_NET_41));



endmodule

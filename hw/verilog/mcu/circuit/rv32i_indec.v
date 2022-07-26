/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_indec                                                  **
 **                                                                          **
 ******************************************************************************/

module rv32i_indec( LOGISIM_CLOCK_TREE_0,
                    instr,
                    ar_i,
                    ar_r,
                    auipc,
                    br,
                    ebc,
                    funct3,
                    funct7,
                    imm,
                    jal,
                    jalr,
                    ld,
                    lui,
                    rd,
                    rs1,
                    rs2,
                    st);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  instr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output ar_i;
   output ar_r;
   output auipc;
   output br;
   output ebc;
   output[2:0] funct3;
   output[6:0] funct7;
   output[31:0] imm;
   output jal;
   output jalr;
   output ld;
   output lui;
   output[4:0] rd;
   output[4:0] rs1;
   output[4:0] rs2;
   output st;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_10;
   wire[6:0] s_LOGISIM_BUS_11;
   wire[6:0] s_LOGISIM_BUS_12;
   wire[6:0] s_LOGISIM_BUS_13;
   wire[3:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[6:0] s_LOGISIM_BUS_24;
   wire[6:0] s_LOGISIM_BUS_25;
   wire[4:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[3:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[6:0] s_LOGISIM_BUS_32;
   wire[6:0] s_LOGISIM_BUS_33;
   wire[6:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[6:0] s_LOGISIM_BUS_37;
   wire[6:0] s_LOGISIM_BUS_38;
   wire[6:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[4:0] s_LOGISIM_BUS_40;
   wire[5:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_5[0]                 = s_LOGISIM_BUS_21[25];
   assign s_LOGISIM_BUS_13[0]                = s_LOGISIM_BUS_5[0];
   assign s_LOGISIM_BUS_5[1]                 = s_LOGISIM_BUS_13[1];
   assign s_LOGISIM_BUS_5[1]                 = s_LOGISIM_BUS_21[26];
   assign s_LOGISIM_BUS_5[2]                 = s_LOGISIM_BUS_13[2];
   assign s_LOGISIM_BUS_5[2]                 = s_LOGISIM_BUS_21[27];
   assign s_LOGISIM_BUS_5[3]                 = s_LOGISIM_BUS_13[3];
   assign s_LOGISIM_BUS_5[3]                 = s_LOGISIM_BUS_21[28];
   assign s_LOGISIM_BUS_5[4]                 = s_LOGISIM_BUS_13[4];
   assign s_LOGISIM_BUS_5[4]                 = s_LOGISIM_BUS_21[29];
   assign s_LOGISIM_BUS_5[5]                 = s_LOGISIM_BUS_13[5];
   assign s_LOGISIM_BUS_5[5]                 = s_LOGISIM_BUS_21[30];
   assign s_LOGISIM_NET_7                    = s_LOGISIM_BUS_21[31];
   assign s_LOGISIM_BUS_13[6]                = s_LOGISIM_NET_7;
   assign s_LOGISIM_NET_14                   = s_LOGISIM_BUS_21[20];
   assign s_LOGISIM_BUS_40[0]                = s_LOGISIM_NET_14;
   assign s_LOGISIM_BUS_16[0]                = s_LOGISIM_BUS_21[21];
   assign s_LOGISIM_BUS_40[1]                = s_LOGISIM_BUS_16[0];
   assign s_LOGISIM_BUS_16[1]                = s_LOGISIM_BUS_40[2];
   assign s_LOGISIM_BUS_16[1]                = s_LOGISIM_BUS_21[22];
   assign s_LOGISIM_BUS_16[2]                = s_LOGISIM_BUS_40[3];
   assign s_LOGISIM_BUS_16[2]                = s_LOGISIM_BUS_21[23];
   assign s_LOGISIM_BUS_16[3]                = s_LOGISIM_BUS_40[4];
   assign s_LOGISIM_BUS_16[3]                = s_LOGISIM_BUS_21[24];
   assign s_LOGISIM_NET_19                   = s_LOGISIM_BUS_21[7];
   assign s_LOGISIM_BUS_26[0]                = s_LOGISIM_NET_19;
   assign s_LOGISIM_BUS_28[0]                = s_LOGISIM_BUS_21[8];
   assign s_LOGISIM_BUS_26[1]                = s_LOGISIM_BUS_28[0];
   assign s_LOGISIM_BUS_28[1]                = s_LOGISIM_BUS_26[2];
   assign s_LOGISIM_BUS_28[1]                = s_LOGISIM_BUS_21[9];
   assign s_LOGISIM_BUS_28[2]                = s_LOGISIM_BUS_26[3];
   assign s_LOGISIM_BUS_28[2]                = s_LOGISIM_BUS_21[10];
   assign s_LOGISIM_BUS_28[3]                = s_LOGISIM_BUS_26[4];
   assign s_LOGISIM_BUS_28[3]                = s_LOGISIM_BUS_21[11];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_21[31:0]             = instr;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign rd                                 = s_LOGISIM_BUS_26[4:0];
   assign funct3                             = s_LOGISIM_BUS_21[14:12];
   assign rs1                                = s_LOGISIM_BUS_21[19:15];
   assign rs2                                = s_LOGISIM_BUS_40[4:0];
   assign funct7                             = s_LOGISIM_BUS_13[6:0];
   assign imm                                = s_LOGISIM_BUS_27[31:0];
   assign ar_r                               = s_LOGISIM_NET_35;
   assign ar_i                               = s_LOGISIM_NET_41;
   assign ld                                 = s_LOGISIM_NET_17;
   assign st                                 = s_LOGISIM_NET_20;
   assign br                                 = s_LOGISIM_NET_15;
   assign jal                                = s_LOGISIM_NET_0;
   assign jalr                               = s_LOGISIM_NET_18;
   assign lui                                = s_LOGISIM_NET_2;
   assign auipc                              = s_LOGISIM_NET_31;
   assign ebc                                = s_LOGISIM_NET_42;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_32[6:0] = 7'd51;

   assign s_LOGISIM_BUS_37[6:0] = 7'd19;

   assign s_LOGISIM_BUS_11[6:0] = 7'd3;

   assign s_LOGISIM_BUS_24[6:0] = 7'd35;

   assign s_LOGISIM_BUS_33[6:0] = 7'd99;

   assign s_LOGISIM_BUS_38[6:0] = 7'd111;

   assign s_LOGISIM_BUS_12[6:0] = 7'd103;

   assign s_LOGISIM_BUS_25[6:0] = 7'd55;

   assign s_LOGISIM_BUS_34[6:0] = 7'd23;

   assign s_LOGISIM_BUS_39[6:0] = 7'd115;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_31),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_29));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_36[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_23[31:0]),
             .MuxOut(s_LOGISIM_BUS_6[31:0]),
             .Sel(s_LOGISIM_NET_20));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_3[31:0]),
             .MuxOut(s_LOGISIM_BUS_8[31:0]),
             .Sel(s_LOGISIM_NET_15));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_4[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_NET_29));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_10[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_NET_0));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_35),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_32[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_41),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_37[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_17),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_11[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_20),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_24[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_15),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_33[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_0),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_38[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_18),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_12[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_2),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_25[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_31),
                    .A_GT_B(open),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_21[6:0]),
                    .DataB(s_LOGISIM_BUS_34[6:0]));

   Comparator #(.NrOfBits(7),
                .TwosComplement(1))
      Comparator_10 (.A_EQ_B(s_LOGISIM_NET_42),
                     .A_GT_B(open),
                     .A_LT_B(open),
                     .DataA(s_LOGISIM_BUS_21[6:0]),
                     .DataB(s_LOGISIM_BUS_39[6:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   rv32i_imm      rv32i_imm_1 (.B_imm(s_LOGISIM_BUS_3[31:0]),
                               .I_imm(s_LOGISIM_BUS_36[31:0]),
                               .J_imm(s_LOGISIM_BUS_10[31:0]),
                               .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                               .S_imm(s_LOGISIM_BUS_23[31:0]),
                               .U_imm(s_LOGISIM_BUS_4[31:0]),
                               .instr(s_LOGISIM_BUS_21[31:0]));



endmodule

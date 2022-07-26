/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_lsu                                                    **
 **                                                                          **
 ******************************************************************************/

module rv32i_lsu( LOGISIM_CLOCK_TREE_0,
                  func3_i,
                  mem_addr_i,
                  rmem_i,
                  st_i,
                  wdat_i,
                  be0_o,
                  be1_o,
                  be2_o,
                  be3_o,
                  mem_addr_o,
                  rdat_o,
                  wenmem_o,
                  wmem_o);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[2:0]  func3_i;
   input[31:0]  mem_addr_i;
   input[31:0]  rmem_i;
   input  st_i;
   input[31:0]  wdat_i;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output be0_o;
   output be1_o;
   output be2_o;
   output be3_o;
   output[31:0] mem_addr_o;
   output[31:0] rdat_o;
   output wenmem_o;
   output[31:0] wmem_o;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[15:0] s_LOGISIM_BUS_14;
   wire[4:0] s_LOGISIM_BUS_15;
   wire[7:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[4:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[4:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[4:0] s_LOGISIM_BUS_35;
   wire[3:0] s_LOGISIM_BUS_37;
   wire[3:0] s_LOGISIM_BUS_38;
   wire[2:0] s_LOGISIM_BUS_4;
   wire[15:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[4:0] s_LOGISIM_BUS_47;
   wire[4:0] s_LOGISIM_BUS_48;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[3:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[3:0] s_LOGISIM_BUS_52;
   wire[31:0] s_LOGISIM_BUS_53;
   wire[3:0] s_LOGISIM_BUS_54;
   wire[3:0] s_LOGISIM_BUS_59;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[4:0] s_LOGISIM_BUS_60;
   wire[4:0] s_LOGISIM_BUS_61;
   wire[4:0] s_LOGISIM_BUS_62;
   wire[3:0] s_LOGISIM_BUS_63;
   wire[4:0] s_LOGISIM_BUS_64;
   wire[31:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_67;
   wire[31:0] s_LOGISIM_BUS_68;
   wire[31:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_65;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[2:0]               = func3_i;
   assign s_LOGISIM_BUS_1[31:0]              = wdat_i;
   assign s_LOGISIM_BUS_19[31:0]             = mem_addr_i;
   assign s_LOGISIM_BUS_8[31:0]              = rmem_i;
   assign s_LOGISIM_NET_20                   = st_i;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign wenmem_o                           = s_LOGISIM_NET_20;
   assign wmem_o                             = s_LOGISIM_BUS_49[31:0];
   assign mem_addr_o                         = s_LOGISIM_BUS_19[31:0];
   assign rdat_o                             = s_LOGISIM_BUS_34[31:0];
   assign be0_o                              = s_LOGISIM_BUS_59[0];
   assign be1_o                              = s_LOGISIM_BUS_59[1];
   assign be2_o                              = s_LOGISIM_BUS_59[2];
   assign be3_o                              = s_LOGISIM_BUS_59[3];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_60[4:0] = 5'd8;

   assign s_LOGISIM_BUS_15[4:0] = 5'd16;

   assign s_LOGISIM_BUS_29[4:0] = 5'd24;

   assign s_LOGISIM_BUS_32[4:0] = 5'd8;

   assign s_LOGISIM_BUS_61[4:0] = 5'd16;

   assign s_LOGISIM_BUS_62[4:0] = 5'd24;

   assign s_LOGISIM_BUS_47[4:0] = 5'd8;

   assign s_LOGISIM_BUS_64[4:0] = 5'd16;

   assign s_LOGISIM_BUS_35[4:0] = 5'd8;

   assign s_LOGISIM_BUS_48[4:0] = 5'd16;

   assign s_LOGISIM_BUS_40[15:0] = 16'd65535;

   assign s_LOGISIM_BUS_24[0] = s_LOGISIM_BUS_18[0];
   assign s_LOGISIM_BUS_24[1] = s_LOGISIM_BUS_18[1];
   assign s_LOGISIM_BUS_24[2] = s_LOGISIM_BUS_18[2];
   assign s_LOGISIM_BUS_24[3] = s_LOGISIM_BUS_18[3];
   assign s_LOGISIM_BUS_24[4] = s_LOGISIM_BUS_18[4];
   assign s_LOGISIM_BUS_24[5] = s_LOGISIM_BUS_18[5];
   assign s_LOGISIM_BUS_24[6] = s_LOGISIM_BUS_18[6];
   assign s_LOGISIM_BUS_24[7] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[8] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[9] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[10] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[11] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[12] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[13] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[14] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[15] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[16] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[17] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[18] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[19] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[20] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[21] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[22] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[23] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[24] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[25] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[26] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[27] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[28] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[29] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[30] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_24[31] = s_LOGISIM_BUS_18[7];

   assign s_LOGISIM_BUS_2[0] = s_LOGISIM_BUS_18[0];
   assign s_LOGISIM_BUS_2[1] = s_LOGISIM_BUS_18[1];
   assign s_LOGISIM_BUS_2[2] = s_LOGISIM_BUS_18[2];
   assign s_LOGISIM_BUS_2[3] = s_LOGISIM_BUS_18[3];
   assign s_LOGISIM_BUS_2[4] = s_LOGISIM_BUS_18[4];
   assign s_LOGISIM_BUS_2[5] = s_LOGISIM_BUS_18[5];
   assign s_LOGISIM_BUS_2[6] = s_LOGISIM_BUS_18[6];
   assign s_LOGISIM_BUS_2[7] = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_2[8] = 1'b0;
   assign s_LOGISIM_BUS_2[9] = 1'b0;
   assign s_LOGISIM_BUS_2[10] = 1'b0;
   assign s_LOGISIM_BUS_2[11] = 1'b0;
   assign s_LOGISIM_BUS_2[12] = 1'b0;
   assign s_LOGISIM_BUS_2[13] = 1'b0;
   assign s_LOGISIM_BUS_2[14] = 1'b0;
   assign s_LOGISIM_BUS_2[15] = 1'b0;
   assign s_LOGISIM_BUS_2[16] = 1'b0;
   assign s_LOGISIM_BUS_2[17] = 1'b0;
   assign s_LOGISIM_BUS_2[18] = 1'b0;
   assign s_LOGISIM_BUS_2[19] = 1'b0;
   assign s_LOGISIM_BUS_2[20] = 1'b0;
   assign s_LOGISIM_BUS_2[21] = 1'b0;
   assign s_LOGISIM_BUS_2[22] = 1'b0;
   assign s_LOGISIM_BUS_2[23] = 1'b0;
   assign s_LOGISIM_BUS_2[24] = 1'b0;
   assign s_LOGISIM_BUS_2[25] = 1'b0;
   assign s_LOGISIM_BUS_2[26] = 1'b0;
   assign s_LOGISIM_BUS_2[27] = 1'b0;
   assign s_LOGISIM_BUS_2[28] = 1'b0;
   assign s_LOGISIM_BUS_2[29] = 1'b0;
   assign s_LOGISIM_BUS_2[30] = 1'b0;
   assign s_LOGISIM_BUS_2[31] = 1'b0;

   assign s_LOGISIM_BUS_13[31:0] = 32'd4294967295;

   assign s_LOGISIM_BUS_37[3:0] = 4'd3;

   assign s_LOGISIM_BUS_50[3:0] = 4'd1;

   assign s_LOGISIM_BUS_23[0] = s_LOGISIM_BUS_14[0];
   assign s_LOGISIM_BUS_23[1] = s_LOGISIM_BUS_14[1];
   assign s_LOGISIM_BUS_23[2] = s_LOGISIM_BUS_14[2];
   assign s_LOGISIM_BUS_23[3] = s_LOGISIM_BUS_14[3];
   assign s_LOGISIM_BUS_23[4] = s_LOGISIM_BUS_14[4];
   assign s_LOGISIM_BUS_23[5] = s_LOGISIM_BUS_14[5];
   assign s_LOGISIM_BUS_23[6] = s_LOGISIM_BUS_14[6];
   assign s_LOGISIM_BUS_23[7] = s_LOGISIM_BUS_14[7];
   assign s_LOGISIM_BUS_23[8] = s_LOGISIM_BUS_14[8];
   assign s_LOGISIM_BUS_23[9] = s_LOGISIM_BUS_14[9];
   assign s_LOGISIM_BUS_23[10] = s_LOGISIM_BUS_14[10];
   assign s_LOGISIM_BUS_23[11] = s_LOGISIM_BUS_14[11];
   assign s_LOGISIM_BUS_23[12] = s_LOGISIM_BUS_14[12];
   assign s_LOGISIM_BUS_23[13] = s_LOGISIM_BUS_14[13];
   assign s_LOGISIM_BUS_23[14] = s_LOGISIM_BUS_14[14];
   assign s_LOGISIM_BUS_23[15] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[16] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[17] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[18] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[19] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[20] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[21] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[22] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[23] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[24] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[25] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[26] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[27] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[28] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[29] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[30] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_23[31] = s_LOGISIM_BUS_14[15];

   assign s_LOGISIM_BUS_0[0] = s_LOGISIM_BUS_14[0];
   assign s_LOGISIM_BUS_0[1] = s_LOGISIM_BUS_14[1];
   assign s_LOGISIM_BUS_0[2] = s_LOGISIM_BUS_14[2];
   assign s_LOGISIM_BUS_0[3] = s_LOGISIM_BUS_14[3];
   assign s_LOGISIM_BUS_0[4] = s_LOGISIM_BUS_14[4];
   assign s_LOGISIM_BUS_0[5] = s_LOGISIM_BUS_14[5];
   assign s_LOGISIM_BUS_0[6] = s_LOGISIM_BUS_14[6];
   assign s_LOGISIM_BUS_0[7] = s_LOGISIM_BUS_14[7];
   assign s_LOGISIM_BUS_0[8] = s_LOGISIM_BUS_14[8];
   assign s_LOGISIM_BUS_0[9] = s_LOGISIM_BUS_14[9];
   assign s_LOGISIM_BUS_0[10] = s_LOGISIM_BUS_14[10];
   assign s_LOGISIM_BUS_0[11] = s_LOGISIM_BUS_14[11];
   assign s_LOGISIM_BUS_0[12] = s_LOGISIM_BUS_14[12];
   assign s_LOGISIM_BUS_0[13] = s_LOGISIM_BUS_14[13];
   assign s_LOGISIM_BUS_0[14] = s_LOGISIM_BUS_14[14];
   assign s_LOGISIM_BUS_0[15] = s_LOGISIM_BUS_14[15];
   assign s_LOGISIM_BUS_0[16] = 1'b0;
   assign s_LOGISIM_BUS_0[17] = 1'b0;
   assign s_LOGISIM_BUS_0[18] = 1'b0;
   assign s_LOGISIM_BUS_0[19] = 1'b0;
   assign s_LOGISIM_BUS_0[20] = 1'b0;
   assign s_LOGISIM_BUS_0[21] = 1'b0;
   assign s_LOGISIM_BUS_0[22] = 1'b0;
   assign s_LOGISIM_BUS_0[23] = 1'b0;
   assign s_LOGISIM_BUS_0[24] = 1'b0;
   assign s_LOGISIM_BUS_0[25] = 1'b0;
   assign s_LOGISIM_BUS_0[26] = 1'b0;
   assign s_LOGISIM_BUS_0[27] = 1'b0;
   assign s_LOGISIM_BUS_0[28] = 1'b0;
   assign s_LOGISIM_BUS_0[29] = 1'b0;
   assign s_LOGISIM_BUS_0[30] = 1'b0;
   assign s_LOGISIM_BUS_0[31] = 1'b0;

   assign s_LOGISIM_BUS_38[3:0] = 4'd15;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(3))
      GATE_2 (.Input_1(s_LOGISIM_BUS_4[0]),
              .Input_2(s_LOGISIM_BUS_4[1]),
              .Result(s_LOGISIM_NET_55));

   AND_GATE #(.BubblesMask(2))
      GATE_3 (.Input_1(s_LOGISIM_BUS_4[0]),
              .Input_2(s_LOGISIM_BUS_4[1]),
              .Result(s_LOGISIM_NET_65));

   AND_GATE #(.BubblesMask(1))
      GATE_4 (.Input_1(s_LOGISIM_BUS_4[0]),
              .Input_2(s_LOGISIM_BUS_4[1]),
              .Result(s_LOGISIM_NET_42));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_51[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_BUS_19[1:0]));

   Multiplexer_bus_4 #(.NrOfBits(8))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[7:0]),
             .MuxIn_1(s_LOGISIM_BUS_67[7:0]),
             .MuxIn_2(s_LOGISIM_BUS_68[7:0]),
             .MuxIn_3(s_LOGISIM_BUS_69[7:0]),
             .MuxOut(s_LOGISIM_BUS_18[7:0]),
             .Sel(s_LOGISIM_BUS_19[1:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_24[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_2[31:0]),
             .MuxOut(s_LOGISIM_BUS_41[31:0]),
             .Sel(s_LOGISIM_BUS_4[2]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_5[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_13[31:0]),
             .MuxOut(s_LOGISIM_BUS_44[31:0]),
             .Sel(s_LOGISIM_BUS_19[1:0]));

   Multiplexer_bus_4 #(.NrOfBits(16))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_66[15:0]),
             .MuxIn_2(s_LOGISIM_BUS_21[15:0]),
             .MuxIn_3(s_LOGISIM_BUS_40[15:0]),
             .MuxOut(s_LOGISIM_BUS_14[15:0]),
             .Sel(s_LOGISIM_BUS_19[1:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_44[31:0]),
             .MuxOut(s_LOGISIM_BUS_31[31:0]),
             .Sel(s_LOGISIM_NET_65));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_31[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_9[31:0]),
             .MuxOut(s_LOGISIM_BUS_49[31:0]),
             .Sel(s_LOGISIM_NET_55));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_23[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_53[31:0]),
             .Sel(s_LOGISIM_BUS_4[2]));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_38[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_63[3:0]),
             .MuxOut(s_LOGISIM_BUS_54[3:0]),
             .Sel(s_LOGISIM_NET_65));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_8[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_53[31:0]),
              .MuxOut(s_LOGISIM_BUS_12[31:0]),
              .Sel(s_LOGISIM_NET_65));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_54[3:0]),
              .MuxIn_1(s_LOGISIM_BUS_52[3:0]),
              .MuxOut(s_LOGISIM_BUS_59[3:0]),
              .Sel(s_LOGISIM_NET_55));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_41[31:0]),
              .MuxOut(s_LOGISIM_BUS_34[31:0]),
              .Sel(s_LOGISIM_NET_55));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_6[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_60[4:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_2 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_10[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_15[4:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_3 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_51[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_29[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_4 (.DataA(s_LOGISIM_BUS_8[31:0]),
                 .Result(s_LOGISIM_BUS_67[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_32[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_5 (.DataA(s_LOGISIM_BUS_8[31:0]),
                 .Result(s_LOGISIM_BUS_68[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_61[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_6 (.DataA(s_LOGISIM_BUS_8[31:0]),
                 .Result(s_LOGISIM_BUS_69[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_62[4:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_7 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_28[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_47[4:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_8 (.DataA(s_LOGISIM_BUS_1[31:0]),
                 .Result(s_LOGISIM_BUS_5[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_64[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_9 (.DataA(s_LOGISIM_BUS_8[31:0]),
                 .Result(s_LOGISIM_BUS_66[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_35[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_10 (.DataA(s_LOGISIM_BUS_8[31:0]),
                  .Result(s_LOGISIM_BUS_21[31:0]),
                  .ShiftAmount(s_LOGISIM_BUS_48[4:0]));

   Shifter_4_bit #(.ShifterMode(0))
      Shifter_11 (.DataA(s_LOGISIM_BUS_37[3:0]),
                  .Result(s_LOGISIM_BUS_63[3:0]),
                  .ShiftAmount(s_LOGISIM_BUS_19[1:0]));

   Shifter_4_bit #(.ShifterMode(0))
      Shifter_12 (.DataA(s_LOGISIM_BUS_50[3:0]),
                  .Result(s_LOGISIM_BUS_52[3:0]),
                  .ShiftAmount(s_LOGISIM_BUS_19[1:0]));



endmodule

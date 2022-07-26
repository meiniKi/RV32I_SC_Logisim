/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_regbank                                                **
 **                                                                          **
 ******************************************************************************/

module rv32i_regbank( LOGISIM_CLOCK_TREE_0,
                      clk,
                      din,
                      is_upper,
                      rd_16,
                      rs1_16,
                      rs2_16,
                      rst_n,
                      wen,
                      rs1_d,
                      rs2_d);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  clk;
   input[31:0]  din;
   input  is_upper;
   input[3:0]  rd_16;
   input[3:0]  rs1_16;
   input[3:0]  rs2_16;
   input  rst_n;
   input  wen;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] rs1_d;
   output[31:0] rs2_d;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[3:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[3:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_46;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[3:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_17                   = clk;
   assign s_LOGISIM_NET_7                    = rst_n;
   assign s_LOGISIM_BUS_15[3:0]              = rs2_16;
   assign s_LOGISIM_NET_1                    = wen;
   assign s_LOGISIM_BUS_12[3:0]              = rd_16;
   assign s_LOGISIM_NET_55                   = is_upper;
   assign s_LOGISIM_BUS_5[3:0]               = rs1_16;
   assign s_LOGISIM_BUS_35[31:0]             = din;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign rs1_d                              = s_LOGISIM_BUS_27[31:0];
   assign rs2_d                              = s_LOGISIM_BUS_2[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_6[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_BUS_12[3]),
              .Result(s_LOGISIM_NET_52));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_BUS_12[3]),
              .Input_2(s_LOGISIM_NET_1),
              .Result(s_LOGISIM_NET_54));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_44[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_33[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_48[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_41[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_28[31:0]),
             .MuxOut(s_LOGISIM_BUS_0[31:0]),
             .Sel(s_LOGISIM_BUS_5[2:0]));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_44[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_33[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_48[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_41[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_28[31:0]),
             .MuxOut(s_LOGISIM_BUS_50[31:0]),
             .Sel(s_LOGISIM_BUS_15[2:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_BUS_5[3]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_50[31:0]),
             .MuxOut(s_LOGISIM_BUS_2[31:0]),
             .Sel(s_LOGISIM_BUS_15[3]));

   Demultiplexer_8      DEMUX_1 (.DemuxIn(s_LOGISIM_NET_54),
                                 .DemuxOut_0(s_LOGISIM_NET_47),
                                 .DemuxOut_1(s_LOGISIM_NET_22),
                                 .DemuxOut_2(s_LOGISIM_NET_9),
                                 .DemuxOut_3(s_LOGISIM_NET_36),
                                 .DemuxOut_4(s_LOGISIM_NET_34),
                                 .DemuxOut_5(s_LOGISIM_NET_16),
                                 .DemuxOut_6(s_LOGISIM_NET_25),
                                 .DemuxOut_7(s_LOGISIM_NET_37),
                                 .Enable(1'b1),
                                 .Sel(s_LOGISIM_BUS_12[2:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_45[31:0]),
             .MuxOut(s_LOGISIM_BUS_51[31:0]),
             .Sel(s_LOGISIM_NET_55));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_51[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_38[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_46[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_32[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_18[31:0]),
             .Sel(s_LOGISIM_BUS_5[2:0]));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_51[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_38[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_46[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_32[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_21[31:0]),
             .Sel(s_LOGISIM_BUS_15[2:0]));

   Demultiplexer_8      DEMUX_2 (.DemuxIn(s_LOGISIM_NET_52),
                                 .DemuxOut_0(s_LOGISIM_NET_23),
                                 .DemuxOut_1(s_LOGISIM_NET_43),
                                 .DemuxOut_2(s_LOGISIM_NET_13),
                                 .DemuxOut_3(s_LOGISIM_NET_31),
                                 .DemuxOut_4(s_LOGISIM_NET_4),
                                 .DemuxOut_5(s_LOGISIM_NET_40),
                                 .DemuxOut_6(s_LOGISIM_NET_53),
                                 .DemuxOut_7(s_LOGISIM_NET_24),
                                 .Enable(1'b1),
                                 .Sel(s_LOGISIM_BUS_12[2:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_23),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_44[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_43),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_11[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_13),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_26[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_31),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_33[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_48[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_40),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_41[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_53),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_14[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_24),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_28[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_47),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_45[31:0]),
                       .Reset(s_LOGISIM_NET_7),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_22),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_38[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_9),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_3[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_12 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_36),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_46[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_34),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_10[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_16),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_32[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_25),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_20[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                        .ClockEnable(s_LOGISIM_NET_37),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_8[31:0]),
                        .Reset(s_LOGISIM_NET_7),
                        .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule

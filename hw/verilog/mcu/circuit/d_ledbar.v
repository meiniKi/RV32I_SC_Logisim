/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : d_ledbar                                                     **
 **                                                                          **
 ******************************************************************************/

module d_ledbar( LOGISIM_CLOCK_TREE_0,
                 be0_i,
                 be1_i,
                 be2_i,
                 be3_i,
                 clk_i,
                 d_i,
                 rst_in,
                 wen_i,
                 d_rd_o,
                 data_o);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  be0_i;
   input  be1_i;
   input  be2_i;
   input  be3_i;
   input  clk_i;
   input[31:0]  d_i;
   input  rst_in;
   input  wen_i;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] d_rd_o;
   output[31:0] data_o;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_13;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_13[31:0]             = d_i;
   assign s_LOGISIM_NET_2                    = be0_i;
   assign s_LOGISIM_NET_6                    = be1_i;
   assign s_LOGISIM_NET_7                    = be2_i;
   assign s_LOGISIM_NET_20                   = be3_i;
   assign s_LOGISIM_NET_11                   = wen_i;
   assign s_LOGISIM_NET_12                   = clk_i;
   assign s_LOGISIM_NET_0                    = rst_in;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign data_o                             = s_LOGISIM_BUS_10[31:0];
   assign d_rd_o                             = s_LOGISIM_BUS_10[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_2),
              .Input_2(s_LOGISIM_NET_11),
              .Result(s_LOGISIM_NET_3));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_11),
              .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_7),
              .Input_2(s_LOGISIM_NET_11),
              .Result(s_LOGISIM_NET_5));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_20),
              .Input_2(s_LOGISIM_NET_11),
              .Result(s_LOGISIM_NET_14));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(8))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_3),
                       .D(s_LOGISIM_BUS_13[7:0]),
                       .Q(s_LOGISIM_BUS_10[7:0]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(8))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_13[15:8]),
                       .Q(s_LOGISIM_BUS_10[15:8]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(8))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_5),
                       .D(s_LOGISIM_BUS_13[23:16]),
                       .Q(s_LOGISIM_BUS_10[23:16]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(8))
      REGISTER_FILE_4 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_14),
                       .D(s_LOGISIM_BUS_13[31:24]),
                       .Q(s_LOGISIM_BUS_10[31:24]),
                       .Reset(s_LOGISIM_NET_0),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]));



endmodule

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : sc_bus                                                       **
 **                                                                          **
 ******************************************************************************/

module sc_bus( LOGISIM_CLOCK_TREE_0,
               addr_i,
               be0_i,
               be1_i,
               be2_i,
               be3_i,
               lb_data_i,
               mem_data_i,
               wdata_i,
               we_i,
               lb_be0_0,
               lb_be1_0,
               lb_be2_0,
               lb_be3_0,
               lb_data_o,
               lb_we_o,
               mem_addr_o,
               mem_be0_o,
               mem_be1_o,
               mem_be2_o,
               mem_be3_o,
               mem_data_o,
               mem_we_o,
               rdata_o,
               tty_data_o,
               tty_we_o);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  addr_i;
   input  be0_i;
   input  be1_i;
   input  be2_i;
   input  be3_i;
   input[31:0]  lb_data_i;
   input[31:0]  mem_data_i;
   input[31:0]  wdata_i;
   input  we_i;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output lb_be0_0;
   output lb_be1_0;
   output lb_be2_0;
   output lb_be3_0;
   output[31:0] lb_data_o;
   output lb_we_o;
   output[31:0] mem_addr_o;
   output mem_be0_o;
   output mem_be1_o;
   output mem_be2_o;
   output mem_be3_o;
   output[31:0] mem_data_o;
   output mem_we_o;
   output[31:0] rdata_o;
   output[31:0] tty_data_o;
   output tty_we_o;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_4;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[31:0]              = addr_i;
   assign s_LOGISIM_BUS_13[31:0]             = wdata_i;
   assign s_LOGISIM_NET_6                    = be1_i;
   assign s_LOGISIM_NET_7                    = be2_i;
   assign s_LOGISIM_NET_8                    = be3_i;
   assign s_LOGISIM_NET_9                    = be0_i;
   assign s_LOGISIM_NET_11                   = we_i;
   assign s_LOGISIM_BUS_23[31:0]             = lb_data_i;
   assign s_LOGISIM_BUS_19[31:0]             = mem_data_i;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign lb_data_o                          = s_LOGISIM_BUS_13[31:0];
   assign mem_data_o                         = s_LOGISIM_BUS_13[31:0];
   assign tty_data_o                         = s_LOGISIM_BUS_13[31:0];
   assign mem_addr_o                         = s_LOGISIM_BUS_4[31:0];
   assign mem_be0_o                          = s_LOGISIM_NET_9;
   assign lb_be1_0                           = s_LOGISIM_NET_6;
   assign mem_be1_o                          = s_LOGISIM_NET_6;
   assign lb_be2_0                           = s_LOGISIM_NET_7;
   assign mem_be2_o                          = s_LOGISIM_NET_7;
   assign lb_be3_0                           = s_LOGISIM_NET_8;
   assign mem_be3_o                          = s_LOGISIM_NET_8;
   assign lb_be0_0                           = s_LOGISIM_NET_9;
   assign rdata_o                            = s_LOGISIM_BUS_32[31:0];
   assign mem_we_o                           = s_LOGISIM_NET_24;
   assign tty_we_o                           = s_LOGISIM_NET_29;
   assign lb_we_o                            = s_LOGISIM_NET_35;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_30[31:0] = 32'd4278190080;

   assign s_LOGISIM_BUS_12[31:0] = 32'd0;

   assign s_LOGISIM_BUS_26[31:0] = 32'd4278190084;

   assign s_LOGISIM_BUS_31[31:0] = 32'd4278190080;

   assign s_LOGISIM_BUS_20[31:0] = 32'd4278190088;

   assign s_LOGISIM_BUS_27[31:0] = 32'd4278190084;

   assign s_LOGISIM_BUS_22[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_18),
              .Input_2(s_LOGISIM_NET_25),
              .Result(s_LOGISIM_NET_2));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_3),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_14));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_21),
              .Input_2(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_10));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_5),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_28));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_NET_14),
              .Result(s_LOGISIM_NET_33));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_16),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_34));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_28),
              .Result(s_LOGISIM_NET_24));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_34),
              .Result(s_LOGISIM_NET_29));

   AND_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_33),
              .Result(s_LOGISIM_NET_35));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[31:0]),
             .MuxOut(s_LOGISIM_BUS_32[31:0]),
             .Sel(s_LOGISIM_NET_28));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_22[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_23[31:0]),
             .MuxOut(s_LOGISIM_BUS_15[31:0]),
             .Sel(s_LOGISIM_NET_33));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(open),
                    .A_GT_B(open),
                    .A_LT_B(s_LOGISIM_NET_5),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_30[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_25),
                    .A_GT_B(s_LOGISIM_NET_18),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_12[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_3 (.A_EQ_B(open),
                    .A_GT_B(open),
                    .A_LT_B(s_LOGISIM_NET_1),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_26[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_17),
                    .A_GT_B(s_LOGISIM_NET_3),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_31[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_5 (.A_EQ_B(open),
                    .A_GT_B(open),
                    .A_LT_B(s_LOGISIM_NET_16),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_20[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_0),
                    .A_GT_B(s_LOGISIM_NET_21),
                    .A_LT_B(open),
                    .DataA(s_LOGISIM_BUS_4[31:0]),
                    .DataB(s_LOGISIM_BUS_27[31:0]));



endmodule

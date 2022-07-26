/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 ******************************************************************************/

module mcu  #( parameter ROM_FILE = "test1",
               parameter RAM_FILE = "test2") (
                  input  wire          clk_i,
                  input  wire          rst_in,
                  output wire [31:0]   led_o,
                  output wire [6:0]    tty_o,
                  output wire          tty_we_o
               );

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire [4:0]  LOGISIM_CLOCK_TREE_0;
   wire [31:0] s_LOGISIM_BUS_11;
   wire [31:0] s_LOGISIM_BUS_14;
   wire [31:0] s_LOGISIM_BUS_16;
   wire [31:0] s_LOGISIM_BUS_17;
   wire [31:0] s_LOGISIM_BUS_18;
   wire [31:0] s_LOGISIM_BUS_23;
   wire [31:0] s_LOGISIM_BUS_24;
   wire [31:0] s_LOGISIM_BUS_27;
   wire [31:0] s_LOGISIM_BUS_3;
   wire [31:0] s_LOGISIM_BUS_32;
   wire [4:0]  s_LOGISIM_BUS_33;
   wire [31:0] s_LOGISIM_BUS_34;
   wire [31:0] s_LOGISIM_BUS_35;
   wire [4:0]  s_LOGISIM_BUS_36;
   wire [31:0] s_LOGISIM_BUS_5;
   wire [31:0] s_LOGISIM_BUS_9;
   wire        s_LOGISIM_NET_1;
   wire        s_LOGISIM_NET_10;
   wire        s_LOGISIM_NET_12;
   wire        s_LOGISIM_NET_15;
   wire        s_LOGISIM_NET_2;
   wire        s_LOGISIM_NET_20;
   wire        s_LOGISIM_NET_21;
   wire        s_LOGISIM_NET_22;
   wire        s_LOGISIM_NET_25;
   wire        s_LOGISIM_NET_26;
   wire        s_LOGISIM_NET_28;
   wire        s_LOGISIM_NET_29;
   wire        s_LOGISIM_NET_30;
   wire        s_LOGISIM_NET_31;
   wire        s_LOGISIM_NET_6;
   wire        s_LOGISIM_NET_7;
   wire        s_LOGISIM_NET_8;

   wire clk;
   wire rst;
   wire locked;

   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/

`ifdef SYNTHESIZE

   SB_PLL40_PAD #(
      .FEEDBACK_PATH ("SIMPLE"),
      .DIVR          (4'b0100),	   // DIVR =  4
      .DIVF          (7'b0011111),	// DIVF = 31
      .DIVQ          (3'b101),      // DIVQ =  5
      .FILTER_RANGE  (3'b010)	      // FILTER_RANGE = 2
   ) i_SB_PLL40_PAD (
      .PACKAGEPIN    (clk_i),
      .PLLOUTGLOBAL  (clk),
      .RESETB        (rst_in),
      .BYPASS        (1'b0),
      .LOCK          (locked)
   );

   assign rst_n = locked & rst_in;
`else
   
   assign rst_n   = rst_in;
   assign clk     = clk_i;
   
`endif

   assign LOGISIM_CLOCK_TREE_0               = {5{clk}};
   assign s_LOGISIM_NET_22                   = LOGISIM_CLOCK_TREE_0[0];

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign tty_o                              = s_LOGISIM_BUS_5[6:0];
   assign tty_we_o                           = s_LOGISIM_NET_8;
   assign led_o                              = s_LOGISIM_BUS_17[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_33[4:0] = 5'd2;

   assign s_LOGISIM_BUS_36[4:0] = 5'd2;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Shifter_32_bit #(.ShifterMode(2))
      Shifter_1 (.DataA(s_LOGISIM_BUS_16[31:0]),
                 .Result(s_LOGISIM_BUS_34[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_33[4:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_2 (.DataA(s_LOGISIM_BUS_9[31:0]),
                 .Result(s_LOGISIM_BUS_35[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_36[4:0]));

   /***************************************************************************
   ** Added RAM and ROM to the top module.                                  **
   ***************************************************************************/
   
   ram #( .ADDR_WIDTH (12),
          .INIT_FILE  (ROM_FILE)) i_rom ( .clk_i   (s_LOGISIM_NET_22),
                                          .addr_i  (s_LOGISIM_BUS_34[11:0]), 
                                          .din_i   (32'b0),
                                          .we_i    (1'b0), 
                                          .be0_i   (1'b0),
                                          .be1_i   (1'b0),
                                          .be2_i   (1'b0),
                                          .be3_i   (1'b0),
                                          .dout_o  (s_LOGISIM_BUS_14[31:0])
                                       );

   ram #( .ADDR_WIDTH (12),
          .INIT_FILE  (RAM_FILE)) i_ram ( .clk_i   (s_LOGISIM_NET_22),
                                          .addr_i  (s_LOGISIM_BUS_35[11:0]), 
                                          .din_i   (s_LOGISIM_BUS_18[31:0]),
                                          .we_i    (s_LOGISIM_NET_2), 
                                          .be0_i   (s_LOGISIM_NET_7),
                                          .be1_i   (s_LOGISIM_NET_6),
                                          .be2_i   (s_LOGISIM_NET_12),
                                          .be3_i   (s_LOGISIM_NET_21),
                                          .dout_o  (s_LOGISIM_BUS_3[31:0])
                                       );

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   d_ledbar      d_ledbar_1 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .be0_i(s_LOGISIM_NET_31),
                             .be1_i(s_LOGISIM_NET_10),
                             .be2_i(s_LOGISIM_NET_20),
                             .be3_i(s_LOGISIM_NET_15),
                             .clk_i(s_LOGISIM_NET_22),
                             .d_i(s_LOGISIM_BUS_32[31:0]),
                             .d_rd_o(s_LOGISIM_BUS_11[31:0]),
                             .data_o(s_LOGISIM_BUS_17[31:0]),
                             .rst_in(rst_n),
                             .wen_i(s_LOGISIM_NET_1));

   rv32i      i_rv32i (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                       .clk(s_LOGISIM_NET_22),
                       .instr(s_LOGISIM_BUS_14[31:0]),
                       .instr_addr(s_LOGISIM_BUS_16[31:0]),
                       .mem_addr_o(s_LOGISIM_BUS_23[31:0]),
                       .mem_be0_o(s_LOGISIM_NET_25),
                       .mem_be1_o(s_LOGISIM_NET_29),
                       .mem_be2_o(s_LOGISIM_NET_26),
                       .mem_be3_o(s_LOGISIM_NET_30),
                       .mem_din_i(s_LOGISIM_BUS_27[31:0]),
                       .mem_dout_o(s_LOGISIM_BUS_24[31:0]),
                       .mem_wen_o(s_LOGISIM_NET_28),
                       .rst_n(rst_n));

   sc_bus      i_bus_sc (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .addr_i(s_LOGISIM_BUS_23[31:0]),
                         .be0_i(s_LOGISIM_NET_25),
                         .be1_i(s_LOGISIM_NET_29),
                         .be2_i(s_LOGISIM_NET_26),
                         .be3_i(s_LOGISIM_NET_30),
                         .lb_be0_0(s_LOGISIM_NET_31),
                         .lb_be1_0(s_LOGISIM_NET_10),
                         .lb_be2_0(s_LOGISIM_NET_20),
                         .lb_be3_0(s_LOGISIM_NET_15),
                         .lb_data_i(s_LOGISIM_BUS_11[31:0]),
                         .lb_data_o(s_LOGISIM_BUS_32[31:0]),
                         .lb_we_o(s_LOGISIM_NET_1),
                         .mem_addr_o(s_LOGISIM_BUS_9[31:0]),
                         .mem_be0_o(s_LOGISIM_NET_7),
                         .mem_be1_o(s_LOGISIM_NET_6),
                         .mem_be2_o(s_LOGISIM_NET_12),
                         .mem_be3_o(s_LOGISIM_NET_21),
                         .mem_data_i(s_LOGISIM_BUS_3[31:0]),
                         .mem_data_o(s_LOGISIM_BUS_18[31:0]),
                         .mem_we_o(s_LOGISIM_NET_2),
                         .rdata_o(s_LOGISIM_BUS_27[31:0]),
                         .tty_data_o(s_LOGISIM_BUS_5[31:0]),
                         .tty_we_o(s_LOGISIM_NET_8),
                         .wdata_i(s_LOGISIM_BUS_24[31:0]),
                         .we_i(s_LOGISIM_NET_28));

endmodule

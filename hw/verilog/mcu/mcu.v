//
//   ______     ___________  ___     ____   ____     _                _     _
//  |  _ \ \   / /___ /___ \|_ _|   / ___| / ___|   | |    ___   __ _(_)___(_)
//  | |_) \ \ / /  |_ \ __) || |    \___ \| |       | |   / _ \ / _` | / __| | '_ ` _ \
//  |  _ < \ V /  ___) / __/ | |     ___) | |___    | |__| (_) | (_| | \__ \ | | | | | |
//  |_| \_\ \_/  |____/_____|___|___|____/ \____|___|_____\___/ \__, |_|___/_|_| |_| |_|
//                             |_____|         |_____|          |___/
//
// Project  https://github.com/meiniKi/RV32I_SC_Logisim/           
// Author   Meinhard Kissich
//
// Usage    Top-Level microcontroller module    
//
//

module mcu (
   input  wire          clk_i,
   input  wire          rst_in,
   output wire [31:0]   led_o,
   output wire [6:0]    tty_o,
   output wire          tty_we_o
);

   wire clk;
   wire rst_n;
   wire locked;

   wire [31:0] instr;
   wire [31:0] instr_addr_byte;
   wire [31:0] instr_addr_word;
   
   wire [31:0] mem_addr_byte;
   wire [31:0] mem_data_from_core;
   
   wire [31:0] mem_data_to_core;
   wire        mem_we;
   wire [3:0]  mem_be;
   
   wire [31:0] lb_data_from_core;
   wire [31:0] lb_data_to_core;
   wire [3:0]  lb_be;
   wire        lb_we;
   
   wire [31:0] ram_data_from_core;
   wire [31:0] ram_data_to_core;
   wire [31:0] ram_addr_byte;
   wire [31:0] ram_addr_word;
   wire [3:0]  ram_be;
   wire        ram_we;

   wire [31:0] tty_data_from_core;

   assign tty_o = tty_data_from_core[6:0];

   assign instr_addr_word  = (instr_addr_byte >> 2);
   assign ram_addr_word    = (ram_addr_byte >> 2);

   rv32i #( .STARTUP_MEM_ADDR (32'h00000000) ) i_rv32_i (.clk_i         ( clk ),
                                                         .rst_in        ( rst_n ),
                                                         .instr_addr_o  ( instr_addr_byte ),
                                                         .instr_i       ( instr ),
                                                         .mem_addr_o    ( mem_addr_byte ),
                                                         .mem_din_i     ( mem_data_to_core ),
                                                         .mem_dout_o    ( mem_data_from_core ),
                                                         .mem_we_o      ( mem_we ),
                                                         .mem_be_o      ( mem_be )
                                                         );

   sc_bus i_sc_bus ( .wdata_i    ( mem_data_from_core ),
                     .rdata_o    ( mem_data_to_core ),
                     .addr_i     ( mem_addr_byte ),
                     .we_i       ( mem_we ),
                     .be0_i      ( mem_be[0] ),
                     .be1_i      ( mem_be[1] ),
                     .be2_i      ( mem_be[2] ),
                     .be3_i      ( mem_be[3] ),
                     .lb_be0_o   ( lb_be[0] ),
                     .lb_be1_o   ( lb_be[1] ),
                     .lb_be2_o   ( lb_be[2] ),
                     .lb_be3_o   ( lb_be[3] ),
                     .mem_be0_o  ( ram_be[0] ),
                     .mem_be1_o  ( ram_be[1] ),
                     .mem_be2_o  ( ram_be[2] ),
                     .mem_be3_o  ( ram_be[3] ),
                     .mem_addr_o ( ram_addr_byte ),
                     .mem_we_o   ( ram_we ),
                     .mem_data_i ( ram_data_to_core ),
                     .mem_data_o ( ram_data_from_core ),
                     .lb_we_o    ( lb_we ),
                     .lb_data_i  ( lb_data_to_core ),
                     .lb_data_o  ( lb_data_from_core ),
                     .tty_we_o   ( tty_we_o ),
                     .tty_data_o ( tty_data_from_core )
                  );


   ram #(   .ADDR_WIDTH (10),
            .INIT_FILE  (`ROM_FILE),
            .INIT_BYTE0 (`ROM_BYTE0),
            .INIT_BYTE1 (`ROM_BYTE1),
            .INIT_BYTE2 (`ROM_BYTE2),
            .INIT_BYTE3 (`ROM_BYTE3)) i_rom (.rclk_i   ( clk_x2 ),
                                             .wclk_i   ( clk ),
                                             .addr_i  ( instr_addr_word[9:0] ), 
                                             .din_i   ( 32'b0 ),
                                             .we_i    ( 1'b0 ), 
                                             .be0_i   ( 1'b0 ),
                                             .be1_i   ( 1'b0 ),
                                             .be2_i   ( 1'b0 ),
                                             .be3_i   ( 1'b0 ),
                                             .dout_o  ( instr )
                                          );

   ram #(   .ADDR_WIDTH (10),
            .INIT_FILE  (`RAM_FILE),
            .INIT_BYTE0 (`RAM_BYTE0),
            .INIT_BYTE1 (`RAM_BYTE1),
            .INIT_BYTE2 (`RAM_BYTE2),
            .INIT_BYTE3 (`RAM_BYTE3)) i_ram ( .rclk_i   ( clk_x2 ),
                                             .wclk_i   ( clk ),
                                             .addr_i  ( ram_addr_word[9:0] ), 
                                             .din_i   ( ram_data_from_core ),
                                             .we_i    ( ram_we ), 
                                             .be0_i   ( ram_be[0] ),
                                             .be1_i   ( ram_be[1] ),
                                             .be2_i   ( ram_be[2] ),
                                             .be3_i   ( ram_be[3] ),
                                             .dout_o  ( ram_data_to_core )
                                          );

   d_ledbar i_d_ledbar (   .clk_i   ( clk ),
                           .rst_in  ( rst_n ),
                           .we_i    ( lb_we ),
                           .be0_i   ( lb_be[0] ),
                           .be1_i   ( lb_be[1] ),
                           .be2_i   ( lb_be[2] ),
                           .be3_i   ( lb_be[3] ),
                           .din_i   ( lb_data_from_core ),
                           .dout_o  ( lb_data_to_core ),
                           .drd_o   ( led_o )
                        );
                                          
                                    
`ifdef SYNTH_ICE40

   wire rst_nn;

   wire clk_16M;
   reg [13:0] cnter;
   reg [1:0] dly_rst;

   assign clk     = cnter[13];
   assign clk_x2  = cnter[12];

   wire rst_nn = ~rst_in;

   SB_PLL40_PAD #(   .FEEDBACK_PATH ("SIMPLE"),
                     .DIVR          (4'b0100),	   // DIVR =  4
                     .DIVF          (7'b0011111),	// DIVF = 31
                     .DIVQ          (3'b101),      // DIVQ =  5
                     .FILTER_RANGE  (3'b010)	      // FILTER_RANGE = 2
                  ) i_SB_PLL40_PAD (   
                     .PACKAGEPIN    (clk_i),
                     .PLLOUTGLOBAL  (clk_16M),
                     .RESETB        (rst_nn),
                     .BYPASS        (1'b0),
                     .LOCK          (locked)
                  );


   //assign locked = 'b1;
   //assign clk_16M = clk_i;

   always @(posedge clk_16M or negedge rst_nn) begin
      if (~rst_nn) begin
         cnter    <= 'b0;
      end else begin
         cnter <= cnter + 'b1;
      end
   end

   always @(posedge cnter[13] or negedge rst_nn) begin
      if (~rst_nn) begin
         dly_rst  <= 'b0;
      end else begin
         if (dly_rst != 2'b11) begin
            dly_rst <= dly_rst + 'b1;
         end
      end
   end

   assign rst_n = locked & rst_nn & (&dly_rst);

`else
   assign rst_n   = rst_in;
   assign clk_x2  = clk_i;
   assign clk     = cnter[1];

   reg [1:0] cnter;

   always @(posedge clk_i or negedge rst_in) begin
      if (~rst_in) begin
         cnter    <= 'b0;
      end else begin
         cnter    <= cnter+'b1;
      end
   end
`endif


endmodule

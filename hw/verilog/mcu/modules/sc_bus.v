
module sc_bus (
   input  wire [31:0]   wdata_i,
   output wire [31:0]   lb_data_o,
   output wire [31:0]   mem_data_o,
   output wire [31:0]   tty_data_o,
   input  wire          be0_i,
   output wire          lb_be0_o,
   output wire          mem_be0_o,
   input  wire          be1_i,
   output wire          lb_be1_o,
   output wire          mem_be1_o,
   input  wire          be2_i,
   output wire          lb_be2_o,
   output wire          mem_be2_o,
   input  wire          be3_i,
   output wire          lb_be3_o,
   output wire          mem_be3_o,
   input  wire [31:0]   addr_i,
   output wire [31:0]   mem_addr_o,
   input  wire          we_i,
   output wire          mem_we_o,
   output wire          lb_we_o,
   output wire          tty_we_o,
   input  wire [31:0]   lb_data_i,
   input  wire [31:0]   mem_data_i,
   output wire [31:0]   rdata_o
);

   localparam MEM_LOWER = 32'h00000000;
   localparam MEM_UPPER = 32'hFF000000;
   localparam LB_LOWER  = 32'hFF000000;
   localparam LB_UPPER  = 32'hFF000004;
   localparam TTY_LOWER = 32'h00000004;
   localparam TTY_UPPER = 32'hFF000008;

   wire is_mem_addr;
   wire is_lb_addr;
   wire is_tty_addr;

   assign lb_be0_o   = be0_i;
   assign mem_be0_o  = be0_i;
   assign lb_be1_o   = be1_i;
   assign mem_be1_o  = be1_i;
   assign lb_be2_o   = be2_i;
   assign mem_be2_o  = be2_i;
   assign lb_be3_o   = be3_i;
   assign mem_be3_o  = be3_i;

   assign lb_data_o  = wdata_i;
   assign mem_data_o = wdata_i;
   assign tty_data_o = wdata_i;

   assign mem_addr_o = addr_i;

   assign is_mem_addr   = (~(addr_i < MEM_LOWER)) & (addr_i < MEM_UPPER);
   assign is_lb_addr    = (~(addr_i < LB_LOWER))  & (addr_i < LB_UPPER);
   assign is_tty_addr   = (~(addr_i < TTY_LOWER)) & (addr_i < TTY_UPPER);
   
   assign mem_we_o   = we_i & is_mem_addr;
   assign lb_we_o    = we_i & is_lb_addr;
   assign tty_we_o   = we_i & is_tty_addr;

   assign rdata_o =  is_mem_addr ? mem_data_i :
                     is_lb_addr  ? lb_data_i :
                                   32'b0;

endmodule


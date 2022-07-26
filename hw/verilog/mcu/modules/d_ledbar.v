/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : d_ledbar                                                     **
 **                                                                          **
 ******************************************************************************/

module d_ledbar (
   input  wire          clk_i,
   input  wire          rst_in,
   input  wire          we_i,
   input  wire          be0_i,
   input  wire          be1_i,
   input  wire          be2_i,
   input  wire          be3_i,
   input  wire [31:0]   din_i,
   output wire [31:0]   dout_o,
   output wire [31:0]   drd_o
);

   reg [31:0] mask;
   reg [31:0] mem;

   assign dout_o = mem;
   assign drd_o = mem;

   always @(*) begin
      mask = 32'b0;
      if (be0_i)  mask = mask | 32'h000000FF;
      if (be1_i)  mask = mask | 32'h0000FF00;
      if (be2_i)  mask = mask | 32'h00FF0000;
      if (be3_i)  mask = mask | 32'hFF000000;
   end

   always @(posedge clk_i or negedge rst_in) begin
      if (~rst_in) begin
         mem <= 32'b0;
      end else begin
         mem <= we_i ? (mem & ~mask) | (din_i & mask) : mem; 
      end
   end

endmodule

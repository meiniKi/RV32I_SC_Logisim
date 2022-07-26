

module rv32i_regbank (
   input  wire          rst_in,
   input  wire          clk_i,
   input  wire [15:0]   rs1_16_i,
   input  wire [15:0]   rs2_16_i,
   input  wire [15:0]   rd_16_i,
   input  wire          we_i,
   input  wire [31:0]   din_i,
   output wire [31:0]   rs1d_o,
   output wire [31:0]   rs2d_o,
   input  wire          is_upper_i
);

   reg [31:0] mem [0:15];

   // TODO: is_upper -> paramter, optimize once working
   assign rs1d_o = (is_upper_i || rs1_16_i != 16'b0) ? mem[rs1_16_i] : 16'b0;
   assign rs2d_o = (is_upper_i || rs2_16_i != 16'b0) ? mem[rs2_16_i] : 16'b0;

   always @(posedge clk_i or negedge rst_in) begin
      if (~rst_in) begin
         for (integer i=0; i<16; i=i+1) mem[i] <= 32'b00; // '{default:2'b00}; is sv
      end else begin
         mem[rd_16_i] <= we_i ? din_i : mem[rd_16_i];
      end
   end

endmodule

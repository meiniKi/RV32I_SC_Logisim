

module rv32i_regfile (
   input  wire          clk_i,
   input  wire          rst_in,
   input  wire          we_i,
   input  wire [4:0]    rs1_i,
   input  wire [4:0]    rs2_i,
   input  wire [4:0]    rd_i,
   input  wire [31:0]   din_i,
   output wire [31:0]   rsa_o,
   output wire [31:0]   rsb_o
);

   wire [31:0] rs1_d [0:1];
   wire [31:0] rs2_d [0:1];
   wire        we    [0:1];

   assign we[0] = we_i & (~rd_i[4]); 
   assign we[1] = we_i & rd_i[4];

   assign rsa_o = rs1_d[rs1_i[4]];
   assign rsb_o = rs2_d[rs2_i[4]];

   rv32i_regbank i_rv32i_regbank_lower (  .rst_in     ( rst_in ),
                                          .clk_i      ( clk_i ),
                                          .rs1_16_i   ( rs1_i[3:0] ),
                                          .rs2_16_i   ( rs2_i[3:0] ),
                                          .rd_16_i    ( rd_i[3:0] ),
                                          .we_i       ( we[0] ),
                                          .din_i      ( din_i ),
                                          .rs1d_o     ( rs1_d[0] ),
                                          .rs2d_o     ( rs2_d[0] ),
                                          .is_upper_i ( 1'b0 )
                                       );

   rv32i_regbank i_rv32i_regbank_upper (  .rst_in     ( rst_in ),
                                          .clk_i      ( clk_i ),
                                          .rs1_16_i   ( rs1_i[3:0] ),
                                          .rs2_16_i   ( rs2_i[3:0] ),
                                          .rd_16_i    ( rd_i[3:0] ),
                                          .we_i       ( we[1] ),
                                          .din_i      ( din_i ),
                                          .rs1d_o     ( rs1_d[1] ),
                                          .rs2d_o     ( rs2_d[1] ),
                                          .is_upper_i ( 1'b0 )
                                       );

endmodule

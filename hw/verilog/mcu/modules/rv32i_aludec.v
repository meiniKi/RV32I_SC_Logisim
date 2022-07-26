
module rv32i_aludec( 
   input  wire [2:0] funct3,
   input  wire [6:0] funct7,
   input  wire       ari_i,
   input  wire       ar_i,
   input  wire       br_i,
   input  wire       lui_auipc_i,
   output wire       op_add_o,
   output wire       op_sub_o,
   output wire       op_sll_o,
   output wire       op_slt_o,
   output wire       op_sltu_o,
   output wire       op_xor_o,
   output wire       op_srl_o,
   output wire       op_sra_o,
   output wire       op_or_o,
   output wire       op_and_o,
   output wire       op_beq_o,
   output wire       op_blt_o,
   output wire       op_bge_o,
   output wire       op_bne_o,
   output wire       op_bltu_o,
   output wire       op_bgeu_o,
   output wire       op_rs2_imm_o
);

   assign op_add_o   = (ari_i | ar_i) & (ar_i | ((~funct7[5]) & (funct3 == 3'b0)));
   assign op_sub_o   = (ari_i | ar_i) & (~ar_i) & funct7[5] & (funct3 == 3'b0);
   assign op_sll_o   = (ari_i | ar_i) & (funct3 == 3'b1);
   assign op_slt_o   = (ari_i | ar_i) & (funct3 == 3'b10);
   assign op_sltu_o  = (ari_i | ar_i) & (funct3 == 3'b11);
   assign op_xor_o   = (ari_i | ar_i) & (funct3 == 3'b100);
   assign op_srl_o   = (ari_i | ar_i) & (~funct7[5]) & (funct3 == 3'b101);
   assign op_sra_o   = (ari_i | ar_i) & funct7[5] & (funct3 == 3'b101);
   assign op_or_o    = (ari_i | ar_i) & (funct3 == 3'b110);
   assign op_and_o   = (ari_i | ar_i) & (funct3 == 3'b111);

   assign op_beq_o   = br_i & (funct3 == 3'b000);
   assign op_bne_o   = br_i & (funct3 == 3'b001);
   assign op_blt_o   = br_i & (funct3 == 3'b100);
   assign op_bge_o   = br_i & (funct3 == 3'b101);
   assign op_bltu_o  = br_i & (funct3 == 3'b110);
   assign op_bgeu_o  = br_i & (funct3 == 3'b111);

endmodule

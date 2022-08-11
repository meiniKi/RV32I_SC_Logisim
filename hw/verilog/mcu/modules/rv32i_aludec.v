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
// Usage    Decoder for arithmetic logic unit  
//
//

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

   wire ar_or_ari = ari_i | ar_i;

   assign op_add_o   = (funct3 == 3'b0) & ((~funct7[5]) | ari_i);
   assign op_sub_o   = ar_or_ari & (~ari_i) & funct7[5] & (funct3 == 3'b0);
   assign op_sll_o   = ar_or_ari & (funct3 == 3'b1);
   assign op_slt_o   = ar_or_ari & (funct3 == 3'b10);
   assign op_sltu_o  = ar_or_ari & (funct3 == 3'b11);
   assign op_xor_o   = ar_or_ari & (funct3 == 3'b100);
   assign op_srl_o   = ar_or_ari & (~funct7[5]) & (funct3 == 3'b101);
   assign op_sra_o   = ar_or_ari & funct7[5] & (funct3 == 3'b101);
   assign op_or_o    = ar_or_ari & (funct3 == 3'b110);
   assign op_and_o   = ar_or_ari & (funct3 == 3'b111);

   assign op_beq_o   = br_i & (funct3 == 3'b000);
   assign op_bne_o   = br_i & (funct3 == 3'b001);
   assign op_blt_o   = br_i & (funct3 == 3'b100);
   assign op_bge_o   = br_i & (funct3 == 3'b101);
   assign op_bltu_o  = br_i & (funct3 == 3'b110);
   assign op_bgeu_o  = br_i & (funct3 == 3'b111);

   assign op_rs2_imm_o = lui_auipc_i;

endmodule

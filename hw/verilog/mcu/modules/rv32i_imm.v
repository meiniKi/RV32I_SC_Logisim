
module rv32i_imm( 
   input  wire [31:0] instr_i,
   output wire [31:0] b_imm_o,
   output wire [31:0] i_imm_o,
   output wire [31:0] j_imm_o,
   output wire [31:0] s_imm_o,
   output wire [31:0] u_imm_o
);

   assign i_imm_o = { {21{instr_i[31]}}, instr_i[30:25], instr_i[24:21], instr_i[20] };
   assign s_imm_o = { {21{instr_i[31]}}, instr_i[30:25], instr_i[11:8], instr_i[7] };
   assign b_imm_o = { {20{instr_i[31]}}, instr_i[7], instr_i[30:25], instr_i[11:8] };
   assign u_imm_o = { instr_i[31], instr_i[30:25], instr_i[24:21], instr_i[20], instr_i[19:15], instr_i[14:12], 12'b0};
   assign j_imm_o = { {12{instr_i[31]}}, instr_i[19:15], instr_i[14:12], instr_i[20], instr_i[30:25], instr_i[24:21], 1'b0};

endmodule

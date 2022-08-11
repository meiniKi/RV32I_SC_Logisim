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
// Usage    Immediate decoder 
//
//

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
   assign b_imm_o = { {20{instr_i[31]}}, instr_i[7], instr_i[30:25], instr_i[11:8], 1'b0 };
   assign u_imm_o = { instr_i[31], instr_i[30:25], instr_i[24:21], instr_i[20], instr_i[19:15], instr_i[14:12], 12'b0};
   assign j_imm_o = { {12{instr_i[31]}}, instr_i[19:15], instr_i[14:12], instr_i[20], instr_i[30:25], instr_i[24:21], 1'b0};

endmodule

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
// Usage    Instruction decoder 
//
//

module rv32i_indec(
   input  wire [31:0]   instr_i,
   output wire [4:0]    rd_o,
   output wire [2:0]    funct3_o,
   output wire [4:0]    rs1_o,
   output wire [4:0]    rs2_o,
   output wire [6:0]    funct7_o,
   output wire [31:0]   imm_o,
   output wire          arr_o,
   output wire          ari_o,
   output wire          ld_o,
   output wire          st_o,
   output wire          br_o,
   output wire          jal_o,
   output wire          jalr_o,
   output wire          lui_o,
   output wire          auipc_o,
   output wire          ebc_o
);

   wire [6:0] opc;

   wire arr;
   wire ari;
   wire ld;
   wire st;
   wire br;
   wire jal;
   wire jalr;
   wire lui;
   wire auipc;
   wire ebc;

   wire [31:0] b_imm;
   wire [31:0] i_imm;
   wire [31:0] j_imm;
   wire [31:0] s_imm;
   wire [31:0] u_imm;

   assign rd_o       = { instr_i[11:8], instr_i[7] };
   assign rs1_o      = instr_i[19:15];
   assign rs2_o      = instr_i[24:20];
   assign funct3_o   = instr_i[14:12];
   assign funct7_o   = instr_i[31:25];

   assign opc     = instr_i[6:0];

   assign arr_o   = arr;
   assign ari_o   = ari;
   assign ld_o    = ld;
   assign st_o    = st;
   assign br_o    = br;
   assign jal_o   = jal;
   assign jalr_o  = jalr;
   assign lui_o   = lui;
   assign auipc_o = auipc;
   assign ebc_o   = ebc;

   assign arr     = (opc == 7'h33);
   assign ari     = (opc == 7'h13);
   assign ld      = (opc == 7'h03);
   assign st      = (opc == 7'h23);
   assign br      = (opc == 7'h63);
   assign jal     = (opc == 7'h6f);
   assign jalr    = (opc == 7'h67);
   assign lui     = (opc == 7'h37);
   assign auipc   = (opc == 7'h17);
   assign ebc     = (opc == 7'h73);

   assign imm_o = jal         ? j_imm :
                  lui | auipc ? u_imm :
                  br          ? b_imm :
                  st          ? s_imm :
                                i_imm;


   rv32i_imm i_rv32i_imm ( .instr_i ( instr_i ),
                           .b_imm_o ( b_imm ),
                           .i_imm_o ( i_imm ),
                           .j_imm_o ( j_imm ),
                           .s_imm_o ( s_imm ),
                           .u_imm_o ( u_imm )
                         );

endmodule

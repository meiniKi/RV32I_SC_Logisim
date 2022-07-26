
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

   assign arr     = (opc == 6'h33) ? 1'b1 : 1'b0;
   assign ari     = (opc == 6'h13) ? 1'b1 : 1'b0;
   assign ld      = (opc == 6'h03) ? 1'b1 : 1'b0;
   assign st      = (opc == 6'h23) ? 1'b1 : 1'b0;
   assign br      = (opc == 6'h63) ? 1'b1 : 1'b0;
   assign jal     = (opc == 6'h6f) ? 1'b1 : 1'b0;
   assign jalr    = (opc == 6'h67) ? 1'b1 : 1'b0;
   assign lui     = (opc == 6'h37) ? 1'b1 : 1'b0;
   assign auipc   = (opc == 6'h17) ? 1'b1 : 1'b0;
   assign ebc     = (opc == 6'h73) ? 1'b1 : 1'b0;

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

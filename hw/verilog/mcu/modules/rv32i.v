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
// Usage    CPU top level
//
//

module rv32i #( parameter STARTUP_MEM_ADDR = 32'h00000000 ) (
   input  wire          clk_i,
   input  wire          rst_in,
   output wire [31:0]   instr_addr_o,
   input  wire [31:0]   instr_i,
   output wire [31:0]   mem_addr_o,
   input  wire [31:0]   mem_din_i,
   output wire [31:0]   mem_dout_o,
   output wire          mem_we_o,
   output wire [3:0]    mem_be_o
);

   wire        rst_n;
   wire        clk;

   reg  [31:0] pc;
   wire [31:0] pc_next;

   wire [4:0]  rs1;
   wire [4:0]  rs2;
   wire [4:0]  rd;
   wire [31:0] imm;
   wire        jal;
   wire        jalr;
   wire [2:0]  funct3;
   wire [6:0]  funct7;
   wire        ar;
   wire        ari;
   wire        br;
   wire        lui;
   wire        auipc;
   wire        ld;
   wire        st;

   wire        op_add;
   wire        op_sub;
   wire        op_sll;
   wire        op_slt;
   wire        op_sltu;
   wire        op_xor;
   wire        op_srl;
   wire        op_sra;
   wire        op_or;
   wire        op_and;
   wire        op_beq;
   wire        op_blt;
   wire        op_bge;
   wire        op_bne;
   wire        op_bltu;
   wire        op_bgeu;
   wire        op_rs2_imm;

   wire        alu_add;
   wire        alu_lt;
   wire        alu_ltu;
   wire [31:0] alu_ra;
   wire [31:0] alu_rb;
   wire [31:0] alu_rd;

   wire [31:0] alu_ld_val;
   wire [31:0] ld_val;

   wire [31:0] lsu_wdat;
   
   wire        do_jump;
   wire [31:0] pc_summand;
   wire [31:0] pc_sum;

   wire        take_branch;
   wire        lui_or_auipc;
   wire        reg_we;
   wire [31:0] reg_din;
   wire [31:0] rsa; 
   wire [31:0] rsb; 

   // Allow modifications afterwards
   //
   assign clk     = clk_i;
   assign rst_n   = rst_in;

   assign do_jump       = jal | jalr;
   assign lui_or_auipc  = lui | auipc;

   assign take_branch = alu_ld_val[0];

   assign alu_add = op_add | do_jump;
   assign alu_lt  = op_slt | op_blt;
   assign alu_ltu = op_sltu | op_bltu;
   assign alu_ra  = (lui_or_auipc | jal) ? pc : rsa;
   assign alu_rb  = (ld | lui_or_auipc | st | ari | do_jump) ? imm : rsb;

   assign pc_summand    = (br & take_branch) ? imm : 32'h4;
   assign pc_sum        = pc + pc_summand;
   assign pc_next       = do_jump ? {alu_ld_val[31:1], 1'b0} : pc_sum;
   assign instr_addr_o  = pc;
                    
   assign reg_we = do_jump | ar | ari | lui_or_auipc | ld;

   assign alu_ld_val = ld ? ld_val : alu_rd;
   assign reg_din    = do_jump ? pc_sum : alu_ld_val;

   assign lsu_wdat = st ? rsb : imm;

   always @(posedge clk or negedge rst_n) begin
      if (~rst_n) begin
         pc <= STARTUP_MEM_ADDR;
      end else begin
         pc <= pc_next;
      end
   end

   rv32i_indec i_rv32i_indec (   .instr_i    ( instr_i ),
                                 .rd_o       ( rd ),
                                 .funct3_o   ( funct3 ),
                                 .rs1_o      ( rs1 ),
                                 .rs2_o      ( rs2 ),
                                 .funct7_o   ( funct7 ),
                                 .imm_o      ( imm ),
                                 .arr_o      ( ar ),
                                 .ari_o      ( ari ),
                                 .ld_o       ( ld ),
                                 .st_o       ( st ),
                                 .br_o       ( br ),
                                 .jal_o      ( jal ),
                                 .jalr_o     ( jalr ),
                                 .lui_o      ( lui ),
                                 .auipc_o    ( auipc )
                                 //.ebc_o      (  )
                              );

   rv32i_regfile i_rv32i_regfile (  .clk_i   ( clk ),
                                    .rst_in  ( rst_n ),
                                    .we_i    ( reg_we ),
                                    .rs1_i   ( rs1 ),
                                    .rs2_i   ( rs2 ),
                                    .rd_i    ( rd ),
                                    .din_i   ( reg_din ),
                                    .rsa_o   ( rsa ),
                                    .rsb_o   ( rsb )
                                 );

   rv32i_alu i_rv32i_alu ( .rsa_i         ( alu_ra ),
                           .rsb_imm_i     ( alu_rb ),
                           .op_add_i      ( alu_add ),
                           .op_and_i      ( op_and ),
                           .op_eq_i       ( op_beq ),
                           .op_ge_i       ( op_bge ),
                           .op_geu_i      ( op_bgeu ),
                           .op_lt_i       ( alu_lt ),
                           .op_ltu_i      ( alu_ltu ),
                           .op_ne_i       ( op_bne ),
                           .op_or_i       ( op_or ),
                           .op_rs2_imm_i  ( op_rs2_imm ),
                           .op_sll_i      ( op_sll ),
                           .op_sra_i      ( op_sra ),
                           .op_srl_i      ( op_srl ),
                           .op_sub_i      ( op_sub ),
                           .op_xor_i      ( op_xor ),
                           .dout_o        ( alu_rd )
                        );
                        
                        
   rv32i_aludec i_rv32i_aludec ( .funct3        ( funct3 ),
                                 .funct7        ( funct7 ),
                                 .ari_i         ( ari ),
                                 .ar_i          ( ar ),
                                 .br_i          ( br ),
                                 .lui_auipc_i   ( lui_or_auipc ),
                                 .op_add_o      ( op_add ),
                                 .op_sub_o      ( op_sub ),
                                 .op_sll_o      ( op_sll ),
                                 .op_slt_o      ( op_slt ),
                                 .op_sltu_o     ( op_sltu ),
                                 .op_xor_o      ( op_xor ),
                                 .op_srl_o      ( op_srl ),
                                 .op_sra_o      ( op_sra ),
                                 .op_or_o       ( op_or ),
                                 .op_and_o      ( op_and ),
                                 .op_beq_o      ( op_beq ),
                                 .op_blt_o      ( op_blt ),
                                 .op_bge_o      ( op_bge ),
                                 .op_bne_o      ( op_bne ),
                                 .op_bltu_o     ( op_bltu ),
                                 .op_bgeu_o     ( op_bgeu ),
                                 .op_rs2_imm_o  ( op_rs2_imm )
                              );

   rv32i_lsu i_rv32i_lsu ( .func3_i    ( funct3 ),
                           .st_i       ( st ),
                           .wdat_i     ( lsu_wdat ),
                           .mem_addr_i ( alu_rd ),
                           .mem_addr_o ( mem_addr_o ),
                           .we_mem_o   ( mem_we_o ),
                           .rmem_i     ( mem_din_i ),
                           .wmem_o     ( mem_dout_o ),
                           .rdat_o     ( ld_val ),
                           .be_o       ( mem_be_o )
                        );

endmodule

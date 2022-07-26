
module rv32i(
   input  wire          clk_i,
   input  wire          rst_in,
   output wire [31:0]   instr_addr_o,
   input  wire [31:0]   instr_i,
   output wire [31:0]   mem_addr_o,
   input  wire [31:0]   mem_din_i,
   output wire [31:0]   mem_dout_o,
   input  wire          mem_we_o,
   output wire          mem_be0_o,
   output wire          mem_be1_o,
   output wire          mem_be2_o,
   output wire          mem_be3_o
);



   rv32i_indec i_rv32i_indec (   .instr_i    (  ),
                                 .rd_o       (  ),
                                 .funct3_o   (  ),
                                 .rs1_o      (  ),
                                 .rs2_o      (  ),
                                 .funct7_o   (  ),
                                 .imm_o      (  ),
                                 .arr_o      (  ),
                                 .ari_o      (  ),
                                 .ld_o       (  ),
                                 .st_o       (  ),
                                 .br_o       (  ),
                                 .jal_o      (  ),
                                 .jalr_o     (  ),
                                 .lui_o      (  ),
                                 .auipc_o    (  ),
                                 .ebc_o      (  )
                              );

   rv32i_regfile i_rv32i_regfile (  .clk_i   (  ),
                                    .rst_in  (  ),
                                    .we_i    (  ),
                                    .rs1_i   (  ),
                                    .rs2_i   (  ),
                                    .rd_i    (  ),
                                    .din_i   (  ),
                                    .rsa_o   (  ),
                                    .rsb_o   (  )
                                 );

   rv32i_alu i_rv32i_alu ( .rsa_i         (  ),
                           .rsb_imm_i     (  ),
                           .op_add_i      (  ),
                           .op_and_i      (  ),
                           .op_eq_i       (  ),
                           .op_ge_i       (  ),
                           .op_geu_i      (  ),
                           .op_lt_i       (  ),
                           .op_ltu_i      (  ),
                           .op_ne_i       (  ),
                           .op_or_i       (  ),
                           .op_rs2_imm_i  (  ),
                           .op_sll_i      (  ),
                           .op_sra_i      (  ),
                           .op_srl_i      (  ),
                           .op_sub_i      (  ),
                           .op_xor_i      (  ),
                           .dout_o        (  )
                        );
                        
                        
   rv32i_aludec i_rv32i_aludec ( .funct3        (  ),
                                 .funct7        (  ),
                                 .ari_i         (  ),
                                 .ar_i          (  ),
                                 .br_i          (  ),
                                 .lui_auipc_i   (  ),
                                 .op_add_o      (  ),
                                 .op_sub_o      (  ),
                                 .op_sll_o      (  ),
                                 .op_slt_o      (  ),
                                 .op_sltu_o     (  ),
                                 .op_xor_o      (  ),
                                 .op_srl_o      (  ),
                                 .op_sra_o      (  ),
                                 .op_or_o       (  ),
                                 .op_and_o      (  ),
                                 .op_beq_o      (  ),
                                 .op_blt_o      (  ),
                                 .op_bge_o      (  ),
                                 .op_bne_o      (  ),
                                 .op_bltu_o     (  ),
                                 .op_bgeu_o     (  ),
                                 .op_rs2_imm_o  (  )
                              );

   rv32i_lsu i_rv32i_lsu ( .func3_i    (  ),
                           .wdat_i     (  ),
                           .mem_addr_i (  ),
                           .mem_addr_o (  ),
                           .we_mem_o   (  ),
                           .rmem_i     (  ),
                           .wmem_o     (  ),
                           .rdat_o     (  ),
                           .be0_o      (  ),
                           .be1_o      (  ),
                           .be2_o      (  ),
                           .be3_o      (  )
                        );

endmodule

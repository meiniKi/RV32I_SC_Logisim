/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_alu                                                    **
 **                                                                          **
 ******************************************************************************/

 module rv32i_alu( 
   input  wire [31:0]   rsa_i,
   input  wire [31:0]   rsb_imm_i,
   input  wire          op_add_i,
   input  wire          op_and_i,
   input  wire          op_eq_i,
   input  wire          op_ge_i,
   input  wire          op_geu_i,
   input  wire          op_lt_i,
   input  wire          op_ltu_i,
   input  wire          op_ne_i,
   input  wire          op_or_i,
   input  wire          op_rs2_imm_i,
   input  wire          op_sll_i,
   input  wire          op_sra_i,
   input  wire          op_srl_i,
   input  wire          op_sub_i,
   input  wire          op_xor_i,
   output wire [31:0]   dout_o
);

   wire br_result;
   wire is_branch;
   wire shift_amt;

   assign shift_amt = rsb_imm_i[4:0];

   // The synthesizer shall optimize reuse here
   //
   assign br_result = op_lt_i    ?  ((rsa_i < rsb_imm_i) ? 1'b1 : 1'b0) :
                      op_geu_i   ?  ((rsa_i < rsb_imm_i) ? 1'b0 : 1'b1) :
                      op_lt_i    ?  (($signed(rsa_i) < $signed(rsb_imm_i)) ? 1'b1 : 1'b0) :
                      op_ne_i    ?  ((rsa_i == rsb_imm_i) ? 1'b0 : 1'b1) :
                      op_eq_i    ?  ((rsa_i == rsb_imm_i) ? 1'b1 : 1'b0) :
                                    (($signed(rsa_i) < $signed(rsb_imm_i)) ? 1'b0 : 1'b1);

   assign is_branch = op_ge_i | op_eq_i | op_ne_i | op_lt_i | op_geu_i | op_ltu_i;
                     
   assign dout_o =   op_rs2_imm_i   ? op_rs2_imm_i :
                     is_branch      ? {32{br_result}} :
                     op_sra_i       ? rsa_i >>> shift_amt :
                     op_srl_i       ? rsa_i >> shift_amt :
                     op_sll_i       ? rsa_i << shift_amt :
                     op_xor_i       ? rsa_i ^ rsb_imm_i :
                     op_or_i        ? rsa_i | rsb_imm_i :
                     op_and_i       ? rsa_i & rsb_imm_i :
                     op_sub_i       ? rsa_i - rsb_imm_i :
                                      rsa_i + rsb_imm_i;

endmodule

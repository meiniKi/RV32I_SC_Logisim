/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : rv32i_imm                                                    **
 **                                                                          **
 ******************************************************************************/

module rv32i_imm( LOGISIM_CLOCK_TREE_0,
                  instr,
                  B_imm,
                  I_imm,
                  J_imm,
                  S_imm,
                  U_imm);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  instr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] B_imm;
   output[31:0] I_imm;
   output[31:0] J_imm;
   output[31:0] S_imm;
   output[31:0] U_imm;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[5:0] s_LOGISIM_BUS_0;
   wire[20:0] s_LOGISIM_BUS_1;
   wire[3:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[19:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[4:0] s_LOGISIM_BUS_2;
   wire[11:0] s_LOGISIM_BUS_21;
   wire[3:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[7:0] s_LOGISIM_BUS_8;
   wire[2:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_0[0]                 = s_LOGISIM_BUS_4[25];
   assign s_LOGISIM_BUS_19[25]               = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_16[5]                = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_17[5]                = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_18[5]                = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_11[5]                = s_LOGISIM_BUS_0[0];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_4[26];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_19[26];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_16[6];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_17[6];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_18[6];
   assign s_LOGISIM_BUS_0[1]                 = s_LOGISIM_BUS_11[6];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_4[27];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_19[27];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_16[7];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_17[7];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_18[7];
   assign s_LOGISIM_BUS_0[2]                 = s_LOGISIM_BUS_11[7];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_4[28];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_19[28];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_16[8];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_17[8];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_18[8];
   assign s_LOGISIM_BUS_0[3]                 = s_LOGISIM_BUS_11[8];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_4[29];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_19[29];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_16[9];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_17[9];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_18[9];
   assign s_LOGISIM_BUS_0[4]                 = s_LOGISIM_BUS_11[9];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_4[30];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_19[30];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_16[10];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_17[10];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_18[10];
   assign s_LOGISIM_BUS_0[5]                 = s_LOGISIM_BUS_11[10];
   assign s_LOGISIM_BUS_16[11]               = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_17[11]               = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_16[12]               = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_17[12]               = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_16[13]               = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_17[13]               = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_16[14]               = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_17[14]               = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_16[15]               = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_17[15]               = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_16[16]               = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_17[16]               = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_16[17]               = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_17[17]               = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_16[18]               = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_17[18]               = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_16[19]               = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_17[19]               = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_16[20]               = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_17[20]               = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_16[21]               = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_17[21]               = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_16[22]               = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_17[22]               = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_16[23]               = s_LOGISIM_BUS_1[12];
   assign s_LOGISIM_BUS_17[23]               = s_LOGISIM_BUS_1[12];
   assign s_LOGISIM_BUS_16[24]               = s_LOGISIM_BUS_1[13];
   assign s_LOGISIM_BUS_17[24]               = s_LOGISIM_BUS_1[13];
   assign s_LOGISIM_BUS_16[25]               = s_LOGISIM_BUS_1[14];
   assign s_LOGISIM_BUS_17[25]               = s_LOGISIM_BUS_1[14];
   assign s_LOGISIM_BUS_16[26]               = s_LOGISIM_BUS_1[15];
   assign s_LOGISIM_BUS_17[26]               = s_LOGISIM_BUS_1[15];
   assign s_LOGISIM_BUS_16[27]               = s_LOGISIM_BUS_1[16];
   assign s_LOGISIM_BUS_17[27]               = s_LOGISIM_BUS_1[16];
   assign s_LOGISIM_BUS_16[28]               = s_LOGISIM_BUS_1[17];
   assign s_LOGISIM_BUS_17[28]               = s_LOGISIM_BUS_1[17];
   assign s_LOGISIM_BUS_16[29]               = s_LOGISIM_BUS_1[18];
   assign s_LOGISIM_BUS_17[29]               = s_LOGISIM_BUS_1[18];
   assign s_LOGISIM_BUS_16[30]               = s_LOGISIM_BUS_1[19];
   assign s_LOGISIM_BUS_17[30]               = s_LOGISIM_BUS_1[19];
   assign s_LOGISIM_BUS_16[31]               = s_LOGISIM_BUS_1[20];
   assign s_LOGISIM_BUS_17[31]               = s_LOGISIM_BUS_1[20];
   assign s_LOGISIM_BUS_2[0]                 = s_LOGISIM_BUS_4[15];
   assign s_LOGISIM_BUS_8[3]                 = s_LOGISIM_BUS_2[0];
   assign s_LOGISIM_BUS_2[1]                 = s_LOGISIM_BUS_4[16];
   assign s_LOGISIM_BUS_2[1]                 = s_LOGISIM_BUS_8[4];
   assign s_LOGISIM_BUS_2[2]                 = s_LOGISIM_BUS_4[17];
   assign s_LOGISIM_BUS_2[2]                 = s_LOGISIM_BUS_8[5];
   assign s_LOGISIM_BUS_2[3]                 = s_LOGISIM_BUS_4[18];
   assign s_LOGISIM_BUS_2[3]                 = s_LOGISIM_BUS_8[6];
   assign s_LOGISIM_BUS_2[4]                 = s_LOGISIM_BUS_4[19];
   assign s_LOGISIM_BUS_2[4]                 = s_LOGISIM_BUS_8[7];
   assign s_LOGISIM_BUS_3[0]                 = s_LOGISIM_BUS_4[21];
   assign s_LOGISIM_BUS_19[21]               = s_LOGISIM_BUS_3[0];
   assign s_LOGISIM_BUS_16[1]                = s_LOGISIM_BUS_3[0];
   assign s_LOGISIM_BUS_11[1]                = s_LOGISIM_BUS_3[0];
   assign s_LOGISIM_BUS_3[1]                 = s_LOGISIM_BUS_4[22];
   assign s_LOGISIM_BUS_3[1]                 = s_LOGISIM_BUS_19[22];
   assign s_LOGISIM_BUS_3[1]                 = s_LOGISIM_BUS_16[2];
   assign s_LOGISIM_BUS_3[1]                 = s_LOGISIM_BUS_11[2];
   assign s_LOGISIM_BUS_3[2]                 = s_LOGISIM_BUS_4[23];
   assign s_LOGISIM_BUS_3[2]                 = s_LOGISIM_BUS_19[23];
   assign s_LOGISIM_BUS_3[2]                 = s_LOGISIM_BUS_16[3];
   assign s_LOGISIM_BUS_3[2]                 = s_LOGISIM_BUS_11[3];
   assign s_LOGISIM_BUS_3[3]                 = s_LOGISIM_BUS_4[24];
   assign s_LOGISIM_BUS_3[3]                 = s_LOGISIM_BUS_19[24];
   assign s_LOGISIM_BUS_3[3]                 = s_LOGISIM_BUS_16[4];
   assign s_LOGISIM_BUS_3[3]                 = s_LOGISIM_BUS_11[4];
   assign s_LOGISIM_NET_7                    = s_LOGISIM_BUS_4[20];
   assign s_LOGISIM_BUS_19[20]               = s_LOGISIM_NET_7;
   assign s_LOGISIM_BUS_16[0]                = s_LOGISIM_NET_7;
   assign s_LOGISIM_BUS_11[11]               = s_LOGISIM_NET_7;
   assign s_LOGISIM_BUS_19[12]               = s_LOGISIM_BUS_8[0];
   assign s_LOGISIM_BUS_11[12]               = s_LOGISIM_BUS_8[0];
   assign s_LOGISIM_BUS_8[1]                 = s_LOGISIM_BUS_19[13];
   assign s_LOGISIM_BUS_8[1]                 = s_LOGISIM_BUS_11[13];
   assign s_LOGISIM_BUS_8[2]                 = s_LOGISIM_BUS_19[14];
   assign s_LOGISIM_BUS_8[2]                 = s_LOGISIM_BUS_11[14];
   assign s_LOGISIM_BUS_8[3]                 = s_LOGISIM_BUS_19[15];
   assign s_LOGISIM_BUS_8[3]                 = s_LOGISIM_BUS_11[15];
   assign s_LOGISIM_BUS_8[4]                 = s_LOGISIM_BUS_19[16];
   assign s_LOGISIM_BUS_8[4]                 = s_LOGISIM_BUS_11[16];
   assign s_LOGISIM_BUS_8[5]                 = s_LOGISIM_BUS_19[17];
   assign s_LOGISIM_BUS_8[5]                 = s_LOGISIM_BUS_11[17];
   assign s_LOGISIM_BUS_8[6]                 = s_LOGISIM_BUS_19[18];
   assign s_LOGISIM_BUS_8[6]                 = s_LOGISIM_BUS_11[18];
   assign s_LOGISIM_BUS_8[7]                 = s_LOGISIM_BUS_19[19];
   assign s_LOGISIM_BUS_8[7]                 = s_LOGISIM_BUS_11[19];
   assign s_LOGISIM_BUS_9[0]                 = s_LOGISIM_BUS_4[12];
   assign s_LOGISIM_BUS_8[0]                 = s_LOGISIM_BUS_9[0];
   assign s_LOGISIM_BUS_9[1]                 = s_LOGISIM_BUS_4[13];
   assign s_LOGISIM_BUS_9[1]                 = s_LOGISIM_BUS_8[1];
   assign s_LOGISIM_BUS_9[2]                 = s_LOGISIM_BUS_4[14];
   assign s_LOGISIM_BUS_9[2]                 = s_LOGISIM_BUS_8[2];
   assign s_LOGISIM_BUS_10[0]                = s_LOGISIM_BUS_4[8];
   assign s_LOGISIM_BUS_17[1]                = s_LOGISIM_BUS_10[0];
   assign s_LOGISIM_BUS_18[1]                = s_LOGISIM_BUS_10[0];
   assign s_LOGISIM_BUS_10[1]                = s_LOGISIM_BUS_4[9];
   assign s_LOGISIM_BUS_10[1]                = s_LOGISIM_BUS_17[2];
   assign s_LOGISIM_BUS_10[1]                = s_LOGISIM_BUS_18[2];
   assign s_LOGISIM_BUS_10[2]                = s_LOGISIM_BUS_4[10];
   assign s_LOGISIM_BUS_10[2]                = s_LOGISIM_BUS_17[3];
   assign s_LOGISIM_BUS_10[2]                = s_LOGISIM_BUS_18[3];
   assign s_LOGISIM_BUS_10[3]                = s_LOGISIM_BUS_4[11];
   assign s_LOGISIM_BUS_10[3]                = s_LOGISIM_BUS_17[4];
   assign s_LOGISIM_BUS_10[3]                = s_LOGISIM_BUS_18[4];
   assign s_LOGISIM_BUS_12[0]                = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_18[12]               = s_LOGISIM_BUS_12[0];
   assign s_LOGISIM_BUS_12[1]                = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_12[1]                = s_LOGISIM_BUS_18[13];
   assign s_LOGISIM_BUS_12[2]                = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_12[2]                = s_LOGISIM_BUS_18[14];
   assign s_LOGISIM_BUS_12[3]                = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_12[3]                = s_LOGISIM_BUS_18[15];
   assign s_LOGISIM_BUS_12[4]                = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_12[4]                = s_LOGISIM_BUS_18[16];
   assign s_LOGISIM_BUS_12[5]                = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_12[5]                = s_LOGISIM_BUS_18[17];
   assign s_LOGISIM_BUS_12[6]                = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_12[6]                = s_LOGISIM_BUS_18[18];
   assign s_LOGISIM_BUS_12[7]                = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_12[7]                = s_LOGISIM_BUS_18[19];
   assign s_LOGISIM_BUS_12[8]                = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_12[8]                = s_LOGISIM_BUS_18[20];
   assign s_LOGISIM_BUS_12[9]                = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_12[9]                = s_LOGISIM_BUS_18[21];
   assign s_LOGISIM_BUS_12[10]               = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_12[10]               = s_LOGISIM_BUS_18[22];
   assign s_LOGISIM_BUS_12[11]               = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_12[11]               = s_LOGISIM_BUS_18[23];
   assign s_LOGISIM_BUS_12[12]               = s_LOGISIM_BUS_1[12];
   assign s_LOGISIM_BUS_12[12]               = s_LOGISIM_BUS_18[24];
   assign s_LOGISIM_BUS_12[13]               = s_LOGISIM_BUS_1[13];
   assign s_LOGISIM_BUS_12[13]               = s_LOGISIM_BUS_18[25];
   assign s_LOGISIM_BUS_12[14]               = s_LOGISIM_BUS_1[14];
   assign s_LOGISIM_BUS_12[14]               = s_LOGISIM_BUS_18[26];
   assign s_LOGISIM_BUS_12[15]               = s_LOGISIM_BUS_1[15];
   assign s_LOGISIM_BUS_12[15]               = s_LOGISIM_BUS_18[27];
   assign s_LOGISIM_BUS_12[16]               = s_LOGISIM_BUS_1[16];
   assign s_LOGISIM_BUS_12[16]               = s_LOGISIM_BUS_18[28];
   assign s_LOGISIM_BUS_12[17]               = s_LOGISIM_BUS_1[17];
   assign s_LOGISIM_BUS_12[17]               = s_LOGISIM_BUS_18[29];
   assign s_LOGISIM_BUS_12[18]               = s_LOGISIM_BUS_1[18];
   assign s_LOGISIM_BUS_12[18]               = s_LOGISIM_BUS_18[30];
   assign s_LOGISIM_BUS_12[19]               = s_LOGISIM_BUS_1[19];
   assign s_LOGISIM_BUS_12[19]               = s_LOGISIM_BUS_18[31];
   assign s_LOGISIM_NET_13                   = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_19[31]               = s_LOGISIM_NET_13;
   assign s_LOGISIM_NET_15                   = s_LOGISIM_BUS_4[7];
   assign s_LOGISIM_BUS_17[0]                = s_LOGISIM_NET_15;
   assign s_LOGISIM_BUS_18[11]               = s_LOGISIM_NET_15;
   assign s_LOGISIM_BUS_21[0]                = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_11[20]               = s_LOGISIM_BUS_21[0];
   assign s_LOGISIM_BUS_21[1]                = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_21[1]                = s_LOGISIM_BUS_11[21];
   assign s_LOGISIM_BUS_21[2]                = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_21[2]                = s_LOGISIM_BUS_11[22];
   assign s_LOGISIM_BUS_21[3]                = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_21[3]                = s_LOGISIM_BUS_11[23];
   assign s_LOGISIM_BUS_21[4]                = s_LOGISIM_BUS_1[4];
   assign s_LOGISIM_BUS_21[4]                = s_LOGISIM_BUS_11[24];
   assign s_LOGISIM_BUS_21[5]                = s_LOGISIM_BUS_1[5];
   assign s_LOGISIM_BUS_21[5]                = s_LOGISIM_BUS_11[25];
   assign s_LOGISIM_BUS_21[6]                = s_LOGISIM_BUS_1[6];
   assign s_LOGISIM_BUS_21[6]                = s_LOGISIM_BUS_11[26];
   assign s_LOGISIM_BUS_21[7]                = s_LOGISIM_BUS_1[7];
   assign s_LOGISIM_BUS_21[7]                = s_LOGISIM_BUS_11[27];
   assign s_LOGISIM_BUS_21[8]                = s_LOGISIM_BUS_1[8];
   assign s_LOGISIM_BUS_21[8]                = s_LOGISIM_BUS_11[28];
   assign s_LOGISIM_BUS_21[9]                = s_LOGISIM_BUS_1[9];
   assign s_LOGISIM_BUS_21[9]                = s_LOGISIM_BUS_11[29];
   assign s_LOGISIM_BUS_21[10]               = s_LOGISIM_BUS_1[10];
   assign s_LOGISIM_BUS_21[10]               = s_LOGISIM_BUS_11[30];
   assign s_LOGISIM_BUS_21[11]               = s_LOGISIM_BUS_1[11];
   assign s_LOGISIM_BUS_21[11]               = s_LOGISIM_BUS_11[31];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[31:0]              = instr;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign I_imm                              = s_LOGISIM_BUS_16[31:0];
   assign S_imm                              = s_LOGISIM_BUS_17[31:0];
   assign B_imm                              = s_LOGISIM_BUS_18[31:0];
   assign U_imm                              = s_LOGISIM_BUS_19[31:0];
   assign J_imm                              = s_LOGISIM_BUS_11[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_1[0] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[1] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[2] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[3] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[4] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[5] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[6] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[7] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[8] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[9] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[10] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[11] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[12] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[13] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[14] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[15] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[16] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[17] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[18] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[19] = s_LOGISIM_BUS_4[31];
   assign s_LOGISIM_BUS_1[20] = s_LOGISIM_BUS_4[31];

   assign s_LOGISIM_BUS_11[0] = 1'd0;

   assign s_LOGISIM_BUS_18[0] = 1'd0;

   assign s_LOGISIM_BUS_19[11:0] = 12'd0;



endmodule

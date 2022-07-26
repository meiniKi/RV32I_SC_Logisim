
module rv32i_lsu ( 
   input  wire [2:0]    func3_i,
   input  wire [31:0]   wdat_i,
   input  wire [31:0]   mem_addr_i,
   output wire [31:0]   mem_addr_o,
   output wire          we_mem_o,
   input  wire [31:0]   rmem_i,
   output wire [31:0]   wmem_o,
   output wire [31:0]   rdat_o,
   output wire          be0_o,
   output wire          be1_o,
   output wire          be2_o,
   output wire          be3_o
);


   wire is_b;
   wire is_h;
   wire is_w;
   wire is_unsigned;

   assign is_b = (func3_i[1:0] == 2'b00);
   assign is_h = (func3_i[1:0] == 2'b01);
   assign is_w = (func3_i[1:0] == 2'b10);

   assign is_unsigned = func3_i[2];

   assign mem_addr_o = mem_addr_i;

   assign wmem_o =   is_b ? (wdat_i << (mem_addr_i[1:0] << 'd8)) :
                     is_h ? 


endmodule

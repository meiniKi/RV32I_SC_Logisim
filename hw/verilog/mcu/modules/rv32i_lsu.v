
module rv32i_lsu ( 
   input  wire [2:0]    func3_i,
   input  wire          st_i,
   input  wire [31:0]   wdat_i,
   input  wire [31:0]   mem_addr_i,
   output wire [31:0]   mem_addr_o,
   output wire          we_mem_o,
   input  wire [31:0]   rmem_i,
   output wire [31:0]   wmem_o,
   output wire [31:0]   rdat_o,
   output wire [3:0]    be_o
);

   wire        is_b;
   wire        is_h;
   wire        is_w;
   wire        is_unsigned;
   wire [1:0]  low_addr;

   wire [31:0] rmem_shifted;
   wire [31:0] rbyte_extended;
   wire [31:0] rhalfw_extended;

   wire [5:0] shift_amt;

   assign is_b = (func3_i[1:0] == 2'b00);
   assign is_h = (func3_i[1:0] == 2'b01);
   assign is_w = (func3_i[1:0] == 2'b10);

   assign is_unsigned   = func3_i[2];
   assign mem_addr_o    = mem_addr_i;
   assign we_mem_o      = st_i;
   assign low_addr      = mem_addr_i[1:0];

   assign shift_amt     =  (low_addr == 2'b00) ?   6'h0 :
                           (low_addr == 2'b01) ?   6'h10 :
                                                   6'h18;

   assign wmem_o        = (wdat_i << shift_amt);
   assign rmem_shifted  = (rmem_i >> shift_amt);

   assign rbyte_extended = is_unsigned ?  {         24'b0        , rmem_shifted[7:0] } :
                                          { {24{rmem_shifted[7]}}, rmem_shifted[7:0] };

   assign rhalfw_extended = is_unsigned ? {          16'b0        , rmem_shifted[15:0] } :
                                          { {16{rmem_shifted[15]}}, rmem_shifted[15:0] };

   assign rdat_o =   is_b ?   rbyte_extended :
                     is_h ?   rhalfw_extended :
                              rmem_i;

   assign be_o =  is_b ? ('h1 << low_addr) :
                  is_h ? ('h3 << low_addr) :
                         'hf;

`ifndef SYNTHESIS
   always @(*) begin
      assert (!( is_h && (low_addr == 2'b11) ));
      assert (!( is_w && (low_addr != 2'b00) ));
   end
`endif

endmodule

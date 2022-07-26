

module ram #( parameter DATA_WIDTH = 32,
              parameter ADDR_WIDTH = 12,
              parameter INIT_FILE = "") (
    input  wire                     clk_i,
    input  wire [ADDR_WIDTH-1:0]    addr_i, 
    input  wire [DATA_WIDTH-1:0]    din_i,
    input  wire                     we_i, 
    input  wire                     be0_i,
    input  wire                     be1_i,
    input  wire                     be2_i,
    input  wire                     be3_i,
    output wire [DATA_WIDTH-1:0]    dout_o
);

reg  [DATA_WIDTH-1:0] mem [0:(2**ADDR_WIDTH-1)>>2];
wire [DATA_WIDTH-1:0] mask; 

// Note: this needs to be adopted when DATA_WIDTH!=32 bit
// assertion might be inserted
//
assign mask = {{8{be3_i}}, {8{be2_i}}, {8{be1_i}}, {8{be0_i}}};

assign dout_o = mem[addr_i];

initial begin
    if (INIT_FILE != "")
        $readmemh(INIT_FILE, mem);    
end

always @(posedge clk_i) begin
    if (we_i) begin
       mem[addr_i] <= (mem[addr_i] & ~mask) | (din_i & mask); 
    end
end

endmodule
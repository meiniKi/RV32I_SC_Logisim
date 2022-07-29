
module ram_byte #( parameter ADDR_WIDTH = 12,
                   parameter INIT_FILE = "") (
    input  wire                     clk_i,
    input  wire [ADDR_WIDTH-1:0]    addr_i, 
    input  wire [7:0]               din_i,
    input  wire                     we_i,
    output reg  [7:0]               dout_o
);


reg  [7:0] mem [0:(2**ADDR_WIDTH-1)];

initial begin
    if (INIT_FILE != "")
        $readmemh(INIT_FILE, mem);
end


always @(posedge clk_i) begin
    dout_o <= mem[addr_i];

    if (we_i) begin
        mem[addr_i] <= din_i; 
    end
end

endmodule
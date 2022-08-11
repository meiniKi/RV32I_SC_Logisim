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
// Usage    RAM 1-byte width
//          Shall support being identified as BRAM by Lattic flow
//
//

module ram_byte #( parameter ADDR_WIDTH = 12,
                   parameter INIT_FILE = "") (
    input  wire                     wclk_i,
    input  wire                     rclk_i,
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

    always @(posedge rclk_i) begin
        dout_o <= mem[addr_i];
    end

    always @(posedge wclk_i) begin
        if (we_i) begin
            mem[addr_i] <= din_i; 
        end
    end

endmodule
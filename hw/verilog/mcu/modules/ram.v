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
// Usage    RAM module
//          currently: hard-coded 4-byte width (paramter changes are ignored!)
//
//


module ram #( parameter DATA_WIDTH = 32,
              parameter ADDR_WIDTH = 12,
              parameter INIT_FILE  = "",
              parameter INIT_BYTE0 = "",
              parameter INIT_BYTE1 = "",
              parameter INIT_BYTE2 = "",
              parameter INIT_BYTE3 = "") (
    input  wire                     wclk_i,
    input  wire                     rclk_i,
    input  wire [ADDR_WIDTH-1:0]    addr_i, 
    input  wire [DATA_WIDTH-1:0]    din_i,
    input  wire                     we_i, 
    input  wire                     be0_i,
    input  wire                     be1_i,
    input  wire                     be2_i,
    input  wire                     be3_i,
    output wire  [DATA_WIDTH-1:0]   dout_o
);

`ifdef SYNTH_ICE40


    ram_byte #( .ADDR_WIDTH ( ADDR_WIDTH ),
                .INIT_FILE  ( INIT_BYTE0 )) i_ram_byte0 (
                                                        .wclk_i ( wclk_i ),
                                                        .rclk_i ( rclk_i ),
                                                        .addr_i ( addr_i ), 
                                                        .din_i  ( din_i[7:0] ),
                                                        .we_i   ( we_i & be0_i ),
                                                        .dout_o ( dout_o[7:0] )
                                                    );

    ram_byte #( .ADDR_WIDTH ( ADDR_WIDTH ),
                .INIT_FILE  ( INIT_BYTE1 )) i_ram_byte1 (
                                                        .wclk_i ( wclk_i ),
                                                        .rclk_i ( rclk_i ),
                                                        .addr_i ( addr_i ), 
                                                        .din_i  ( din_i[15:8] ),
                                                        .we_i   ( we_i & be1_i ),
                                                        .dout_o ( dout_o[15:8] )
                                                    );

    ram_byte #( .ADDR_WIDTH ( ADDR_WIDTH ),
                .INIT_FILE  ( INIT_BYTE2 )) i_ram_byte2 (
                                                        .wclk_i ( wclk_i ),
                                                        .rclk_i ( rclk_i ),
                                                        .addr_i ( addr_i ), 
                                                        .din_i  ( din_i[23:16] ),
                                                        .we_i   ( we_i & be2_i ),
                                                        .dout_o ( dout_o[23:16] )
                                                    );

    ram_byte #( .ADDR_WIDTH ( ADDR_WIDTH ),
                .INIT_FILE  ( INIT_BYTE3 )) i_ram_byte3 (
                                                        .wclk_i ( wclk_i ),
                                                        .rclk_i ( rclk_i ),
                                                        .addr_i ( addr_i ), 
                                                        .din_i  ( din_i[31:24] ),
                                                        .we_i   ( we_i & be3_i ),
                                                        .dout_o ( dout_o[31:24] )
                                                    );

`else

    reg  [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH-1):0];
    wire [DATA_WIDTH-1:0] mask; 

    // Note: this needs to be adopted when DATA_WIDTH!=32 bit
    // assertion might be inserted
    //
    assign mask = {{8{be3_i}}, {8{be2_i}}, {8{be1_i}}, {8{be0_i}}};

    initial begin
        if (INIT_FILE != "")
            $readmemh(INIT_FILE, mem);
    end

    // use _wire_ for dout_o in all ifdefs
    //
    reg [DATA_WIDTH-1:0] dout;
    assign dout_o = dout;

    always @(posedge rclk_i) begin
        dout <= mem[addr_i];
    end

    always @(posedge wclk_i) begin
        if (we_i) begin
        mem[addr_i] <= (mem[addr_i] & ~mask) | (din_i & mask); 
        end
    end
`endif

endmodule
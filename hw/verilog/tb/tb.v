
`timescale 1ns/1ps

module tb;

    reg           clk_i;
    reg           rst_in;
    wire [31:0]   led_o;
    wire [6:0]    tty_o;
    wire          tty_we_o;

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(5, i_mcu);

        // Reset            
                rst_in = 0;
        #101    rst_in = 1;

        #100000 $finish();
    end

    always begin : clock_gen
        #10 clk_i = 1;
        #10 clk_i = 0;
    end

    mcu i_mcu ( .clk_i     ( clk_i ),
                .rst_in    ( rst_in ),
                .led_o     ( led_o ),
                .tty_o     ( tty_o ),
                .tty_we_o  ( tty_we_o )
                );

endmodule

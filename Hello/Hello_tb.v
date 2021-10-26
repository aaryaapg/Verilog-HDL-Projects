`timescale 1ns / 1ps
`include "Hello.v"
module Hello_tb;
    reg a;
    wire b;
    Hello uut(a,b);
    initial begin
        $dumpfile("Hello_tb.vcd");
        $dumpvars(0, Hello_tb);
        a = 0;
        #20;
        a = 1;
        #20;
        a = 0;
        #20;
        $display("Test Complete");

    end
endmodule
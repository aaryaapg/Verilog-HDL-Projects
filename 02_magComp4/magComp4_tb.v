`timescale 1ns / 1ps
`include "magComp4.v"
module magComp4_tb;
  reg [3:0] A,B;
  wire bothEqual, A_greater, B_greater;
  magComp4 uut (.A(A), .B(B), .bothEqual(bothEqual), .A_greater(A_greater), .B_greater(B_greater));
  initial begin
    $dumpfile("magComp4_tb.vcd");
    $dumpvars(0, magComp4_tb);
    A = 4'b0000;
    B = 4'b0000; //Equal initially
    #10 A = 4'b0000; B = 4'b0110; //B
    #10 A = 4'b1100; B = 4'b0110; //A
    #10 A = 4'b0100; B = 4'b1010; //B
    #10 A = 4'b0110; B = 4'b0110; //Equal
    $display("Test Complete");
  end
endmodule
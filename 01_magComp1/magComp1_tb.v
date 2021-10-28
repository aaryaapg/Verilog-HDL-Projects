`timescale 1ns / 1ps
`include "magComp1.v"
module magComp1_tb;
	reg A,B;
	wire bothEqual, A_greater, B_greater;
	magComp1 uut (.A(A), .B(B), .bothEqual(bothEqual), .A_greater(A_greater), .B_greater(B_greater));
	initial begin
		$dumpfile("magComp1_tb.vcd");
    $dumpvars(0, magComp1_tb);
		A = 0; B = 0;
		#10 A = 0; B = 1;
		#10 A = 1; B = 0;
		#10 A = 1; B = 1;
		#10;
		$display("Test Complete");
	end
endmodule
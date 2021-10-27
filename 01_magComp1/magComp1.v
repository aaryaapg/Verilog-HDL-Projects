module magComp1(
	input A,
	input B,
	output bothEqual,
	output A_greater,
	output B_greater
);

assign bothEqual = (~A)&(~B) | A&B;
assign A_greater = A&(~B);
assign B_greater = (~A)&B;

endmodule

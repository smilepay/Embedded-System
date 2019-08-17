`timescale 1 ns/1 ns

module mux2X1( I0,I1,sel,out);
	input I0,I1;
	input sel;
	output out;
	
	assign out=(sel)?I0:I1;
endmodule


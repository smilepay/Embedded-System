`timescale 1 ns/1 ns

module Mux_4x1_2bit_gate(A1, A0, B1, B0, C1, C0,D1, D0, S1, S0,Out1_b, Out0_b);

	input A1, A0, B1, B0, C1, C0,D1, D0;
	input S1, S0;
	output Out1_b, Out0_b;
	
	Mux_4x1_1bit_gate Mux_4x1_1bit_gate_1(A1,B1,C1,D1,S1,S0,Out1_b);
	Mux_4x1_1bit_gate Mux_4x1_1bit_gate_2(A0,B0,C0,D0,S1,S0,Out0_b);

endmodule;
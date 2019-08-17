`timescale 1 ns/1 ns

module Mux_4x1_1bit_gate(I3,I2,I1,I0,S1,S0,D);

	input I3,I2,I1,I0;
	input S1,S0;
	output D;
	
	wire N1,N2,N3,N4,N5,N6;
	
	not Inv_1(N1,S1);
	not Inv_2(N2,S0);
	and And_1(N3,N1,N2,I3);
	and And_2(N4,N1,S0,I2);
	and And_3(N5,S1,N2,I1);
	and And_4(N6,S1,S0,I0);
	or Or_1(D,N3,N4,N5,N6);

endmodule

	
`timescale 1 ns/1 ns

module Mux_4x1_2bit_beh(A1, A0, B1, B0, C1, C0,D1, D0, S1, S0,Out1_b, Out0_b);

	input A1, A0, B1, B0, C1, C0,D1, D0;
	input S1, S0;
	output Out1_b, Out0_b;
	reg Out1_b, Out0_b;

	always @*
	begin
		if(S1==0 && S0==0)
		begin
			Out1_b <= A1;
			Out0_b <= A0;
		end
		else if(S1 == 0 && S0 == 1)
		begin
			Out1_b <= B1;
			Out0_b <= B0;
		end
		else if(S1 == 1 && S0 ==0)
		begin
			Out1_b <= C1;
			Out0_b <= C0;
		end
		else
		begin
			Out1_b <= D1;
			Out0_b <= D0;
		end
	end
endmodule
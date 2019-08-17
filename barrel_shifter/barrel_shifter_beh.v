`timescale 1 ns/1 ns

module Barrel_Shifter(SH_DIR, SH_AMT, D_IN, D_OUT);
	input SH_DIR;
	input [4:0] SH_AMT; 
	input [31:0] D_IN;
	output [31:0] D_OUT; 
	reg [31:0] D_OUT; 
	wire [31:0] D_OUT_left,D_OUT_nright,D_OUT_pright;
	
	left_barrel_shifter_32bit left_barrel_shift(D_IN,SH_AMT,D_OUT_left);
	right_barrel_shifter_neg_32bit right_neg_barrel_shift(D_IN,SH_AMT,D_OUT_nright);
	right_barrel_shifter_pos_32bit right_pos_barrel_shift(D_IN,SH_AMT,D_OUT_pright);

	always @* begin
		if(SH_DIR == 0) 
			D_OUT <= D_OUT_left; 
		else if(SH_DIR ==1)
		begin
		  if(D_IN[31] == 1)
			D_OUT <= D_OUT_nright; 
		  else if(D_IN[31] == 0)
			D_OUT <= D_OUT_pright; 
		end
	end

endmodule
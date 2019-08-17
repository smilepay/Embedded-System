`timescale 1 ns/1 ns

module Testbench();

	reg SH_DIR_s;
	reg [4:0] SH_AMT_s;
	reg [31:0] D_IN_s;
	wire [31:0] D_OUT_s;

	Barrel_Shifter CompToTest(SH_DIR_s, SH_AMT_s, D_IN_s, D_OUT_s);
	integer Index;

	initial begin
	$display("1.Shift-Right Operation Test with Negative Value!");
	for( Index=0; Index<=31; Index=Index+1)
	begin
		SH_DIR_s<=1;
		SH_AMT_s<=Index;
		D_IN_s <= 32'b10000000000000000000000000000000;
		#10;
		$display("shift-right with amount %d is %32b",Index,D_OUT_s);  
	end
	$display("2.Shift-Right Operation Test with Positive Value!");
	for( Index=0; Index<=31; Index=Index+1)
	begin
		SH_DIR_s<=1;
		SH_AMT_s<=Index;
		D_IN_s <= 32'b01000000000000000000000000000000;
		#10;
		$display("shift-right with amount %d is %32b",Index,D_OUT_s);  
	end
	$display("3.Shift-Left Operation Test with Number 1!");
	for( Index=0; Index<=31; Index=Index+1)
	begin
		SH_DIR_s<=0;
		SH_AMT_s<=Index;
		D_IN_s <= 32'b00000000000000000000000000000001;
		#10;
		$display("shift-left with amount %d is %32b",Index,D_OUT_s);  
	end
	$stop;
	end

endmodule

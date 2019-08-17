`timescale 1 ns/1 ns

module Testbench();
    
      reg Start_s, Red_s, Green_s, Blue_s, Clk_s, Rst_s;
      wire U_s;
   
   Code_Detector CompToTest(Start_s, Red_s, Green_s, Blue_s, Clk_s, Rst_s, U_s);
   reg [12:0] Index,answer;

   always begin
   Clk_s <=0;
   #10;
   Clk_s <=1;
   #10;
   end

   initial begin
      for(Index=13'b0000000000000; Index<13'b1000000000000 ; Index=Index+13'b0000000000001)
         begin
	 Rst_s <= 1;   
         Start_s <= 0;
         Red_s<=0;
         Green_s<=0;
         Blue_s<=0;
         @(posedge Clk_s);
         Rst_s <= 0;   
         Start_s <= 1; 
         @(posedge Clk_s);
         Start_s <= 0;
         Red_s <= Index[2];
         Green_s <= Index[1];
         Blue_s <= Index[0];
         @(posedge Clk_s);
         Red_s <= Index[5];
         Green_s <= Index[4];
         Blue_s <= Index[3];
         @(posedge Clk_s);
         Red_s <= Index[8];
         Green_s <= Index[7];
         Blue_s <= Index[6];   
         @(posedge Clk_s);
         Red_s <= Index[11];
         Green_s <= Index[10];
         Blue_s <= Index[9];   
         @(posedge Clk_s);
         #10;
         if(U_s == 1)
	    begin
            $display("#%d: %3b_%3b_%3b_%3b is correct!", Index,Index[11:9],Index[8:6],Index[5:3],Index[2:0]);  
	    answer = Index;
	 end
	 else
            $display("#%d: %3b_%3b_%3b_%3b is incorrect!", Index,Index[11:9],Index[8:6],Index[5:3],Index[2:0]);
	 end
	 $display("#%d: %3b_%3b_%3b_%3b is correct!", answer,answer[11:9],answer[8:6],answer[5:3],answer[2:0]);  
         $stop;
         end
endmodule

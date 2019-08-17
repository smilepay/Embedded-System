`timescale 1 ns/1 ns

module Code_Detector(Start, Red, Green, Blue, Clk, Rst, U);

   input Start, Red, Green, Blue;
   output reg U; 
   input Clk, Rst;

   parameter S_Wait = 0, S_Start = 1, S_Red1 = 2, S_Blue = 3,S_Green = 4,S_Red2 = 5;

   reg [2:0] State, StateNext;

   always @(posedge Clk) begin
      if(Rst == 1)
         State <= S_Wait;
      else
         State <= StateNext;
   end

   always @(State,Start,Red,Green,Blue) begin   
      U <= 0;
      case(State)
         S_Wait: begin
            if(Start == 0)
               StateNext <= S_Wait;
            else
               StateNext <= S_Start;
         end
        S_Start : begin
            if (( Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Red1;
            else if (( ~Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Start;
            else 
		StateNext <= S_Wait;
         end
         S_Red1 : begin
            if (( ~Red & Blue & ~Green) == 1'b1)
               StateNext <= S_Blue;
           else if (( ~Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Red1;
            else
               StateNext <= S_Wait;
         end
         S_Blue : begin
            if (( ~Red & ~Blue & Green) == 1'b1)
               StateNext <= S_Green;
            else if (( ~Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Blue;
            else
               StateNext <= S_Wait;
         end
         S_Green : begin
            if (( Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Red2;
            else if (( ~Red & ~Blue & ~Green) == 1'b1)
               StateNext <= S_Green;
            else
               StateNext <= S_Wait;
      
         end
         S_Red2 : begin
             U <= 1;
             StateNext <= S_Wait;   
         end
         default : begin
             StateNext <= S_Wait;
         end
      endcase
   end
endmodule
//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//The Registor Module to save the input state 

module FourBitReg(clk,enable,enter,rts,in_4_Bit, out_4_Bit);
	parameter high = 1'b1,
		  low  = 1'b0,
		  zeros = 4'b0000;

	input enable,rts,enter,clk;
	input[3:0] in_4_Bit;
	output reg[3:0] out_4_Bit = zeros;

	always@(negedge clk) begin
		if(enable == high & rts == low) begin
			out_4_Bit = zeros;
		end
		else if(enable == high & enter == high) begin
			out_4_Bit = in_4_Bit;
		end
		else ;
	end
endmodule

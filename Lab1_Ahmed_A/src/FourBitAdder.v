//ECE5440
//Alamin Ahmed 5293
//Lab 1 Number Matching Game
//4 bit adder module

module FourBitAdder(in_A,in_B,out);
	input[3:0] in_A, in_B;
	output[3:0] out;
	reg[3:0] out;

	always@(in_A,in_B) begin
		out = in_A + in_B;
	end
endmodule

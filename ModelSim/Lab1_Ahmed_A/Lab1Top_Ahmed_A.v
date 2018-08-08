//ECE5440
//Alamin Ahmed 5293
//Lab 1 Number Matching Game
//Top Module

module Lab1Top_Ahmed_A(in_A,in_B,seg_A,seg_B,seg_Sum);
	input[3:0] in_A,in_B;

	output[6:0] seg_A, seg_B, seg_Sum;
	wire[3:0] sum;

	SevenSegDisplay Display_A(in_A, seg_A);
	SevenSegDisplay Display_B(in_B, seg_B);
	FourBitAdder My_Adder(in_A,in_B,sum);
	SevenSegDisplay Display_Sum(sum, seg_Sum);

endmodule

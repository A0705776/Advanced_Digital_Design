//ECE5440
//Alamin Ahmed 5293
//Lab 1 Number Matching Game
//TestBench

`timescale 1 ns / 100 ps

module TB_Lab1Top_Ahmed_A();
	reg[3:0] in_A_S,in_B_S;
	wire[3:0] sum_S;

	FourBitAdder My_Adder(in_A_S,in_B_S,sum_S);

	initial begin 
		in_A_S = 4'b0000; in_B_S = 4'b0000;
		#10 in_A_S = 0'b1100; in_B_S = 0'b0011;
		#10 in_A_S = 0'b1000; in_B_S = 0'b0011;
		#10 ;
	end
endmodule

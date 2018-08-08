//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//Top Module

module Lab2Part1Top_Ahmed_A(clk,rts,password,enter,in_A,in_B,adderEnable,adderDisable,seg_A, seg_B, seg_Sum);
	input clk, rts, password, enter;
	input[3:0] in_A,in_B;
	output[6:0] seg_A, seg_B, seg_Sum;
	output adderEnable,adderDisable;

	wire[3:0] in_A_reg, in_B_reg, sum;
	wire BS_Enter;

	
	ButtonShaper enterBtn(clk,rts,enter,BS_Enter);

	Authentication passCheck(clk,rts,password,BS_Enter,adderEnable,adderDisable);

	FourBitReg A_reg(clk,adderEnable,BS_Enter,rts,in_A,in_A_reg);
	FourBitReg B_reg(clk,adderEnable,BS_Enter,rts,in_B,in_B_reg);
	FourBitAdder myAdder(in_A_reg,in_B_reg,sum);

	SevenSegDisplay(in_A_reg,seg_A);
	SevenSegDisplay(in_B_reg,seg_B);
	SevenSegDisplay(sum,seg_Sum);
	

endmodule

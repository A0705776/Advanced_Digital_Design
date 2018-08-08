//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//TestBench Access Control
`timescale 1 ns / 100 ps

module TB_Button_Shaper();
	reg Clk_s, rts_s, password_s, enter_s;
	wire adderEnable_s, adderDisable_s;

	Authentication MyAC(Clk_s,rts_s,password_s,enter_s,adderEnable_s,adderDisable_s);

	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end 

	initial begin 
		rts_s = 0;
		password_s = 0;
		enter_s = 0;
		@(posedge Clk_s);

		#5 rts_s = 1;

		@(posedge Clk_s);
		#5 	password_s = 1; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;

		@(posedge Clk_s);
		#5 	password_s = 1; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;

		@(posedge Clk_s);
		#5 	password_s = 0; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;
		
		@(posedge Clk_s);
		#5 	password_s = 0; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;

		@(posedge Clk_s);
		#5 	password_s = 1; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;

		@(posedge Clk_s);
		#5 	password_s = 0; enter_s = 1;
		@(posedge Clk_s);
		#5 	enter_s = 0;

		@(posedge Clk_s);
		@(posedge Clk_s);
		
	end
endmodule

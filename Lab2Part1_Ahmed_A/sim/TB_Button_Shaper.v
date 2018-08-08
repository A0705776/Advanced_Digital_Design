//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//TestBench Button Shaper

`timescale 1 ns / 100 ps

module TB_Button_Shaper();
	reg Clk_s, rts_s, B_in_s;
	wire B_out_s;

	ButtonShaper myBS(Clk_s,rts_s,B_in_s,B_out_s);

	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end 

	initial begin 
		rts_s = 0;
		B_in_s = 1;
		@(posedge Clk_s);

		#5 rts_s = 1;
		@(posedge Clk_s);
		#5 B_in_s = 1;
		@(posedge Clk_s);
		#5 B_in_s = 0;
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);

		#5 rts_s = 0;
		@(posedge Clk_s);
		#5 B_in_s = 1;
		@(posedge Clk_s);
		#5 B_in_s = 0;
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
	end
endmodule
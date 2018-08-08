module test(blink,clk);
	input clk;
	output blink;
	reg blink;

	always @(posedge clk)
		begin
			Alarm = Door_Sensor & Active & (~Deactive_Button);
		end
endmodule
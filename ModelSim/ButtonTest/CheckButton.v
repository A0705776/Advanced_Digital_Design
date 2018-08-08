module CheckButton(in,out);
	input in;
	output [6:0] out;
	reg[3:0] temp = 4'b0;
	
	
	SevenSegDisplay(temp,out);
	always@(in) begin
	if (~in)
		temp = temp + 4'b1;
	end//end always
	
endmodule

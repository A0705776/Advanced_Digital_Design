//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//Seven Segment Display Module

module SevenSegDisplay(in_4_bit,out_7_bit);
	input[3:0] in_4_bit;
	output[6:0] out_7_bit;
	reg[6:0] out_7_bit;
/*
	--0--
	5   1
	--6--
	4   2
	--3--
0's means active

*/

	always@(in_4_bit) begin
		case(in_4_bit)
			4'b0000: begin out_7_bit = 7'b1000000; end //0
			4'b0001: begin out_7_bit = 7'b1111001; end //1
			4'b0010: begin out_7_bit = 7'b0100100; end //2
			4'b0011: begin out_7_bit = 7'b0110000; end //3
			4'b0100: begin out_7_bit = 7'b0011001; end //4
			4'b0101: begin out_7_bit = 7'b0010010; end //5
			4'b0110: begin out_7_bit = 7'b0000010; end //6
			4'b0111: begin out_7_bit = 7'b1111000; end //7
			4'b1000: begin out_7_bit = 7'b0000000; end //8
			4'b1001: begin out_7_bit = 7'b0010000; end //9
			4'b1010: begin out_7_bit = 7'b0001000; end //10 A
			4'b1011: begin out_7_bit = 7'b0000011; end //11 b
			4'b1100: begin out_7_bit = 7'b1000110; end //12 C
			4'b1101: begin out_7_bit = 7'b0100001; end //13 d
			4'b1110: begin out_7_bit = 7'b0000110; end //14 E
			4'b1111: begin out_7_bit = 7'b0001110; end //15 F

			default: begin out_7_bit = 7'b1111111; end
		endcase
	end
endmodule

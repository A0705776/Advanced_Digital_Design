//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//Button Shaper Module


module ButtonShaper(clk,rts,B_in,B_out);
	parameter high = 1'b1,
				 low  = 1'b0;

	parameter pause = 2'b00,
				 on    = 2'b01,
				 off   = 2'b10;

	input clk, rts, B_in;
	output reg B_out = low;

	reg[1:0] state;
	
	always@(posedge clk) begin 
		if(rts == low) begin state <= pause; end
		else begin
			case(state) 
				on: begin 
					B_out <= high;
					state <= off; 
				end
				off: begin
					B_out <= low;
					if(B_in == low) begin state <= off; end
					else begin state <= pause; end
				end
				pause: begin
					B_out <= low;
					if(B_in == low) begin state <= on; end
					else begin state <= pause; end
				end
				default: begin state <= pause; end
			endcase
		end
	end
	
	
endmodule

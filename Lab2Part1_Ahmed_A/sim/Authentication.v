//ECE5440
//Alamin Ahmed 5293
//Lab 2 Number Matching Game with enter/rts and password protection
//Password Check Module

module Authentication(clk,rts,password,enter,adderEnable,adderDisable);
	parameter high 			= 1'b1,
		  low  			= 1'b0,
       		  HardCodePassword 	= 6'b010011,
		  zeros 		= 6'b000000;

	parameter st1 	= 3'b000,
		  st2 	= 3'b001,
		  st3 	= 3'b010,
		  st4 	= 3'b011,
		  st5 	= 3'b100,
		  st6 	= 3'b101,
		  
		  stEnd = 3'b111;	

	input clk, rts, password, enter;
	output reg adderEnable = low, adderDisable = high;
	reg[5:0] TempPassword = zeros;
	reg[2:0] state = st1;

	always@(negedge clk) begin
		if(rts == low) begin
			if(state != stEnd) begin 
				state = st1; 
			end
			else ;
		end
		else if(enter == high) begin
			case(state)
				st1: begin 
					TempPassword = zeros; 
					adderEnable = low; 
					adderDisable = high;
					TempPassword[0] = password; state = st2; 
				end
				st2: begin TempPassword[1] = password; state = st3; end
				st3: begin TempPassword[2] = password; state = st4; end
				st4: begin TempPassword[3] = password; state = st5; end
				st5: begin TempPassword[4] = password; state = st6; end
				st6: begin 
					TempPassword[5] = password; 
	 
					if(TempPassword == HardCodePassword) begin 
						adderEnable = high; 
						adderDisable = low;
						state = stEnd;
					end
					else begin state = st1; end
				end			
				stEnd: begin state = stEnd; end
				default: begin 
					state = st1; 
				end
			endcase
		end
		else ;
	end
endmodule

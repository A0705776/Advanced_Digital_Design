module test(X,Y);
  input X;
  output Y;
  reg Y;
  
  always @(X)
	begin
	  Y = -X;
	end
endmodule

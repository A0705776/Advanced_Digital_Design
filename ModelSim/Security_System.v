module Security_System(Door_Sensor, Active, Deactive_Button, Alarm);
	input Door_Sensor, Active, Deactive_Button;
	output Alarm;
	reg Alarm;

	always @(Door_Sensor, Active, Deactive_Button)
		begin
			Alarm = Door_Sensor & Active & (~Deactive_Button);
		end
endmodule
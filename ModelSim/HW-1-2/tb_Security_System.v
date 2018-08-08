`timescale 1 ns/100 ps

module tb_Security_System();

	reg Door_Sensor_s, Active_s, Deactive_Button_s;
	wire Alarm_s;

	Security_System My_System(Door_Sensor_s, Active_s, Deactive_Button_s, Alarm_s);

		initial begin 
			Door_Sensor_s = 0;
			Active_s = 0;
			Deactive_Button_s = 0;

			#10 Door_Sensor_s = 0; Active_s = 0; Deactive_Button_s = 1;
			#10 Door_Sensor_s = 0; Active_s = 1; Deactive_Button_s = 0;
			#10 Door_Sensor_s = 0; Active_s = 1; Deactive_Button_s = 1;
			#10 Door_Sensor_s = 1; Active_s = 0; Deactive_Button_s = 0;
			#10 Door_Sensor_s = 1; Active_s = 0; Deactive_Button_s = 1;
			#10 Door_Sensor_s = 1; Active_s = 1; Deactive_Button_s = 0;
			#10 Door_Sensor_s = 1; Active_s = 1; Deactive_Button_s = 1;
			#10 Door_Sensor_s = 0; Active_s = 0; Deactive_Button_s = 0;
				
		end
endmodule 

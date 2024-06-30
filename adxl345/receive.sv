module receive(
	input logic data_i,
	input logic clk_i,
	input logic latch_i,
	output logic [15:0] dataX_o,
	output logic [15:0] dataY_o,
	output logic [15:0] dataZ_o
);
//internal wire
logic [47:0] q;
logic latch_data;
assign latch_data = ~latch_i; 
//===============
mydff dff0(.clk_i(clk_i), .d_i(data_i), .d_o(q[0]));
mydff dff1(.clk_i(clk_i), .d_i(q[0]), .d_o(q[1]));
mydff dff2(.clk_i(clk_i), .d_i(q[1]), .d_o(q[2]));
mydff dff3(.clk_i(clk_i), .d_i(q[2]), .d_o(q[3]));
mydff dff4(.clk_i(clk_i), .d_i(q[3]), .d_o(q[4]));
mydff dff5(.clk_i(clk_i), .d_i(q[4]), .d_o(q[5]));
mydff dff6(.clk_i(clk_i), .d_i(q[5]), .d_o(q[6]));
mydff dff7(.clk_i(clk_i), .d_i(q[6]), .d_o(q[7]));
mydff dff8(.clk_i(clk_i), .d_i(q[7]), .d_o(q[8]));
mydff dff9(.clk_i(clk_i), .d_i(q[8]), .d_o(q[9]));
mydff dff10(.clk_i(clk_i), .d_i(q[9]), .d_o(q[10]));
mydff dff11(.clk_i(clk_i), .d_i(q[10]), .d_o(q[11]));
mydff dff12(.clk_i(clk_i), .d_i(q[11]), .d_o(q[12]));
mydff dff13(.clk_i(clk_i), .d_i(q[12]), .d_o(q[13]));
mydff dff14(.clk_i(clk_i), .d_i(q[13]), .d_o(q[14]));
mydff dff15(.clk_i(clk_i), .d_i(q[14]), .d_o(q[15]));
mydff dff16(.clk_i(clk_i), .d_i(q[15]), .d_o(q[16]));
mydff dff17(.clk_i(clk_i), .d_i(q[16]), .d_o(q[17]));
mydff dff18(.clk_i(clk_i), .d_i(q[17]), .d_o(q[18]));
mydff dff19(.clk_i(clk_i), .d_i(q[18]), .d_o(q[19]));
mydff dff20(.clk_i(clk_i), .d_i(q[19]), .d_o(q[20]));
mydff dff21(.clk_i(clk_i), .d_i(q[20]), .d_o(q[21]));
mydff dff22(.clk_i(clk_i), .d_i(q[21]), .d_o(q[22]));
mydff dff23(.clk_i(clk_i), .d_i(q[22]), .d_o(q[23]));
mydff dff24(.clk_i(clk_i), .d_i(q[23]), .d_o(q[24]));
mydff dff25(.clk_i(clk_i), .d_i(q[24]), .d_o(q[25]));
mydff dff26(.clk_i(clk_i), .d_i(q[25]), .d_o(q[26]));
mydff dff27(.clk_i(clk_i), .d_i(q[26]), .d_o(q[27]));
mydff dff28(.clk_i(clk_i), .d_i(q[27]), .d_o(q[28]));
mydff dff29(.clk_i(clk_i), .d_i(q[28]), .d_o(q[29]));
mydff dff30(.clk_i(clk_i), .d_i(q[29]), .d_o(q[30]));
mydff dff31(.clk_i(clk_i), .d_i(q[30]), .d_o(q[31]));
mydff dff32(.clk_i(clk_i), .d_i(q[31]), .d_o(q[32]));
mydff dff33(.clk_i(clk_i), .d_i(q[32]), .d_o(q[33]));
mydff dff34(.clk_i(clk_i), .d_i(q[33]), .d_o(q[34]));
mydff dff35(.clk_i(clk_i), .d_i(q[34]), .d_o(q[35]));
mydff dff36(.clk_i(clk_i), .d_i(q[35]), .d_o(q[36]));
mydff dff37(.clk_i(clk_i), .d_i(q[36]), .d_o(q[37]));
mydff dff38(.clk_i(clk_i), .d_i(q[37]), .d_o(q[38]));
mydff dff39(.clk_i(clk_i), .d_i(q[38]), .d_o(q[39]));
mydff dff40(.clk_i(clk_i), .d_i(q[39]), .d_o(q[40]));
mydff dff41(.clk_i(clk_i), .d_i(q[40]), .d_o(q[41]));
mydff dff42(.clk_i(clk_i), .d_i(q[41]), .d_o(q[42]));
mydff dff43(.clk_i(clk_i), .d_i(q[42]), .d_o(q[43]));
mydff dff44(.clk_i(clk_i), .d_i(q[43]), .d_o(q[44]));
mydff dff45(.clk_i(clk_i), .d_i(q[44]), .d_o(q[45]));
mydff dff46(.clk_i(clk_i), .d_i(q[45]), .d_o(q[46]));
mydff dff47(.clk_i(clk_i), .d_i(q[46]), .d_o(q[47]));

//dataXlow
mydff dffx7(.clk_i(latch_data), .d_i(q[47]), .d_o(dataX_o[7]));
mydff dffx6(.clk_i(latch_data), .d_i(q[46]), .d_o(dataX_o[6]));
mydff dffx5(.clk_i(latch_data), .d_i(q[45]), .d_o(dataX_o[5]));
mydff dffx4(.clk_i(latch_data), .d_i(q[44]), .d_o(dataX_o[4]));
mydff dffx3(.clk_i(latch_data), .d_i(q[43]), .d_o(dataX_o[3]));
mydff dffx2(.clk_i(latch_data), .d_i(q[42]), .d_o(dataX_o[2]));
mydff dffx1(.clk_i(latch_data), .d_i(q[41]), .d_o(dataX_o[1]));
mydff dffx0(.clk_i(latch_data), .d_i(q[40]), .d_o(dataX_o[0]));
//dataXhight
mydff dffx15(.clk_i(latch_data), .d_i(q[39]), .d_o(dataX_o[15]));
mydff dffx14(.clk_i(latch_data), .d_i(q[38]), .d_o(dataX_o[14]));
mydff dffx13(.clk_i(latch_data), .d_i(q[37]), .d_o(dataX_o[13]));
mydff dffx12(.clk_i(latch_data), .d_i(q[36]), .d_o(dataX_o[12]));
mydff dffx11(.clk_i(latch_data), .d_i(q[35]), .d_o(dataX_o[11]));
mydff dffx10(.clk_i(latch_data), .d_i(q[34]), .d_o(dataX_o[10]));
mydff dffx9(.clk_i(latch_data), .d_i(q[33]), .d_o(dataX_o[9]));
mydff dffx8(.clk_i(latch_data), .d_i(q[32]), .d_o(dataX_o[8]));
//dataYlow
mydff dffy7(.clk_i(latch_data), .d_i(q[31]), .d_o(dataY_o[7]));
mydff dffy6(.clk_i(latch_data), .d_i(q[30]), .d_o(dataY_o[6]));
mydff dffy5(.clk_i(latch_data), .d_i(q[29]), .d_o(dataY_o[5]));
mydff dffy4(.clk_i(latch_data), .d_i(q[28]), .d_o(dataY_o[4]));
mydff dffy3(.clk_i(latch_data), .d_i(q[27]), .d_o(dataY_o[3]));
mydff dffy2(.clk_i(latch_data), .d_i(q[26]), .d_o(dataY_o[2]));
mydff dffy1(.clk_i(latch_data), .d_i(q[25]), .d_o(dataY_o[1]));
mydff dffy0(.clk_i(latch_data), .d_i(q[24]), .d_o(dataY_o[0]));
//dataYhight
mydff dffy15(.clk_i(latch_data), .d_i(q[23]), .d_o(dataY_o[15]));
mydff dffy14(.clk_i(latch_data), .d_i(q[22]), .d_o(dataY_o[14]));
mydff dffy13(.clk_i(latch_data), .d_i(q[21]), .d_o(dataY_o[13]));
mydff dffy12(.clk_i(latch_data), .d_i(q[20]), .d_o(dataY_o[12]));
mydff dffy11(.clk_i(latch_data), .d_i(q[19]), .d_o(dataY_o[11]));
mydff dffy10(.clk_i(latch_data), .d_i(q[18]), .d_o(dataY_o[10]));
mydff dffy9(.clk_i(latch_data), .d_i(q[17]), .d_o(dataY_o[9]));
mydff dffy8(.clk_i(latch_data), .d_i(q[16]), .d_o(dataY_o[8]));
//dataZlow
mydff dffz7(.clk_i(latch_data), .d_i(q[15]), .d_o(dataZ_o[7]));
mydff dffz6(.clk_i(latch_data), .d_i(q[14]), .d_o(dataZ_o[6]));
mydff dffz5(.clk_i(latch_data), .d_i(q[13]), .d_o(dataZ_o[5]));
mydff dffz4(.clk_i(latch_data), .d_i(q[12]), .d_o(dataZ_o[4]));
mydff dffz3(.clk_i(latch_data), .d_i(q[11]), .d_o(dataZ_o[3]));
mydff dffz2(.clk_i(latch_data), .d_i(q[10]), .d_o(dataZ_o[2]));
mydff dffz1(.clk_i(latch_data), .d_i(q[9]), .d_o(dataZ_o[1]));
mydff dffz0(.clk_i(latch_data), .d_i(q[8]), .d_o(dataZ_o[0]));
//dataZHight
mydff dffz15(.clk_i(latch_data), .d_i(q[7]), .d_o(dataZ_o[15]));
mydff dffz14(.clk_i(latch_data), .d_i(q[6]), .d_o(dataZ_o[14]));
mydff dffz13(.clk_i(latch_data), .d_i(q[5]), .d_o(dataZ_o[13]));
mydff dffz12(.clk_i(latch_data), .d_i(q[4]), .d_o(dataZ_o[12]));
mydff dffz11(.clk_i(latch_data), .d_i(q[3]), .d_o(dataZ_o[11]));
mydff dffz10(.clk_i(latch_data), .d_i(q[2]), .d_o(dataZ_o[10]));
mydff dffz9(.clk_i(latch_data), .d_i(q[1]), .d_o(dataZ_o[9]));
mydff dffz8(.clk_i(latch_data), .d_i(q[0]), .d_o(dataZ_o[8]));
endmodule 


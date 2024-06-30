module transmit(
	input logic [15:0] trans_i,
	input logic [4:0] transBit_i,
	input logic enable_trans,
	output logic data_o
);
logic dataOut;
assign dataOut = trans_i[transBit_i];
always @(*) begin
	if (enable_trans == 1'b1) begin
		data_o = dataOut;
	end else begin
		data_o = 1'bz;
	end
end

endmodule 
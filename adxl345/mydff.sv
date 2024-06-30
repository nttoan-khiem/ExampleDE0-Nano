module mydff(
	input logic clk_i,
	input logic d_i,
	output logic d_o
);
always @(posedge clk_i) begin
	d_o <= d_i;
end
endmodule

module mytff(
	input logic clk,
	input logic t,
	output logic q
);
initial begin
q = 0;
end
always @(posedge clk) begin
	if (t == 1'b1) begin
		q <= ~q;
	end else begin
		q <= q;
	end
end 
endmodule 
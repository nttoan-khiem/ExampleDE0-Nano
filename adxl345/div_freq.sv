module div_freq(
	input logic clk_i,
	output logic clk_o
);
mytff tff0(.clk(clk_i), .t(1'b1), .q(clk0));
mytff tff1(.clk(clk0), .t(1'b1), .q(clk1));
mytff tff2(.clk(clk1), .t(1'b1), .q(clk2));
mytff tff3(.clk(clk2), .t(1'b1), .q(clk3));
mytff tff4(.clk(clk3), .t(1'b1), .q(clk4));
mytff tff5(.clk(clk4), .t(1'b1), .q(clk5));
mytff tff6(.clk(clk5), .t(1'b1), .q(clk6));
mytff tff7(.clk(clk6), .t(1'b1), .q(clk7));
mytff tff8(.clk(clk7), .t(1'b1), .q(clk8));
mytff tff9(.clk(clk8), .t(1'b1), .q(clk9));
mytff tff10(.clk(clk9), .t(1'b1), .q(clk10));
mytff tff11(.clk(clk10), .t(1'b1), .q(clk_o));

endmodule

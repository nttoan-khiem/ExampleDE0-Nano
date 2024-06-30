module RWControl(
	input logic clk_i, 
	input logic complete_i,
	output logic mb_o,
    output logic [7:0] data_o,
    output logic [5:0] addr_o,
	output logic re_o,
	output logic [2:0] remainBit
);
logic [2:0] state;
initial begin
state = 0;
end
//internal reg
always @(posedge clk_i) begin
	case (state)
		3'b000: begin
			if (complete_i == 1'b1) begin
				state = 3'b001;
			end
			data_o = 8'h48;
            addr_o = 6'h31;
            mb_o = 1'b0;
			remainBit = 3'd1;
			re_o = 1'b0;
		end
		3'b001: begin
			if (complete_i == 1'b1) begin
				state = 3'b010;
			end
			data_o = 8'h08;
            addr_o = 6'h2d;
            mb_o = 1'b0;
			remainBit = 3'd1;
			re_o = 1'b0;
		end
		3'b010: begin
			data_o = 8'h00;
            addr_o = 6'h32;
            mb_o = 1'b1;
			remainBit = 3'd6;
			re_o = 1'b1;
		end
	endcase
end
endmodule 
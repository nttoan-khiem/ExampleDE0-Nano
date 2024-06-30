module control(
	input logic re_i,
	input logic [2:0] remainByte,
	input logic [15:0] trans_i,
	input logic clk_i,
	output logic cs_o,
	output logic busy_o,
	output logic complete_o,
	output logic trans_e_o,
	output logic clk_o,
	output logic [4:0] trans_bit,
	output logic [15:0] trans_o,
	output logic [15:0] state_db,
	output logic [2:0] remain_db
);
//internal wire
logic enable_clock;
//internal reg
logic [2:0] remain;
logic [5:0] state;
logic enable_read;
//======================
initial begin
	state <= 5'd0;
	remain <= 3'd0;
end
always @(negedge clk_i) begin 
	case (state)
		6'd0: begin
			cs_o = 1'b1;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b0;
			trans_bit = 5'd0;
			state <= 6'd1;
		end
		6'd1: begin
			cs_o = 1'b1;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b0;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd2;
		end
		6'd2: begin
			cs_o = 1'b1;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd3;
			remain <= remainByte;
			trans_o <= trans_i;
			enable_read <= re_i;
		end
		6'd3: begin
			cs_o = 1'b1;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd4;
		end
		6'd4: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd5;
		end
		6'd5: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd6;
		end
		6'd6: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd7;
		end
		6'd7: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd8;
		end
		6'd8: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd9;
		end
		6'd9: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd0;
			complete_o = 1'b0;
			state <= 6'd10;
		end
		6'd10: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd1;
			complete_o = 1'b0;
			state <= 6'd11;
		end
		6'd11: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd1;
			complete_o = 1'b0;
			state <= 6'd12;
		end
		6'd12: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd2;
			complete_o = 1'b0;
			state <= 6'd13;
		end
		6'd13: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd2;
			complete_o = 1'b0;
			state <= 6'd14;
		end
		6'd14: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd3;
			complete_o = 1'b0;
			state <= 6'd15;
		end
		6'd15: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd3;
			complete_o = 1'b0;
			state <= 6'd16;
		end
		6'd16: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd4;
			complete_o = 1'b0;
			state <= 6'd17;
		end
		6'd17: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd4;
			complete_o = 1'b0;
			state <= 6'd18;
		end
		6'd18: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd5;
			complete_o = 1'b0;
			state <= 6'd19;
		end
		6'd19: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd5;
			complete_o = 1'b0;
			state <= 6'd20;
		end
		6'd20: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd6;
			complete_o = 1'b0;
			state <= 6'd21;
		end
		6'd21: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd6;
			complete_o = 1'b0;
			state <= 6'd22;
		end
		6'd22: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd7;
			complete_o = 1'b0;
			state <= 6'd23;
		end
		6'd23: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b1;
			busy_o = 1'b1;
			trans_bit = 5'd7;
			complete_o = 1'b0;
			state <= 6'd24;
		end
		6'd24: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd8;
			complete_o = 1'b0;
			state <= 6'd25;
		end
		6'd25: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd8;
			complete_o = 1'b0;
			state <= 6'd26;
		end
		6'd26: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd9;
			complete_o = 1'b0;
			state <= 6'd27;
		end
		6'd27: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd9;
			complete_o = 1'b0;
			state <= 6'd28;
		end
		6'd28: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd10;
			complete_o = 1'b0;
			state <= 6'd29;
		end
		6'd29: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd10;
			complete_o = 1'b0;
			state <= 6'd30;
		end
		6'd30: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd11;
			complete_o = 1'b0;
			state <= 6'd31;
		end
		6'd31: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd11;
			complete_o = 1'b0;
			state <= 6'd32;
		end
		6'd32: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd12;
			complete_o = 1'b0;
			state <= 6'd33;
		end
		6'd33: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd12;
			complete_o = 1'b0;
			state <= 6'd34;
		end
		6'd34: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd13;
			complete_o = 1'b0;
			state <= 6'd35;
		end
		6'd35: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd13;
			complete_o = 1'b0;
			state <= 6'd36;
		end
		6'd36: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd14;
			complete_o = 1'b0;
			state <= 6'd37;
		end
		6'd37: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd14;
			complete_o = 1'b0;
			state <= 6'd38;
		end
		6'd38: begin
			cs_o = 1'b0;
			clk_o = 1'b0;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b0;
			state <= 6'd39;
		end
		6'd39: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = ~enable_read;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b0;
			state <= 6'd40;
		end
		6'd40: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b0;
			state <= 6'd41;
			remain <= remain - 1;
		end
		6'd41: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b0;
			state <= 6'd42;
			if (remain == 3'b0) begin 
				state <= 6'd42;
			end else begin
				state <= 6'd24;
			end
		end
		6'd42: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b1;
			state <= 6'd43;
		end
		6'd43: begin
			cs_o = 1'b0;
			clk_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd15;
			complete_o = 1'b0;
			state <= 6'd0;
		end
		default: begin
			cs_o = 1'b1;
			trans_e_o = 1'b0;
			busy_o = 1'b1;
			trans_bit = 5'd0; 
		end
	endcase
end
assign state_db = state;
assign remain_db = remain;
endmodule

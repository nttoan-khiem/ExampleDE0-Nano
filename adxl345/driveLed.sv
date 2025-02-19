module driveLed(
    input logic [7:0] data_i,
    output logic [7:0] led_o
);
logic [7:0] bu2;
assign bu2 = (~data_i) + 1;
logic [7:0] dataAll;
assign dataAll = ({7{data_i[7]}}&bu2) | ({7{~data_i[7]}}&data_i);
always @(*) begin
    if(data_i[7] == 1'b0) begin
        if(dataAll > 8'h18) begin
            led_o = 8'h01;
        end else if (dataAll > 8'h0c) begin
            led_o = 8'h02;
        end else if (dataAll > 8'h07) begin
            led_o = 8'h04;
        end else if (dataAll > 8'h02) begin
            led_o = 8'h08;
        end else begin
            led_o = 8'h18;
        end
    end else begin
        if(dataAll > 8'h18) begin
            led_o = 8'h80;
        end else if (dataAll > 8'h0c) begin
            led_o = 8'h40;
        end else if (dataAll > 8'h07) begin
            led_o = 8'h20;
        end else if (dataAll > 8'h02) begin
            led_o = 8'h10;
        end else begin
            led_o = 8'h08;
        end
    end
end
endmodule
module adxl(
	input logic clk_i,
	output logic cs_o,
	output clk_o,
	inout miso_io,
	output logic [7:0] led
);
//internal wire
logic completeSignal;
logic [5:0] addr;
logic [7:0] data;
logic mb;
logic [15:0] dataX;
logic [15:0] dataY;
logic [15:0] dataZ;
logic readEnable;
logic [2:0] remainBit;
logic clk_div;
logic [7:0] led_i;
div_freq divFrequenceBlock(.clk_i(clk_i), .clk_o(clk_div));

RWControl stateControlBlock(	.clk_i(clk_div), 
                                .complete_i(completeSignal),
                                .mb_o(mb),
                                .data_o(data),
                                .addr_o(addr),
                                .re_o(readEnable),
                                .remainBit(remainBit));
										
spiCom spiCommunicationBlock(	.re_i(readEnable),
                                .remain_byte_i(remainBit),
                                .addr_i(addr),
                                .data_i(data),
                                .mb_i(mb),
                                .clk_i(clk_div),
                                .cs_o(cs_o),
                                .clk_spi(clk_o),
                                .busy_o(),
                                .complete_o(completeSignal),
                                .miso_io(miso_io),
                                .dataX(dataX),
                                .dataY(dataY),
                                .dataZ(dataZ));
assign led_i = dataX[10:3];
driveLed driverLed(.data_i(led_i),
						 .led_o(led));
endmodule 
										
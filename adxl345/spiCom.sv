module spiCom(
	input logic re_i,
	input logic [2:0] remain_byte_i,
	input logic [5:0] addr_i,
	input logic [7:0] data_i,
	input logic mb_i,
	input logic clk_i,
	output logic cs_o,
	output logic clk_spi,
	output logic busy_o,
	output logic complete_o,
	inout logic miso_io,
	output logic [15:0] dataX,
	output logic [15:0] dataY,
	output logic [15:0] dataZ
);
//internal wire
logic cs_control;
logic enable_transmit;
logic clk_spi_control;
logic [4:0] bit_control;
logic [15:0] trans_bit_spi;
logic [15:0] trans_i;
assign trans_i[15:0] = {data_i[0], data_i[1], data_i[2], data_i[3], data_i[4], data_i[5], data_i[6], data_i[7],
								addr_i[0], addr_i[1], addr_i[2], addr_i[3], addr_i[4], addr_i[5],
								mb_i, re_i};
//=========
control controlBlock(.re_i(re_i),
							.remainByte(remain_byte_i),
							.trans_i(trans_i),
							.clk_i(clk_i),
							.cs_o(cs_o),
							.complete_o(complete_o),
							.busy_o(busy_o),
							.trans_e_o(enable_transmit),
							.clk_o(clk_spi_control),
							.trans_bit(bit_control),
							.trans_o(trans_bit_spi));
							
transmit transBlock(	.trans_i(trans_bit_spi),
							.transBit_i(bit_control),
							.enable_trans(enable_transmit),
							.data_o(miso_io));

receive receiveBlock(.data_i(miso_io),
							.clk_i(clk_spi_control),
							.latch_i(complete_o),
							.dataX_o(dataX),
							.dataY_o(dataY),
							.dataZ_o(dataZ));

assign clk_spi = clk_spi_control;

endmodule

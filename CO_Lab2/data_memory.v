`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:33 10/27/2019 
// Design Name: 
// Module Name:    data_memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module data_memory(clk, address, write_data, read, write, out);
	input clk, read, write;
	input [31:0] address, write_data;
	output [31:0] out;
	
	reg [7:0] data [0:127];
	
	initial begin
		$readmemb("C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/data.txt", data);
	end
	
	assign out[7:0] = (read == 1)?data[address + 3]: 8'bz;
	assign out[15:8] = (read == 1)?data[address + 2]: 8'bz;
	assign out[23:16] = (read == 1)?data[address + 1]: 8'bz;
	assign out[31:24] = (read == 1)?data[address]: 8'bz;
	
	always @(negedge clk) begin
		if(write == 1) begin
			data[address] <= write_data[31:24];
			data[address + 1] <= write_data[23:16];
			data[address + 2] <= write_data[15:8];
			data[address + 3] <= write_data[7:0];
		end
	end

endmodule
 
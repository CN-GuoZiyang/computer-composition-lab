`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:02 10/19/2019 
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
module data_memory(clk, address, read, write, write_data, data, out);
	
	input clk, read, write;
	input [31:0] address, write_data;
	output reg [31:0] out;
	
	reg [7:0] data [1023:0];
		
	initial begin
		$readmemb("C:\Users\guo\Desktop\computer-composition-lab\CO_Lab2\data.txt", data, 0);
		out = 32'bz;
	end
	
	always @(*) begin
		if(read == 1) begin
			out[31:24] = data[address];
			out[23:16] = data[address + 1];
			out[15:8] = data[address + 2];
			out[7:0] = data[address + 3];
		end
	end
	
	always @(posedge clk) begin
		if(write == 1) begin
			data[address] <= write_data[31:24];
			data[address + 1] <= write_data[23:16];
			data[address + 2] <= write_data[15:8];
			data[address + 3] <= write_data[7:0];
		end
	end

endmodule

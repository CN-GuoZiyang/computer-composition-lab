`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:21 10/27/2019 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory(read, address, out);
	input read;
	input [31:0] address;
	output reg [31:0] out;
	
	reg [31:0] data [255:0];
	
	initial begin
		$readmemb("C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/instructions.txt", data);
		out = 32'd0;
	end
	
	always @(read or address) begin
		if(read == 1'b1) begin
			out = data[address];
		end
	end
	
endmodule

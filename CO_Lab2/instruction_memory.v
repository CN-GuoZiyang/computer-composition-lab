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
	
	reg [7:0] data [127:0];
	
	initial begin
		$readmemb("C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/instructions.txt", data);
		out = 32'd0;
	end
	
	always @(read or address) begin
		if(read == 1'b1) begin
			out[31:24] = data[address];
         out[23:16] = data[address+1];
         out[15:8] = data[address+2];
         out[7:0] = data[address+3];
		end
	end
	
endmodule

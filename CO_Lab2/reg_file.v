`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:44 10/19/2019 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(clk, read, address, write, write_data, out);

	input clk, read, write;
	input [3:0] address;
	input [31:0] write_data;
	output reg [31:0] out;
	reg [31:0] register [0:31];
	
	initial begin
		$readmemb("C:\Users\guo\Desktop\computer-composition-lab\CO_Lab2\register.txt", register, 0);
		out = 32'bz;
	end
	
	always @(*) begin
		if(read == 1) begin
			out = register[address];
		end
	end
	
	always @(posedge clk) begin
		if(write == 1) begin
			register[address] <= write_data;
		end
	end

endmodule

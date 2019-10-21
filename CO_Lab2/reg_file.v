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
module reg_file(clk, read_a, read_b, address_a, address_b, write, write_address, write_data, out_a, out_b);

	input clk, read_a, read_b, write;
	input [4:0] address_a, address_b, write_address;
	input [31:0] write_data;
	output reg [31:0] out_a, out_b;
	reg [31:0] register [0:31];
	
	initial begin
		$readmemb("C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/register.txt", register, 0);
		out_a = 32'bz;
		out_b = 32'bz;
	end
	
	always @(*) begin
		if(read_a == 1) begin
			out_a = register[address_a];
		end
	end
	
	always @(*) begin
		if(read_b == 1) begin
			out_b = register[address_b];
		end
	end
	
	always @(posedge clk) begin
		if(write == 1) begin
			register[write_address] <= write_data;
		end
	end

endmodule

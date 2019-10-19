`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:52 10/19/2019 
// Design Name: 
// Module Name:    pc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//		store and output the current address
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pc(clk, new_address, current_address);
	input clk;
	input [31:0] new_address;
	output reg [31:0] current_address;
	
	initial begin
		current_address = 32'd0;
	end
	
	always @(posedge clk) begin
		current_address = new_address;
	end
	
endmodule

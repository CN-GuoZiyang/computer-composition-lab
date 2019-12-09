`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:28 10/27/2019 
// Design Name: 
// Module Name:    data_late 
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
module data_late(clk, in, out);
	input clk;
	input [31:0] in;
	output reg [31:0] out;
	
	always @(negedge clk) begin
		out = in;
	end

endmodule

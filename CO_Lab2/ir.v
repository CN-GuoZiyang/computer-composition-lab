`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:39 10/27/2019 
// Design Name: 
// Module Name:    ir 
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
module ir(clk, write, in, out);
	input clk, write;
	input [31:0] in;
	(* KEEP="TRUE" *)output reg [31:0] out;
	
	always @(negedge clk) begin
		if(write) begin
			out = in;
		end
	end

endmodule

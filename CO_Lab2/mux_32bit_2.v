`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:31 10/21/2019 
// Design Name: 
// Module Name:    mux_32bit_2 
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
module mux_32bit_2(in0, in1, select, out);

	input [31:0] in0, in1;
	input select;
	output reg [31:0] out;
	
	always @(*) begin
		case(select)
			1'b0: out = in0;
			1'b1: out = in1;
		endcase
	end
	
endmodule

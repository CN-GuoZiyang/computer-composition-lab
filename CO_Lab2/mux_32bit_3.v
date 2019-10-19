`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:03 10/19/2019 
// Design Name: 
// Module Name:    mux_32bit_3 
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
module mux_32bit_3(in0, in1, in2, select, out);

	input [31:0] in0, in1, in2;
	input [1:0] select;
	output reg [31:0] out;
	
	always @(*) begin
		case(select)
			2'b00: out = in0;
			2'b01: out = in1;
			2'b10: out = in2;
			default: out = 32'bz;
		endcase
	end
	
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:17 10/27/2019 
// Design Name: 
// Module Name:    extender 
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
module extender(immediate16, immediate26, select, out);
	input [15:0] immediate16;
	input [25:0] immediate26;
	input select;
	output reg [31:0] out;
	
	always @(immediate16 or immediate26 or select) begin
		case(select)
			1'b0: begin
				out[15:0] = immediate16;
				out[31:16] = 16'd0;
			end
			1'b1: begin
				out[25:0] = immediate26;
				out[31:26] = 6'd0;
			end
		endcase
	end

endmodule

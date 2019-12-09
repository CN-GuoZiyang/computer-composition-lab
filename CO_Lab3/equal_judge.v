`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:07 10/28/2019 
// Design Name: 
// Module Name:    zero_judge 
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
module equal_judge(in1, in2, out);
	input [31:0] in1, in2;
	output reg out;
	
	always @(in1 or in2) begin
		if(in1 == in2) begin
			out = 1'b1;
		end
		else out = 1'b0;
	end

endmodule

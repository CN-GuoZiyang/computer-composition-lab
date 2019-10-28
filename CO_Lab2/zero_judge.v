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
module zero_judge(in, out);
	input [31:0] in;
	output reg out;
	
	always @(in) begin
		if(in == 32'd0) begin
			out = 1'b1;
		end
		else out = 1'b0;
	end

endmodule

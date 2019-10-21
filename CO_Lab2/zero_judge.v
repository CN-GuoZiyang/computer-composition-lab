`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:42 10/21/2019 
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
	
	always @(*) begin
		if(in == 32'd0) out = 1'b1;
	end

endmodule

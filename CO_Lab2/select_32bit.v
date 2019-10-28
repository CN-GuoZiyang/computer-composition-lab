`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:02 10/27/2019 
// Design Name: 
// Module Name:    select_32bit 
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
module select_32bit(select, one, two, out);
	input [31:0] one, two;
	input select;
	output [31:0] out;
	
	assign out = (select == 1'b0 ? one : two);

endmodule

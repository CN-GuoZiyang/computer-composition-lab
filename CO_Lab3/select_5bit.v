`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:13 11/13/2019 
// Design Name: 
// Module Name:    select_5bit 
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
module select_5bit(select, one, two, out);
   input [4:0] one, two;
	input select;
	output [4:0] out;
	
	assign out = (select == 1'b0 ? one : two);

endmodule

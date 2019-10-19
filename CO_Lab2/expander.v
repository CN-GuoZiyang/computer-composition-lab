`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:59 10/19/2019 
// Design Name: 
// Module Name:    expander 
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
module expander(in, out);
	input [15:0] in;
	output reg [31:0] out;
	
	assign out = {{16{in[15]}}, in};

endmodule

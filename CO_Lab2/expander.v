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
module expander(in16, in26, select, out);
	input [15:0] in16;
	input [25:0] in26;
	input select;
	output reg [31:0] out;
	
	always @(*) begin
		if(select == 0) out = {{16{in16[15]}}, in16};
		else out = {{6{in26[25]}}, in26};
	end

endmodule

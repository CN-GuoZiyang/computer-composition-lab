`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:23 10/28/2019 
// Design Name: 
// Module Name:    npc_adder 
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
module npc_adder(address, npc);
	input [31:0] address;
	output reg [31:0] npc;
	
	always @(address) begin
		npc = address + 4;
	end

endmodule

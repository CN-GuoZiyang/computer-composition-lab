`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:57 10/27/2019 
// Design Name: 
// Module Name:    pc_select 
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
module pc_select(select, npc, reg_address, new_address);
	input select;
	input [31:0] npc, reg_address;
	output reg [31:0] new_address;
	
	always @(select, npc, reg_address, new_address) begin
		case(select)
			1'b0: new_address = npc;
			1'b1: new_address = reg_address;
		endcase
	end

endmodule

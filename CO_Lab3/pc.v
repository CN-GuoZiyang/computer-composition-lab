`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:09 10/27/2019 
// Design Name: 
// Module Name:    pc 
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
module pc(clk, reset, new_address, current_address);
	input clk, reset;
	input [31:0] new_address;
	output reg [31:0] current_address;
	
	initial begin
		current_address <= 32'd0;
	end
	
	always @(posedge clk or negedge reset) begin
		if(reset == 0) current_address <= 0;
		else current_address <= new_address;
	end

endmodule

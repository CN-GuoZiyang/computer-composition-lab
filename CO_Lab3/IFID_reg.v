`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:21 12/09/2019 
// Design Name: 
// Module Name:    IFID_reg 
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
module IFID_reg(
    input clk,
	 input [31:0] ir_if,
	 input [31:0] pc_if,
	 output reg [31:0] ir_id,
	 output reg [31:0] pc_id
	 );
	 
	reg [31:0] ir;
	reg [31:0] pc;
	
	initial begin
		ir = 0;
		pc = 0;
	end
	
	always @(posedge clk) begin
		ir <= ir_if;
		pc <= pc_if;
	end
	
	always @(negedge clk) begin
		ir_id <= ir;
		pc_id <= pc;
	end

endmodule

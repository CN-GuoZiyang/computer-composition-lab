`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:55 12/09/2019 
// Design Name: 
// Module Name:    EXEMEM_reg 
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
module EXEMEM_reg(
    input clk,
	 input [31:0] ir_exe,
	 input [31:0] alu_res_exe,
	 input [31:0] reg2_exe,
	 input equal_exe,
	 output reg [31:0] ir_mem,
	 output reg [31:0] alu_res_mem,
	 output reg [31:0] reg2_mem,
	 output reg equal_mem,
	 output reg npc_select_mem,
	 output reg memw_mem,
	 output reg memr_mem
	 );
	 
	reg [31:0] ir, alu_res, reg2;
	reg equal;
	
	initial begin
		ir = 0;
		alu_res = 0;
		reg2 = 0;
		equal = 0;
	end
	
	always @(posedge clk) begin
		ir <= ir_exe;
		alu_res <= alu_res_exe;
		reg2 <= reg2_exe;
		equal <= equal_exe;
	end
	
	wire npc_select, memw, memr;
	assign npc_select = (ir_exe[31:26] == 6'b000000 || (ir_exe[31:26] == 6'b000010 && equal_exe == 1))?1:0;
	assign memr = (ir_exe[31:26] == 6'b001110)?1:0;
	assign memw = (ir_exe[31:26] == 6'b001100)?1:0;
	
	
	always @(negedge clk) begin
		ir_mem <= ir;
		alu_res_mem <= alu_res;
		reg2_mem <= reg2;
		equal_mem <= equal;
		npc_select_mem <= npc_select;
		memw_mem <= memw;
		memr_mem <= memr;
	end

endmodule

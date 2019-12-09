`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:39 12/09/2019 
// Design Name: 
// Module Name:    IDEXE_
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
module IDEXE_reg(
    input clk,
	 input [31:0] ir_id,
	 input [31:0] pc_id,
	 input [31:0] extend_out,
	 input [4:0] reg1_id,
	 input [4:0] reg2_id,
	 output reg [31:0] ir_exe,
	 output reg [31:0] pc_exe,
	 output reg [31:0] extend_exe,
	 output reg [31:0] reg1_exe,
	 output reg [31:0] reg2_exe,
	 output reg alu_in2_select
	 );
	 
	 reg [31:0] ir, pc, extend, reg1, reg2;
	 
	 initial begin
		ir = 0;
		pc = 0;
		extend = 0;
		reg1 = 0;
		reg2 = 0;
	 end
	 
	 always @(posedge clk) begin
		ir <= ir_id;
		pc <= pc_id;
		extend <= extend_out;
		reg1 <= reg1_id;
		reg2 <= reg2_id;
	 end
	 
	 wire sl;
	 
	 assign sl = (ir_id[31:26] == 6'b000010 || ir_id[31:26] == 6'b000000)?1:0;
	 
	 always @(negedge clk) begin
		ir_exe <= ir;
		pc_exe <= pc;
		extend_exe <= extend;
		reg1_exe <= reg1;
		reg2_exe <= reg2;
		alu_in2_select <= sl;
	 end


endmodule

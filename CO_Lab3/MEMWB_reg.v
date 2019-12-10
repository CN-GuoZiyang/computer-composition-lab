`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:58 12/10/2019 
// Design Name: 
// Module Name:    MEMWB_reg 
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
module MEMWB_reg(
    input clk,
	 input [31:0] ir_mem,
	 input [31:0] alu_res_mem,
	 input [31:0] mem_read_mem,
	 output [31:0] reg_write_data_wb,
	 output [31:0] reg_write_address_wb,
	 output reg_write_wb
	 );
	
	reg [31:0] ir;
	reg [31:0] alu_res;
	reg [31:0] mem_read;
	
	reg [31:0] reg_write_data;
	reg [31:0] reg_write_address;
	reg reg_write;
	
	initial begin
		ir = 0;
		alu_res = 0;
		mem_read = 0;
		reg_write_data = 0;
		reg_write_address = 0;
		reg_write = 0;
	end
	
	assign reg_write = (ir[31:26] == 6'b001110 || ir[31:26] == 6'b000100)?1:0;
	
	always @(posedge clk) begin
		ir <= ir_mem;
		alu_res <= alu_res_mem;
		mem_read <= mem_read_mem;
	end
	
	assign reg_write_data = (ir[31:26] == 6'b001110)?mem_read:alu_res;
	assign reg_write_address = (ir[31:26] == 6'b001110)?ir[20:16]:ir[15:11];
	
	always @(negedge clk) begin
		reg_write_wb <= reg_write;
		reg_write_data_wb <= reg_write_data;
		reg_write_address_wb <= reg_write_address;
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:49 10/19/2019 
// Design Name: 
// Module Name:    cpu 
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
module cpu(clk, op_code_out);
	input clk;
	output [5:0] op_code_out;
	
	wire [31:0] next_address, npc, current_address, current_instruction, reg_outa, reg_outb, reg_write_data, imm, alu_a, alu_b, alu_out, data_memory_out;
	wire [5:0] op_code;
	wire [4:0] rd, rs1, rs2;
	wire [10:0] func;
	wire [15:0] ins;
	wire [25:0] j_name;
	wire cond, instruction_memory_read, reg_file_reada, reg_file_readb, expander_select, mux_a, mux_b, mux_c, data_memory_read, data_memory_write, mux_d, reg_file_write;
	
	assign op_code_out = op_code;
	
	control_unit control_unit(clk, cond, op_code, instruction_memory_read, reg_file_reada, reg_file_readb, expander_select, mux_a, mux_b, mux_c, data_memory_read, data_memory_write, mux_d, reg_file_write);
	
	pc pc(clk, next_address, current_address);
	add_32 pc_adder(current_address, 32'd4, npc);
	
	instruction_memory instruction_memory(instruction_memory_read, current_address, current_instruction);
	
	decoder decoder(current_instruction, op_code, rd, rs1, rs2, ins, func, j_name);
	
	reg_file reg_file(clk, reg_file_reada, reg_file_readb, rs1, rs2, reg_file_write, rd, reg_write_data, reg_outa, reg_outb);
	
	expander expander(ins, j_name, expander_select, imm);
	
	mux_32bit_2 muxa(npc, reg_outa, mux_a, alu_a);
	
	mux_32bit_2 muxb(reg_outb, imm, mux_b, alu_b);
	
	zero_judge zero_judge(reg_outa, cond);
	
	alu alu(alu_a, alu_b, func, alu_out);
	
	mux_32bit_2 muxc(npc, alu_out, mux_c, next_address);
	
	data_memory data_memory(clk, alu_out, data_memory_read, data_memory_write, alu_b, data_memory_out);
	
	mux_32bit_2 muxd(data_memory_out, alu_out, mux_d, reg_write_data);

endmodule

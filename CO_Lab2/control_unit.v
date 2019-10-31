`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:29 10/27/2019 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
	input clk,	//时钟
	input [5:0] op_code,	//指令操作码
	input equal,	//BEQ相等判断
	output reg alu_select_a,	//alu输入选择
	output reg alu_select_b,	//alu输入选择
	output reg reg_write_select,	//reg写回数据选择
	output reg reg_write,	//reg写入信号
	output reg instruction_read,	//指令存储器读信号
	output reg data_memory_read,	//数据存储器读信号
	output reg data_memory_write,	//数据存储器写信号
	output reg reg_write_address_select,	//寄存器写回地址选择
	output reg extender_select,	//数据扩展选择
	output reg next_address_select, //pc地址选择
	output reg [2:0] alu_op,	//alu操作码
	output reg ir_write	//ir读信号
);

	// 指令执行阶段码
	parameter [4:0]	sIF = 5'b00001,
							sID = 5'b00010,
							sEX = 5'b00100,
							sMEM = 5'b01000,
							sWB = 5'b10000;
	
	parameter [5:0]	J = 6'b000000,
							BEQZ = 6'b000010,
							AND = 6'b000100,
							OR = 6'b000100,
							ADDI = 6'b001010,
							SUBI = 6'b001000,
							SW = 6'b001100,
							LW = 6'b001110;
	
	reg [4:0] current_state, next_state;
	
	initial begin
		alu_select_a = 0;
		alu_select_b = 0;
		reg_write_select = 0;
		reg_write = 0;
		instruction_read = 1;
		data_memory_read = 0;
		data_memory_write = 0;
		reg_write_address_select = 0;
		extender_select = 0;
		next_address_select = 0;
		alu_op = 3'b000;
		ir_write = 0;
		current_state = sIF;
	end
	
	// 更新到下一个周期
	always @(posedge clk) begin
		current_state <= next_state;
	end
	
	// 确定下一个周期
	always @(current_state) begin
		case(current_state)
			sIF: next_state = sID;
			sID: next_state = sEX;
			sEX: next_state = sMEM;
			sMEM: next_state = sWB;
			sWB: next_state = sIF;
		endcase
	end
	
	// 根据条件判断各个使能信号
	always @(current_state) begin
		
		ir_write = (current_state == sIF) ? 1 : 0;
		
		reg_write = (current_state == sWB && (op_code != J || op_code != BEQZ || op_code != SW)) ? 1 : 0;
		
		reg_write_address_select = (op_code == AND || op_code == OR) ? 1 : 0;
		
		extender_select = (current_state == sID && op_code == J) ? 1 : 0;
		
		alu_select_a = (current_state == sEX && (op_code == J || op_code == BEQZ)) ? 1 : 0;
		
		alu_select_b = (current_state == sEX && (op_code == AND || op_code == OR)) ? 1 : 0;
		
		if(op_code == SUBI) alu_op = 3'b001;
		else if(op_code == AND) alu_op = 3'b100;
		else if(op_code == OR) alu_op = 3'b011;
		else alu_op = 3'b000;
		
		if(current_state == sID && op_code == J) next_address_select = 1;
		else if(current_state == sEX && op_code == BEQZ && equal == 1) next_address_select = 1;
		else next_address_select = 0;
		
		data_memory_read = (current_state == sMEM && op_code == LW) ? 1 : 0;
		
		data_memory_write = (current_state == sMEM && op_code == SW) ? 1 : 0;
		
		reg_write_select = (op_code == LW) ? 1 : 0;
		
	end
	
endmodule

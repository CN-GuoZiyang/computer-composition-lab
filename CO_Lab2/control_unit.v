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
	input clk,	//ʱ��
	input [5:0] op_code,	//ָ�������
	input equal,	//BEQ����ж�
	output reg alu_select_a,	//alu����ѡ��
	output reg alu_select_b,	//alu����ѡ��
	output reg reg_write_select,	//regд������ѡ��
	output reg reg_write,	//regд���ź�
	output reg instruction_read,	//ָ��洢�����ź�
	output reg data_memory_read,	//���ݴ洢�����ź�
	output reg data_memory_write,	//���ݴ洢��д�ź�
	output reg reg_write_address_select,	//�Ĵ���д�ص�ַѡ��
	output reg extender_select,	//������չѡ��
	output reg next_address_select, //pc��ַѡ��
	output reg [2:0] alu_op,	//alu������
	output reg ir_write	//ir���ź�
);

	// ָ��ִ�н׶���
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
	
	// ���µ���һ������
	always @(posedge clk) begin
		current_state <= next_state;
	end
	
	// ȷ����һ������
	always @(current_state) begin
		case(current_state)
			sIF: next_state = sID;
			sID: next_state = sEX;
			sEX: next_state = sMEM;
			sMEM: next_state = sWB;
			sWB: next_state = sIF;
		endcase
	end
	
	// ���������жϸ���ʹ���ź�
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

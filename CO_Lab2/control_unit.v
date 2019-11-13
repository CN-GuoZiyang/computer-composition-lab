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
	input [5:0] op_code,
	input [10:0] alu_func,
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
	output reg ir_write,	//ir���ź�
	output reg [4:0] current_state,
	output reg renew_pc
);

	// ָ��ִ�н׶���
	parameter [4:0]	sIF = 5'b00001,
							sID = 5'b00010,
							sEX = 5'b00100,
							sMEM = 5'b01000,
							sWB = 5'b10000;
	
	parameter [5:0]	J = 6'b000000,
							BEQ = 6'b000010,
							ALU = 6'b000100,
							SW = 6'b001100,
							LW = 6'b001110;
	
	reg [4:0] next_state;
	
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
		renew_pc = 0;
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
	
	always @(negedge clk) begin
		case(current_state)
			//sID: if(op_code == J) renew_pc <= 1;
			//sEX: if(op_code == BEQ) renew_pc <= 1;
			sWB: renew_pc <= 1;
			default: renew_pc <= 0;
		endcase
	end
	
	// ���������жϸ���ʹ���ź�
	always @(current_state) begin
		
		alu_select_a = (op_code == J || op_code == BEQ)?1:0;
		
		alu_select_b = (op_code == J || op_code == BEQ || op_code == SW || op_code == LW)?1:0;

		reg_write_select = (op_code == LW)?1:0;

		reg_write = (current_state == sWB && (op_code == ALU || op_code == LW))?1:0;

		data_memory_read = (current_state == sMEM && op_code == LW)?1:0;

		data_memory_write = (current_state == sMEM && op_code == SW)?1:0;

		reg_write_address_select = (op_code == LW)?0:1;

		extender_select = (op_code == BEQ || op_code == LW || op_code == SW)?0:1;
		
		next_address_select = (op_code == J || (op_code == BEQ && equal == 1))?1:0;

		ir_write = (current_state == sIF)?1:0;

		if(op_code == ALU) alu_op = alu_func[2:0];
		else if(op_code == BEQ) alu_op = 3'b110;
		else if(op_code == J) alu_op = 3'b111;
		else alu_op = 3'b000;
		
	end
	
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:32 10/27/2019 
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
module cpu(
	input clk,
	output res_zero,
	output alu_select_a,
	output alu_select_b,
	output [31:0] current_op,
	output [31:0] alu_in_a,
	output [31:0] alu_in_b,
	output [31:0] alu_res,
	output [31:0] data_memory_out,
	output [4:0] current_state,
	output [31:0] reg_write_data
);

	//wire alu_select_a;	//alu����ѡ��
	//wire alu_select_b;	//alu����ѡ��
	wire reg_write_select;	//regд������ѡ��
	wire reg_write;	//regд���ź�
	wire instruction_read;	//ָ��洢�����ź�
	wire data_memory_read;	//���ݴ洢�����ź�
	wire data_memory_write;	//���ݴ洢��д�ź�
	wire reg_write_address_select;	//�Ĵ���д�ص�ַѡ��
	wire extender_select;	//������չѡ��
	wire next_address_select; //pc��ַѡ��
	wire [2:0] alu_op;	//alu������
	wire ir_write;	//ir���ź�
	
	wire equal;
	
	wire [31:0] pc_addr, next_pc, npc, op_ir_in;
	
	wire [31:0] read_data_a, read_data_b, read_dataa, read_datab, extender_out;
	
	// wire [31:0] alu_in_a, alu_in_b, alu_res;
	
	wire [31:0] data_memory_address, mux4out;
	
	wire [5:0] op_code;
	
	wire [10:0] alu_func;
	
	wire [4:0] irs, rrs2, ird, rrd, reg_write_address;
	
	wire [15:0] iins;
	
   wire [25:0]	jname;
	
	pc pc(clk, next_pc, pc_addr);
	
	npc_adder npc_adder(pc_addr, npc);
	
	instruction_memory instruction_memory(instruction_read, pc_addr, op_ir_in);
	
	ir ir(clk, ir_write, op_ir_in, current_op);
	
	assign op_code = current_op[31:26];
	assign alu_func = current_op[10:0];
	assign irs = current_op[25:21];
	assign rrs2 = current_op[20:16];
	assign ird = current_op[20:16];
	assign rrd = current_op[15:11];
	assign iins = current_op[15:0];
	assign jname = current_op[25:0];
	
	select_5bit mux1(reg_write_address_select, ird, rrd, reg_write_address);
	
	extender extender(iins, jname, extender_select, extender_out);
	
	reg_file reg_file(clk, reg_write, irs, rrs2, reg_write_address, reg_write_data, read_data_a, read_data_b);
	
	data_late dl1(clk, read_data_a, read_dataa);
	
	data_late dl2(clk, read_data_b, read_datab);
	
	equal_judge equal_judge(read_data_a, read_data_b, equal);
	
	select_32bit mux2(alu_select_a, read_dataa, npc, alu_in_a);
	
	select_32bit mux3(alu_select_b, read_datab, extender_out, alu_in_b);
	
	alu alu(alu_op, alu_in_a, alu_in_b, alu_res, res_zero);
	
	data_late dl3(clk, alu_res, data_memory_address);
	
	data_memory data_memory(clk, data_memory_address, read_data_b, data_memory_read, data_memory_write, data_memory_out);
	
	pc_select pc_select(next_address_select, npc, alu_res, next_pc);
	
	select_32bit mux4(reg_write_select, alu_res, data_memory_out, mux4out);
	
	data_late dl4(clk, mux4out, reg_write_data);
	
	control_unit control_unit(
		clk,	//ʱ��
		op_code,	//ָ�������
		alu_func,
		equal,	//BEQ����ж�
		alu_select_a,	//alu����ѡ��
		alu_select_b,	//alu����ѡ��
		reg_write_select,	//regд������ѡ��
		reg_write,	//regд���ź�
		instruction_read,	//ָ��洢�����ź�
		data_memory_read,	//���ݴ洢�����ź�
		data_memory_write,	//���ݴ洢��д�ź�
		reg_write_address_select,	//�Ĵ���д�ص�ַѡ��
		extender_select,	//������չѡ��
		next_address_select, //pc��ַѡ��
		alu_op,	//alu������
		ir_write,	//ir���ź�
		current_state
	);

endmodule

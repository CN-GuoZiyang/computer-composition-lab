`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:42:21 11/13/2019
// Design Name:   cpu
// Module Name:   C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/test.v
// Project Name:  CO_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;

	// Outputs
	wire res_zero;
	wire alu_select_a;
	wire alu_select_b;
	wire [31:0] current_op;
	wire [31:0] alu_in_a;
	wire [31:0] alu_in_b;
	wire [31:0] alu_res;
	wire [31:0] data_memory_out;
	wire [4:0] current_state;
	wire [31:0] reg_write_data;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.res_zero(res_zero), 
		.alu_select_a(alu_select_a), 
		.alu_select_b(alu_select_b), 
		.current_op(current_op), 
		.alu_in_a(alu_in_a), 
		.alu_in_b(alu_in_b), 
		.alu_res(alu_res), 
		.data_memory_out(data_memory_out), 
		.current_state(current_state), 
		.reg_write_data(reg_write_data)
	);

	initial begin
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
	end
      
endmodule


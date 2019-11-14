`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:04:26 11/13/2019
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
	wire equal;
	wire [31:0] next_pc;
	wire [31:0] pc_addr;
	wire [31:0] current_op;
	wire [31:0] alu_in_a;
	wire [31:0] alu_in_b;
	wire [31:0] alu_res;
	wire [4:0] current_state;
	wire [31:0] reg_write_data;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.res_zero(res_zero), 
		.equal(equal), 
		.next_pc(next_pc), 
		.pc_addr(pc_addr), 
		.current_op(current_op), 
		.alu_in_a(alu_in_a), 
		.alu_in_b(alu_in_b), 
		.alu_res(alu_res), 
		.current_state(current_state), 
		.reg_write_data(reg_write_data)
	);

	initial begin
	   #10;
		clk = 0;
		repeat(89) #10 clk = ~clk;
		$stop();
	end
      
endmodule


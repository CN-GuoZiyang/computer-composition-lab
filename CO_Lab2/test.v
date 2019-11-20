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
	reg reset;

	// Outputs
	wire res_zero;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk),
		.reset(reset),
		.res_zero(res_zero), 
		.equal(equal)
	);

	initial begin
	   #10;
		clk = 0;
		repeat(89) #10 clk = ~clk;
		$stop();
	end
      
endmodule


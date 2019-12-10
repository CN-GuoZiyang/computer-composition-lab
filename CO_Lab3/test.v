`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:42:28 12/10/2019
// Design Name:   CPU
// Module Name:   C:/Users/Ziyang Guo/Desktop/CO_Lab3/CO_Lab3/test.v
// Project Name:  CO_Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
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
	wire equal;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.reset(reset), 
		.equal(equal), 
		.zero(zero)
	);

	initial begin
		clk = 1;
		reset = 0;
		#5;
		clk = ~clk;
		#5;
		reset = 1;
	end
 
	always #5 clk = ~clk;
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:56:06 10/11/2019
// Design Name:   alu
// Module Name:   C:/Users/zinker/Downloads/ISEProjects/ALU/alu_test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;
	reg [4:0] card;

	// Outputs
	wire [31:0] f;
	wire cout;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.card(card), 
		.f(f), 
		.cout(cout), 
		.zero(zero)
	);

	initial begin
		$dumpfile("test.vcd");
      	$dumpvars(0, uut);
		a = 32'hFFFFFF;
		b = 32'heeeeee;
		cin = 0;
		card = {5{1'b0}};
		#100000 $finish();
	end
	
	parameter DELAY = 1;
	always #(DELAY << 0) card[0] = ~card[0];
	always #(DELAY << 1) card[1] = ~card[1];
	always #(DELAY << 2) card[2] = ~card[2];
	always #(DELAY << 3) card[3] = ~card[3];
	always #(DELAY << 4) card[4] = ~card[4];
	always #(DELAY << 5) cin = ~cin;
      
endmodule

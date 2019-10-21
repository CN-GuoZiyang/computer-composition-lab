`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:49 10/19/2019 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory(flag, address, instruction);
	input flag;
	input [31:0] address;
	output reg [31:0] instruction;
	
	reg [8:0] data [1023:0];
	
	initial begin
		$readmemb("C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/instructions.txt", data, 0);
	end
	
	always @(*) begin
		if(flag == 1) begin
			instruction[31:24] <= data[address];
			instruction[23:16] <= data[address + 1];
			instruction[15:8] <= data[address + 2];
			instruction[7:0] <= data[address + 3];
		end
	end

endmodule

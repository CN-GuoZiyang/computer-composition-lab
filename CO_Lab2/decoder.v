`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:21 10/21/2019 
// Design Name: 
// Module Name:    decoder 
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
module decoder(instruction, op_code, rd, rs1, rs2, ins, func, j_name);
	input [31:0] instruction;
	output [5:0] op_code;
	output reg [4:0] rd, rs1, rs2;
	output reg [15:0] ins;
	output reg [10:0] func;
	output reg [25:0] j_name;
	
	assign op_code = instruction[31:26];
	
	always @(*) begin
		case(op_code)
			6'b001zzz:begin
				rd = instruction[25:21];
				rs1 = instruction[20:16];
				ins = instruction[15:0];
			end
			6'b000010:begin
				rs1 = instruction[25:21];
				ins = instruction[15:0];
			end
			6'b000100:begin
				rs1 = instruction[25:21];
				rs2 = instruction[20:16];
				rd = instruction[15:11];
				func = instruction[10:0];
			end
			6'b000000:begin
				j_name = instruction[25:0];
			end
		endcase
	end

endmodule

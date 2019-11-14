`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:48 10/27/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(func, srca, srcb, result, zero);
	input [2:0] func;
	input [31:0] srca, srcb;
	output reg [31:0] result;
	output zero;
	
	reg [31:0] temp;
	
	initial begin
		result = 31'd0;
	end
	
	assign zero = (result == 31'd0) ? 1 : 0;
	
	always @(func or srca or srcb) begin
		case(func)
			3'b000: result = srca + srcb;
			3'b001: result = srca - srcb;
			3'b010: result = srca & srcb;
			3'b011: result = srca | srcb;
			3'b100: result = srca ^ srcb;
			3'b101: result = (srca < srcb) ? 1 : 0;
			3'b110: result = srca + (srcb << 2);
			3'b111: begin 
				temp = srcb << 2;
				result = {srca[31:26], temp[25:0]};
			end
			default: begin
				result = 32'd0;
			end
		endcase
	end


endmodule

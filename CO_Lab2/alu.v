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
	
	initial begin
		result = 31'd0;
	end
	
	assign zero = (result == 31'd0) ? 1 : 0;
	
	always @(func or srca or srcb) begin
		case(func)
			3'b000: result = srca + srcb;
			3'b001: result = srca - srcb;
			3'b010: result = srca << srcb;
			3'b011: result = srca | srcb;
			3'b100: result = srca & srcb;
			3'b101: result = (srca < srcb) ? 1 : 0;
			3'b110: begin
				if(srca < srcb && (srca[31] == srcb[31]))result = 1;
            else if (srca[31] == 1 && srcb[31] == 0) result = 1;
            else result = 0;
			end
			3'b111: result = srca ^ srcb;
			default: begin
				result = 32'd0;
			end
		endcase
	end


endmodule

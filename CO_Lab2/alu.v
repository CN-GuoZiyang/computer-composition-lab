`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:44 10/19/2019 
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
module alu(a, b, card, out);
    input [31:0] a, b;
    input [10:0] card;
    output reg [31:0] out;

    always @(*) begin
        case(card)
        11'b00000000001: out = a & b;
        11'b00000000010: out = a | b;
        11'b00000000100: out = a + b;
        11'b00000001000: out = a + (~b) + 32'd1;
        default: out = 32'd0;
		  endcase
    end

endmodule

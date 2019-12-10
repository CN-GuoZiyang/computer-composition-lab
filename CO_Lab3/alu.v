`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/08 23:55:57
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [31:0] num1,
    input [31:0] num2,
    input [5:0] opcode,
    output equal,
    output zero,
    output reg [31:0] ans
    );
    
    initial begin
        ans = 0;
    end
    
    assign zero = (ans == 0)? 1 : 0;
    assign equal = (num1 == num2)? 1 : 0;
    always @ (opcode or num1 or num2) begin
        case (opcode)
            6'b000000: ans = num1 + num2;
            6'b000001: ans = num1 - num2;
            6'b000010: ans = num1 & num2;
            6'b000011: ans = num1 | num2;
            6'b000100: ans = num1 ^ num2;
            6'b000101: ans = (num1 < num2)? 1 : 0;
            6'b100000: ans = num1 + num2;
            6'b100001: ans = num1 + num2;
            6'b110000: ans = num1 + num2;
            default: ans = 0;
        endcase    
    end
    
endmodule

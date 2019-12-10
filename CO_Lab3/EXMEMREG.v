`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 18:34:23
// Design Name: 
// Module Name: EXMEMREG
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


module EXMEMREG(
    input clk,
    input [31:0] ir_ex,
    input [31:0] alu_ex,
    input [31:0] reg2_ex,
    input [5:0] opcode_ex,
    input equal_ex,
    input zero_ex,
    output reg [31:0] ir_mem,
    output reg [31:0] alu_mem,
    output reg [31:0] reg2_mem,
    output reg equal_mem,
    output reg npcable_mem,
    output reg ramw_mem,
    output reg ramr_mem,
    output reg zero_mem
    );  
    reg [31:0] ir, alu, reg2;
    reg [5:0] opcode;
    reg e, zero;
    initial begin
        ir = 0;
        alu = 0;
        reg2 = 0;
        e = 0;
        zero = 0;
    end
    
    always @ (posedge clk) begin
        ir <= ir_ex;
        alu <= alu_ex;
        reg2 <= reg2_ex;
        opcode <= opcode_ex;
        zero <= zero_ex;       
        e <= equal_ex;
    end
    wire npcable, ramr, ramw;
    assign npcable = (opcode_ex == 6'b110000 && equal_ex == 1)? 1 : 0;
    assign ramr = (opcode_ex == 6'b100001) ? 1 : 0;
    assign ramw = (opcode_ex == 6'b100000) ? 1 : 0;
    always @ (negedge clk) begin
        ir_mem <= ir;
        alu_mem <= alu;
        reg2_mem <= reg2;
        equal_mem <= e;
        npcable_mem <= npcable;
        ramr_mem <= ramr;
        ramw_mem <= ramw;
        zero_mem <= zero;
    end

endmodule

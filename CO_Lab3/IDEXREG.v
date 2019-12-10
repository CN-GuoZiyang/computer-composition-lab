`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 01:06:28
// Design Name: 
// Module Name: IDEXREG
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


module IDEXREG(
    input clk,
    input [31:0] pc_id,
    input [31:0] extend_out,
    input [31:0] ir_id,
    input [31:0] reg1_id,
    input [31:0] reg2_id,
    input [5:0] opcode_id,
    output reg [5:0] opcode_ex,
    output reg [31:0] pc_ex,
    output reg [31:0] extend_ex,
    output reg [31:0] ir_ex,
    output reg [31:0] num1_ex,
    output reg [31:0] num2_ex,
    output reg s1_sel
    );
    reg [31:0] pc, extend, ir, reg1, reg2, opcode;
    initial begin
        pc = 0;
        extend = 0;
        ir = 0;
        reg1 = 0;
        reg2 = 0;
        opcode = 0;
    end
    
    always @ (posedge clk) begin
        pc <= pc_id;
        extend <= extend_out;
        ir <= ir_id;
        reg1 <= reg1_id;
        reg2 <= reg2_id;
        opcode <= opcode_id;
    end
    wire sl;
    assign sl = (opcode_id[5] == 1)? 1 : 0;
    always @ (negedge clk) begin
        pc_ex <= pc;
        extend_ex <= extend;
        ir_ex <= ir;
        num1_ex <= reg1;
        num2_ex <= reg2;
        opcode_ex <= opcode;
        s1_sel <= sl;
    end

endmodule

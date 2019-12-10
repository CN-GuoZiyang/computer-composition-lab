`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 01:01:47
// Design Name: 
// Module Name: IFIDREG
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


module IFIDREG(
    input clk,
    input [31:0] ir_if,
    input [31:0] pc_if,
    output reg [31:0] pc_id,
    output reg [31:0] ir_id,
    output reg [5:0] opcode_id,
    output reg [4:0] reg1_id,
    output reg [4:0] reg2_id,
    output reg [4:0] reg3_id,
    output reg [15:0] im16_id,
    output reg [25:0] im26_id,
    output reg writeback_id
    );
    reg [31:0] ir;
    reg [31:0] pc;
    reg [5:0] opcode;
    reg [4:0] reg1, reg2, reg3;
    reg [15:0] im16;
    reg [25:0] im26;
    initial begin
        ir = 0;
        pc = 0;
        opcode = 0;
        reg1 = 0;
        reg2 = 0;
        reg3 = 0;
        im16 = 0;
        im26 = 0;
    end
    always @ (posedge clk) begin
        ir <= ir_if;
        pc <= pc_if;
        opcode <= ir_if[31:26];
        reg1 <= ir_if[25:21];
        reg2 <= ir_if[20:16];
        reg3 <= ir_if[15:11];
        im16 <= ir_if[15:0];
        im26 <= ir_if[25:0];
    end
    always @ (negedge clk) begin
        pc_id <= pc;
        ir_id <= ir;
        opcode_id <= opcode;
        reg1_id <= reg1;
        reg2_id <= reg2;
        reg3_id <= reg3;
        im16_id <= im16;
        im26_id <= im26;
    end
    
endmodule

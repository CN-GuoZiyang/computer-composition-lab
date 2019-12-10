`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 18:54:04
// Design Name: 
// Module Name: MEMWBREG
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


module MEMWBREG(
    input clk,
    input [31:0] alu_mem,
    input [31:0] ram_mem,
    input [31:0] ir_mem,
    output reg [31:0] alu_wb,
    output reg [31:0] ram_wb,
    output reg regwrite_wb,
    output reg sel,
    output reg [4:0] writereg_wb
    );
    
    reg [31:0] alu;
    reg [31:0] ram;
    initial begin
        alu = 0;
        ram = 0;
    end
    
    always @ (posedge clk) begin
        alu <= alu_mem;
        ram <= ram_mem;
    end
    wire regwrite, cel;
    wire [4:0] regname;
    assign regwrite = (ir_mem[31:28] == 3'b000 || ir_mem[31:26] == 6'b100001)? 1 : 0;
    assign cel = (ir_mem[31] == 0)? 0: 1;
    assign regname = ir_mem[25:21];
    always @ (negedge clk) begin
        alu_wb <= alu;
        ram_wb <= ram;
        regwrite_wb <= regwrite;
        sel <= cel;
        writereg_wb <= regname;
    end
    
    
    
endmodule

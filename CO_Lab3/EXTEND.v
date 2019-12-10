`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:18:10
// Design Name: 
// Module Name: EXTEND
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


module EXTEND(
    input [5:0] opcode,
    input [15:0] num16bits,
    input [25:0] num26bits,
    input [31:0] npc,
    output reg [31:0] num32bits
    );
    initial begin
        num32bits = 0;
    end
    always @ (opcode or num16bits or num32bits) begin
            case (opcode)
                6'b100000:begin
                    num32bits = {{16{num16bits[15]}}, num16bits};
                end        
                6'b100001:begin
                    num32bits = {{16{num16bits[15]}}, num16bits};
                end
                6'b110000:begin
                    num32bits = {{16{num16bits[15]}}, num16bits};
                    num32bits = num32bits << 2;
                    num32bits = num32bits + npc;
                end
                6'b110001:begin
                    num32bits = {{4{npc[31]}}, num26bits << 2};
                end
                default: num32bits = 0;
            endcase       
    end
endmodule

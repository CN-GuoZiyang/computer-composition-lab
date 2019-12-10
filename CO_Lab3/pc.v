`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:06:43
// Design Name: 
// Module Name: PC
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


module PC(
    input clk, 
    input reset,
    input [31:0] newAddr,
    output reg [31:0] curAddr
    );
    initial begin
        curAddr <= 0;
    end
    
    always @ (negedge clk or negedge reset) begin
        if(reset == 0) curAddr <= 0;
        else begin
            curAddr <= newAddr;
        end
    end
endmodule

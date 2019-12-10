`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:20:42
// Design Name: 
// Module Name: SELECTOR32BITS
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


module SELECTOR32BITS(
    input [31:0] select1,
    input [31:0] select2,
    input ctl,
    output [31:0] res
    );
    
    assign res = (ctl == 0)? select1 : select2;
endmodule

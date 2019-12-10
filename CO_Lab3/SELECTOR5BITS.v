`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:23:23
// Design Name: 
// Module Name: SELECTOR5BITS
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


module SELECTOR5BITS(
    input [4:0] select1,
    input [4:0] select2,
    input ctl,
    output [4:0] ans
    );
    
    assign ans = (ctl == 0)? select1 : select2;
endmodule

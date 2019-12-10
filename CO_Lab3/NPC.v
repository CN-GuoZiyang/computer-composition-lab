`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:57:27
// Design Name: 
// Module Name: NPC
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


module NPC(
    input [31:0] curAdd,
    input [31:0] rdata,
    input ctl,
    output reg [31:0] newAdd
    );
    
    wire [31:0] tmp1, tmp2;
    assign tmp1 = curAdd + 1;
    assign tmp2 = rdata;
    always @ (curAdd) begin
        if(ctl == 1) newAdd = tmp2;
        else newAdd = tmp1;    
    end
endmodule

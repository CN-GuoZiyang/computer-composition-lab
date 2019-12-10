`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:30:53
// Design Name: 
// Module Name: ROM
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


module ROM(
    input [31:0] Addr,
    output reg [31:0] ins
    );
    
    reg [31:0] data [255:0];
    initial begin
        $readmemb ("instructions.txt", data);
        ins = 0;
    end
    always @ (Addr) begin
        ins = data[Addr];
    end        
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:24:41
// Design Name: 
// Module Name: RAM
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


module RAM(
    input ramr,
    input ramw,
    input [31:0] Addr,
    input [31:0] wdata,
    output [31:0] dataout
    );
    reg [31:0] data [255:0];
    
    initial begin
        $readmemb("memory_data.txt", data); 
    end
    assign dataout = (ramr == 1 && ramw == 0)? data[Addr] : 0;
    
    always @(ramw or ramr) begin
        if(ramw == 1 && ramr == 0) begin
            data[Addr] = wdata;
        end
    end 
endmodule

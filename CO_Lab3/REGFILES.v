`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 00:12:35
// Design Name: 
// Module Name: REGFILES
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


module REGFILES(
    input reset,
    input regwrite,
    input [4:0] r1, r2, writer,
    input [31:0] writedata,
    output [31:0] r1data, r2data
    );
    
    reg [0:31] regs[31:0];
    reg [31:0] tmp;

    initial begin
        $readmemb("reg_file.txt", regs);
        tmp = 0;
    end
    
    assign r1data = regs[r1];
    assign r2data = regs[r2];
    always @ (negedge reset or negedge regwrite) begin
        if(reset == 0) begin
            $readmemb("reg_file.txt", regs);        
        end
    end
    always @ (*) begin
        if(regwrite == 1) begin
            regs[writer] = writedata;
        end
    end
endmodule

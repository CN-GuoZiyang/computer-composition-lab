`timescale 1ns / 1ps

`include "add.v"
`include "multiplex.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:57 10/15/2019 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(a, b, cin, card, f, cout, zero);
    input [31:0] a, b;
    input [4:0] card;
    input cin;
    output [31:0] f;
    output cout;
    output reg zero;

    wire [511:0] f_t;
    wire [15:0] cout_t;

    add32 a1(a, b, 1'b0, f_t[511:480], cout_t[15]);
    add32 a2(a, b, cin, f_t[479:448], cout_t[14]);
    sub32 s3(a, b, 1'b0, f_t[447:416], cout_t[13]);
    sub32 s4(a, b, cin, f_t[415:384], cout_t[12]);
    sub32 s5(b, a, 1'b0, f_t[383:352], cout_t[11]);
    sub32 s6(b, a, cin, f_t[351:320], cout_t[10]);
    assign f_t[319:288] = a;
    assign f_t[287:256] = b;
    assign f_t[255:224] = ~a;
    assign f_t[223:192] = ~b;
    assign f_t[191:160] = a|b;
    assign f_t[159:128] = a&b;
    assign f_t[127:96] = ~(a^b);
    assign f_t[95:64] = a^b;
    assign f_t[63:32] = ~(a&b);
    assign f_t[31:0] = {32{1'b0}};

    multiplex32_16 m32(f_t, f, card);
    multiplex1_16 m1(cout_t, cout, card);

    always @(*) begin
        if(f=={32{1'b0}}) zero = 1;
        else zero = 0;
    end

endmodule

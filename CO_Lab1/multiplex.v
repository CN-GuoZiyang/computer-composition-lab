`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:45 10/15/2019 
// Design Name: 
// Module Name:    multiplex 
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
module multiplex32_16(in, out, card);
    input [511:0] in;
    input [4:0] card;
    output reg [31:0] out;

    always @(*) begin
        case(card)
            5'b00000: out = in[511:480];
            5'b00001: out = in[479:448];
            5'b00010: out = in[447:416];
            5'b00011: out = in[415:384];
            5'b00100: out = in[383:352];
            5'b00101: out = in[351:320];
            5'b00110: out = in[319:288];
            5'b00111: out = in[287:256];
            5'b01000: out = in[255:224];
            5'b01001: out = in[223:192];
            5'b01010: out = in[191:160];
            5'b01011: out = in[159:128];
            5'b01100: out = in[127:96];
            5'b01101: out = in[95:64];
            5'b01110: out = in[63:32];
            5'b01111: out = in[31:0];
        endcase
    end

endmodule

module multiplex1_16(in, out, card);
    input [15:0] in;
    input [4:0] card;
    output reg out;

    always @(*) begin
        case(card)
            5'b00000: out = in[15];
            5'b00001: out = in[14];
            5'b00010: out = in[13];
            5'b00011: out = in[12];
            5'b00100: out = in[11];
            5'b00101: out = in[10];
            5'b00110: out = in[9];
            5'b00111: out = in[8];
            5'b01000: out = in[7];
            5'b01001: out = in[6];
            5'b01010: out = in[5];
            5'b01011: out = in[4];
            5'b01100: out = in[3];
            5'b01101: out = in[2];
            5'b01110: out = in[1];
            5'b01111: out = in[0];
        endcase
    end

endmodule

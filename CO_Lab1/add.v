module add1(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

module add2(a, b, cin, sum, cout);
    input [1:0] a, b;
    input cin;
    output [1:0] sum;
    output cout;

    wire carry;
    add1 a1(a[0], b[0], cin, sum[0], carry);
    add1 a2(a[1], b[1], carry, sum[1], cout);
endmodule

module add4(a, b, cin, sum, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;

    wire carry;
    add2 a1(a[1:0], b[1:0], cin, sum[1:0], carry);
    add2 a2(a[3:2], b[3:2], carry, sum[3:2], cout);
endmodule

module add8(a, b, cin, sum, cout);
    input [7:0] a, b;
    input cin;
    output [7:0] sum;
    output cout;

    wire carry;
    add4 a1(a[3:0], b[3:0], cin, sum[3:0], carry);
    add4 a2(a[7:4], b[7:4], carry, sum[7:4], cout);
endmodule

module add16(a, b, cin, sum, cout);
    input [15:0] a, b;
    input cin;
    output [15:0] sum;
    output cout;

    wire carry;
    add8 a1(a[7:0], b[7:0], cin, sum[7:0], carry);
    add8 a2(a[15:8], b[15:8], carry, sum[15:8], cout);
endmodule

module add32(a, b, cin, sum, cout);
    input [31:0] a, b;
    input cin;
    output [31:0] sum;
    output cout;

    wire carry;
    add16 a1(a[15:0], b[15:0], cin, sum[15:0], carry);
    add16 a2(a[31:16], b[31:16], carry, sum[31:16], cout);
endmodule

module sub32(a, b, cin, sum, cout);
    input [31:0] a, b;
    input cin;
    output [31:0] sum;
    output cout;

    wire [31:0] b_n, sum_t;
    wire cin_n, cout1, cout2;
    assign b_n = b ^ {32{1'b1}};
    assign cin_n = cin ^ 1'b1;

    add32 a1(a, b, 1'b1, sum_t, cout1);
    add32 a2(sum_t, {{31{1'b0}}, cin_n}, 1'b1, sum, cout2);
    assign cout = cout1 | cout2;

endmodule
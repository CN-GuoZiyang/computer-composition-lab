`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:28 10/27/2019 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(clk, reset, write, read_address_a, read_address_b, write_address, write_data, read_out_a, read_out_b);
	input clk, reset, write;
	input [4:0] read_address_a, read_address_b, write_address;
	input [31:0] write_data;
	output [31:0] read_out_a, read_out_b;
	
	reg [31:0] data [1:31];	// ²»°üº¬#0¼Ä´æÆ÷
	
	initial begin
		$readmemb("C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/register.txt", data);
	end
	
	assign read_out_a = (read_address_a == 5'd0) ? 32'd0 : data[read_address_a];
	assign read_out_b = (read_address_b == 5'd0) ? 32'd0 : data[read_address_b];
	
	always @(negedge clk or negedge reset) begin
		if(reset == 0) begin
			$readmemb("C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/register.txt", data);
      end
		else if(write == 1'b1 && write_address != 5'd0) data[write_address] <= write_data;
	end

endmodule

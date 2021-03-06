`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:33 10/27/2019 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(clk, reset, address, write_data, read, write, out);
	input clk, reset, read, write;
	input [31:0] address, write_data;
	output [31:0] out;
	
	reg [31:0] data [0:255];
	
	initial begin
		$readmemb("C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/data.txt", data);
	end
	
	assign out = (read == 1)?data[address]: 32'bz;
	
	always @(negedge clk or negedge reset) begin
		if(reset == 0) begin
			$readmemb("C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/data.txt", data);
      end
		else if(write == 1) data[address] <= write_data;
	end

endmodule
 
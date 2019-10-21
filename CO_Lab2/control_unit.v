`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:04 10/19/2019 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(clk, cond, op_code, instruction_memory_read, reg_file_reada, reg_file_readb, expander_select, mux_a, mux_b, mux_c, data_memory_read, data_memory_write, mux_d, reg_file_write);
	input clk, cond;
	input [5:0] op_code;
	output reg instruction_memory_read, reg_file_reada, reg_file_readb, expander_select, mux_a, mux_b, mux_c, data_memory_read, data_memory_write, mux_d, reg_file_write;
	
	reg [4:0] status;
	
	initial begin
		status = 5'b00001;
	end
	
	always @(posedge clk) begin
		case(status)
			5'b00001: status <= 5'b00010;
			5'b00010: status <= 5'b00100;
			5'b00100: status <= 5'b01000;
			5'b01000: status <= 5'b10000;
			5'b10000: status <= 5'b00001;
		endcase
	end
	
	always @(*) begin
		case(status)
			5'b00001:begin
				instruction_memory_read = 1;
			end
			5'b00010:begin
				reg_file_reada = 1;
				reg_file_readb = 1;
			end
			5'b00100:begin
				case(op_code)
					6'b000100:begin
						mux_a = 1;
						mux_b = 0;
					end
					6'b001010:begin
						mux_a = 1;
						mux_b = 1;
						expander_select = 0;
					end
					6'b001000:begin
						mux_a = 1;
						mux_b = 1;
						expander_select = 0;
					end
					6'b001100:begin
						mux_a = 1;
						mux_b = 1;
						expander_select = 0;
					end
					6'b001110:begin
						mux_a = 1;
						mux_b = 1;
						expander_select = 0;
					end
					6'b000010:begin
						mux_a = 0;
						mux_b = 1;
						expander_select = 0;
					end
					6'b000000:begin
						mux_a = 0;
						mux_b = 1;
						expander_select = 1;
					end
				endcase
			end
			5'b01000:begin
				case(op_code)
					6'b001100:begin
						data_memory_read = 0;
						data_memory_write = 1;
						mux_c = 0;
					end
					6'b001110:begin
						data_memory_read = 1;
						data_memory_write = 0;
						mux_c = 0;
					end
					6'b000010:begin
						data_memory_read = 0;
						data_memory_write = 0;
						if(cond == 1'b0)mux_c = 1;
						else mux_c = 0;
					end
					6'b000000:begin
						data_memory_read = 0;
						data_memory_write = 0;
						mux_c = 1;
					end
					default:begin
						data_memory_read = 0;
						data_memory_write = 0;
						mux_c = 0;
					end
				endcase
			end
			5'b10000:begin
				case(op_code)
					6'b000100:begin
						mux_d = 1;
						reg_file_write = 1;
					end
					6'b001010:begin
						mux_d = 1;
						reg_file_write = 1;
					end
					6'b001000:begin
						mux_d = 0;
						reg_file_write = 1;
					end
					default:begin
						mux_d = 0;
						reg_file_write = 0;
					end
				endcase
			end
		endcase
	end


endmodule

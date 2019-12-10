`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/09 19:05:52
// Design Name: 
// Module Name: PIPELINE
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


module CPU(
    input clk,
    input reset,
    output equal,
    output zero
    );
    
    wire [31:0] curAddr, pc_wb, ir_if, npc_if, ir_id, alu_mem, pc_if, datawrite_wb;
    wire [31:0] pc_id, data1_id, data2_id, extend_id, pc_ex, extend_ex, data1_ex, data2_ex, ir_ex;
    wire [31:0] mux1_ex, mux2_ex, ans_ex, ir_mem, data2_mem, ram_mem;
    wire [31:0] alu_wb, ram_wb;
    wire [5:0] opcode_id, opcode_ex;
    wire [4:0] reg1_id, reg2_id, reg3_id, fiveout, writereg_wb;
    wire [15:0] im16_id, im16_ex;
    wire [25:0] im26_id;
    wire npcable_mem, regwrite_wb, s1_sel, equal_ex, equal_mem, zero_ex, s2_sel;
    wire ramr_mem, ramw_mem;
    
    PC pc(clk, reset, pc_if, curAddr);
    NPC npc(curAddr, alu_mem, npcable_mem, pc_if);
    ROM rom(curAddr, ir_if);
    IFIDREG ifidreg(clk, ir_if, pc_if, pc_id, ir_id, opcode_id, reg1_id, reg2_id, reg3_id, im16_id, im26_id);
    
    SELECTOR5BITS s(reg3_id, reg1_id, opcode_id[5], fiveout);
    REGFILES regfiles(reset, regwrite_wb, reg2_id, fiveout, writereg_wb, datawrite_wb, data1_id, data2_id); 
    EXTEND extend(opcode_id, im16_id, im26_id, pc_id, extend_id);
    IDEXREG idexreg(clk, pc_id, extend_id, ir_id, data1_id, data2_id, opcode_id, opcode_ex, pc_ex, extend_ex, ir_ex, data1_ex, data2_ex, s1_sel);
    
    SELECTOR32BITS s1(data2_ex, extend_ex, s1_sel, mux1_ex);
    ALU alu(data1_ex, mux1_ex, opcode_ex, equal_ex, zero_ex, ans_ex);
    EXMEMREG exmemreg(clk, ir_ex, ans_ex, data2_ex, opcode_ex, equal_ex, zero_ex, ir_mem, alu_mem, data2_mem, equal, npcable_mem, ramw_mem, ramr_mem, zero);
    
    RAM ram(ramr_mem, ramw_mem, alu_mem, data2_mem, ram_mem);
    MEMWBREG memwbreg(clk, alu_mem, ram_mem, ir_mem, alu_wb, ram_wb, regwrite_wb, s2_sel, writereg_wb);
    
    SELECTOR32BITS s3(alu_wb, ram_wb, s2_sel, datawrite_wb);    
endmodule

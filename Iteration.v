`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 23:57:59
// Design Name: 
// Module Name: Iteration
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

`include "Alu_addAndSubtract.v"
`include "Alu_multiplication.v"

module Iteration(
    input [31:0] operand_1,
	input [31:0] operand_2,
	output [31:0] solution
	);

    wire [31:0] Intermediate_Value1,Intermediate_Value2;

    Alu_multiplication M1(operand_1,operand_2,,,,Intermediate_Value1);

    Alu_addAndSubtract A1(32'h4000_0000,{1'b1,Intermediate_Value1[30:0]},1'b0,,Intermediate_Value2);

    Alu_multiplication M2(operand_1,Intermediate_Value2,,,,solution);

endmodule

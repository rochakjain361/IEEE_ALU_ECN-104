`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 00:14:16
// Design Name: 
// Module Name: Alu_division
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

`include "Iteration.v"
`include "Alu_multiplication.v"
`include "Alu_addAndSubtract.v"

module Alu_division(
    input [31:0] a_operand,
    input [31:0] b_operand,
    output Exception,
    output [31:0] result
    );
    
    wire sign;
    wire [7:0] shift;
    wire [7:0] exponent_a;
    wire [31:0] divisor;
    wire [31:0] operand_a;
    wire [31:0] Intermediate_X0;
    wire [31:0] Iteration_X0;
    wire [31:0] Iteration_X1;
    wire [31:0] Iteration_X2;
    wire [31:0] Iteration_X3;
    wire [31:0] Iteration_X4;
    wire [31:0] Iteration_X5;
    
    wire [31:0] solution;
    wire [31:0] denominator;
    wire [31:0] operand_a_change;


    assign Exception = (&a_operand[30:23]) | (&b_operand[30:23]) | (~|a_operand[30:23]) | (~|b_operand[30:23]) ;   // Checking number is not infinity or NAN or zero

    assign sign = a_operand[31] ^ b_operand[31];        //sign of the result

    assign shift = 8'd126 - b_operand[30:23];

    assign divisor = {1'b0,8'd126,b_operand[22:0]};       //only mantissa value and removing sign and exponent
    
    assign denominator = divisor;

    assign exponent_a = a_operand[30:23] + shift;

    assign operand_a = {a_operand[31],exponent_a,a_operand[22:0]};     //sign positive ,mantissa value as previous and exponent is subtracted by exponent of operand_a
    
    assign operand_a_change = operand_a;
    
    Alu_multiplication x0(32'hC00B_4B4B,divisor,,,,Intermediate_X0);
    
    Alu_addAndSubtract X0(Intermediate_X0,32'h4034_B4B5,1'b0,,Iteration_X0); 

    Iteration X1(Iteration_X0,divisor,Iteration_X1);

    Iteration X2(Iteration_X1,divisor,Iteration_X2);

    Iteration X3(Iteration_X2,divisor,Iteration_X3);
    
    Iteration X4(Iteration_X3,divisor,Iteration_X4);
    
    Iteration X5(Iteration_X4,divisor,Iteration_X5);

    Alu_multiplication END(Iteration_X5,operand_a,,,,solution);
    
    assign result = {sign,solution[30:0]};

endmodule

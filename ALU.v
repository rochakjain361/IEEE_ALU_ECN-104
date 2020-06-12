`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 16:34:36
// Design Name: 
// Module Name: ALU
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
`include "Alu_division.v"
module ALU(
    input [31:0] operand_a,
    input [31:0] operand_b,
    input [2:0] operation,
    output [31:0] alu_result,
    output exception,
    output underflow,
    output overflow
    );
    
    //Wires for Arithmetic Operation's input and Logical Operation's output 
    wire [31:0] Add_Sub_A, Add_Sub_B, Mul_A, Mul_B, Div_A, Div_B, OR_Output, AND_Output, NOT_Output;
    
    // Wires for Exceptions OverFlow UnderFlow
    wire Add_Sub_Exception, Mul_Exception, Mul_Overflow, Mul_UnderFlow, Div_Exception;
    
    wire [31:0] Add_Sub_Output, Mul_Output, Div_Output;
    
    wire AddBar_Sub;
    
    wire Logical_Operations_Exception;
    
    assign {Add_Sub_A, Add_Sub_B, AddBar_Sub} = (operation == 3'd1) ? {operand_a,operand_b,1'b0} : 64'dz;
    
    assign {Add_Sub_A, Add_Sub_B, AddBar_Sub} = {operation == 3'd2} ? {operand_a,operand_b,1'b1} : 64'dz;
    
    assign {Mul_A, Mul_B} = {operation == 3'd3} ? {operand_a, operand_b} : 64'dz;
    
    assign {Div_A, Div_B} = {operation == 3'd4} ? {operand_a, operand_b} : 64'dz;
    
    assign OR_Output = (operation == 3'd5) ? (&operand_a[30:23] | &operand_b[30:23]) ? 32'b0 : operand_a | operand_b : 32'dz;
    
    assign AND_Output = (operation == 3'd6) ? (&operand_a[30:23] | &operand_b[30:23]) ? 32'b0 : operand_a & operand_b : 32'dz;
    
    assign NOT_Output = (operation == 3'd7) ? (&operand_a[30:23]) ? 32'b0 : !operand_a : 32'dz ;
    
    //Arithmetic Operations
    
    Alu_addAndSubtract ASI(Add_Sub_A, Add_Sub_B, AddBar_Sub, Add_Sub_Exception, Add_Sub_Output);
    
    Alu_multiplication MuI(Mul_A, Mul_B, Mul_Exception, Mul_Overflow, Mul_Underflow, Mul_Output);
    
    Alu_division DiI(Div_A, Div_B, Div_Exception, Div_Output);
    
    assign Logical_Operations_Exception = (&operand_a[30:23] | &operand_b[30:23]) ? 1'b1 : 1'b0 ;
    
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd1) ? {Add_Sub_Exception,1'b0,1'b0,Add_Sub_Output} : 35'dz; 
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd2) ? {Add_Sub_Exception,1'b0,1'b0,Add_Sub_Output} : 35'dz; 
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd3) ? {Mul_Exception, Mul_Overflow, Mul_Underflow, Mul_Output} : 35'dz;
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd4) ? {Div_Exception, 1'b0, 1'b0, Div_Output} : 35'dz;
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd5) ? {Logical_Operations_Exception, 1'b0, 1'b0, OR_Output} : 35'dz;
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd6) ? {Logical_Operations_Exception, 1'b0, 1'b0, AND_Output} : 35'dz;
    assign {exception, overflow, underflow, alu_result} = (operation == 3'd7) ? {Logical_Operations_Exception, 1'b0, 1'b0, NOT_Output} : 35'dz;
    
    
    
endmodule

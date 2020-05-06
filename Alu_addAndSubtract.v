`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2020 18:20:51
// Design Name: 
// Module Name: Alu_addAndSubtract
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

`include "Priority_encoder.v"

module Alu_addAndSubtract(
    input [31:0] a_operand, //Inputs in the format of IEEE-754 Representation
    input [31:0] b_operand, //2nd Inputs
    input add_Sub_Diff, //If add_Sub_Diff is high then Subtraction else Addition 
    output exception, //It checks if their is some illegal operation being carried or not
    output [31:0] result //Outputs in the format of IEEE-754 Representation. 
    );
    
    wire [31:0] a_oprnd, b_oprnd;
    wire [23:0] a_significand, b_significand;
    wire [7:0] exponent_b_updated;
    
    wire [7:0] difference_of_exponents;
    wire [23:0] updated_significand_b;
    //This is to be updated as per exponential difference in addition/subtraction only 
    
    wire [24:0] sum_of_significands;
    wire [30:0] add_sum;
    
    wire [7:0] sub_difference_exp;
    wire [30:0] sub_difference;
    wire [23:0] significand_sub_complement;
    wire [24:0] significand_sub;
    wire [24:0] subtraction_difference;
       
    wire sign_of_output;
    wire switch_operands;
    wire operation_subBar_add;
    
    //Exceptions in addition and subtraction:
    //1) Either one of the exponent is 255 (or 128 as we have range from -128 to 128)
    
    assign Exception = (&a_operand[30:23])|(&a_operand[30:23]);
    
    //For operations always operand_a must be greater than b_operand for conducting operations properly
    assign{switch_operands, a_oprnd, b_oprnd} = (a_operand[30:0] < b_operand[30:0]) ? {1'b1,b_operand,a_operand} : {1'b0,a_operand,b_operand};
    
    //Assigning significand values according to Hidden Bit
    //If exponent is equal to 0 then hidden bit will be zero or else its set to 1 as default
    assign a_significand = (|a_oprnd[30:23]) ? {1'b1, a_oprnd[22:0]} : {1'b0, a_oprnd[22:0]};  
    assign b_significand = (|b_oprnd[30:23]) ? {1'b1, b_oprnd[22:0]} : {1'b0, b_oprnd[22:0]};
        
    //To predict the sign of the output and operation to be carried out with the data given 
    assign sign_of_output = switch_operands ? add_Sub_Diff ? !a_oprnd[31] : a_oprnd[31]: a_oprnd[31];
    assign operation_subBar_add =  add_Sub_Diff ? a_oprnd[31] ^ b_oprnd[31] : ~(a_oprnd[31] ^ b_oprnd[31]);
    
    //Calculating the exponent difference 
    assign difference_of_exponents = a_oprnd[30:23] - b_oprnd[30:23];
    
    //Now shifting b_significand according to difference_of_exponent
    assign updated_significand_b = b_significand >> difference_of_exponents;
    assign exponent_b_updated = b_oprnd[30:23] + difference_of_exponents;    
    //Checking exponents are same or not:
    assign perform = (a_oprnd[30:23] == exponent_b_updated);
    
    /////---ADD BLOCK---//////
    assign sum_of_significands = (perform & operation_subBar_add) ? (a_significand + updated_significand_b) : 25'd0;
    
    //Result will be equal 1st 22 bits (Most 22 bits from MSB to LSB + 1) if carry generates else it will be least 22 bits (Least 22 bits MSB-1 to LSB)
    assign add_sum[22:0] = sum_of_significands[24] ? sum_of_significands[23:1] : sum_of_significands[22:0];
    assign add_sum[30:23] = sum_of_significands[24] ? (1'b1 + a_oprnd[30:23]) : a_oprnd[30:23];
    
    /////---SUBTRACT BLOCK----//////
    assign significand_sub_complement = (perform & !operation_subBar_add) ? ~(updated_significand_b) + 24'd1 : 24'd0;
    
    assign significand_sub = perform ? (a_significand + significand_sub_complement) : 25'd0;
    
    //priority encoder
    Priority_encoder pe(significand_sub, a_oprnd[30:23], subtraction_difference, sub_difference_exp);
    
    assign sub_difference[30:23] = sub_difference_exp;
    
    assign sub_difference[22:0] = subtraction_difference;
      
    //////---OUTPUT---//////
    // If there is no exception, the operation will evaluate   
    
    assign result = Exception ? 32'b0 : ((!operation_subBar_add) ? {sign_of_output, sub_difference} : {sign_of_output, add_sum});
    
endmodule
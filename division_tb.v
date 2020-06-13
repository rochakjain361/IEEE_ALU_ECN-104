/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module Alu_division_tb();
reg [31:0] a_operand,b_operand;
wire Exception,Overflow,Underflow;
wire [31:0] result;
integer i = 1;
reg clk = 1'b1;

Alu_division dut(a_operand,b_operand, Exception, result);

always clk = #5 ~clk;

initial
begin
iteration (32'h4afa06e7,32'h48493b93,32'h421f097a); 
iteration (32'hcb10c062,32'h4ad1bcea,32'hbfb0adf0); 
iteration (32'hca82f2b3,32'hcac8bef4,32'h3f26fd9e); 
iteration (32'h49ef730b,32'hc9175dda,32'hc04a7c40); 
iteration (32'h4ae26a62,32'h4a33ef9b,32'h4021105d); 
iteration (32'h4b098974,32'hcad5fc0f,32'hbfa48ac0); 
iteration (32'hca8fccd7,32'hca99710e,32'h3f6fea10); 
iteration (32'h4ae3836e,32'h4b08a3a3,32'h3f5520e8); 
iteration (32'h4b1838cf,32'h4adb4854,32'h3fb1b5e3); 
iteration (32'h4af3d2c1,32'hcacbcae0,32'hbf992497); 
iteration (32'hca2436a3,32'hca940cf6,32'h3f0df94f); 
iteration (32'h4aeef8e1,32'h4b0419e7,32'h3f678d99); 
iteration (32'h48781444,32'h4a99cfd2,32'h3d4e72ae); 
iteration (32'h48f1d225,32'hca33469e,32'hbe2ca7f7); 
iteration (32'hca37f8d4,32'h4b034b1b,32'hbeb35b72); 
iteration (32'h4aad100c,32'hca5e1457,32'hbfc77f13); 
iteration (32'hcacfff9a,32'h4b065065,32'hbf463875); 
iteration (32'hcad08a51,32'h4a0f29b2,32'hc03a73fd); 
iteration (32'h4afb2309,32'hcac515b2,32'hbfa31ae5); 
iteration (32'hcb0d6861,32'hcad87450,32'h3fa73e18); 
iteration (32'hc88272af,32'h4a980549,32'hbd5bac0a); 
iteration (32'hca529e46,32'hcb03bee0,32'h3ecca158); 
iteration (32'h48cc28c1,32'hcb0429e3,32'hbd45ba3b); 
iteration (32'h4a86cf35,32'hca670761,32'hbf95616a); 
iteration (32'hcb092594,32'h4aec05fb,32'hbf94c132); 
iteration (32'h4ac52380,32'hca9bbd6c,32'hbfa20661); 
iteration (32'hcac8a73c,32'h49cffa0d,32'hc076fc47); 
iteration (32'h4a0d7796,32'hc9966388,32'hbff0d025); 
iteration (32'h4a8076f6,32'h4a859f85,32'h3f761e07); 
iteration (32'h4a50a4c3,32'hcaf2cbb2,32'hbedbfd96); 
iteration (32'hcadb0f38,32'hc606b820,32'h44502238); 
iteration (32'hc985f59a,32'hcaa734a4,32'h3e4d192f); 
iteration (32'h48bf8a4b,32'h4a5a3690,32'h3de0b550); 
iteration (32'h4ab93e63,32'hc98b495a,32'hc0aa3bb4); 
iteration (32'hcb0a9aff,32'hcaed187f,32'h3f95a828); 
iteration (32'hcaa48bc9,32'h4b016155,32'hbf22ca6b); 
iteration (32'h4a14ff46,32'hcaaebc94,32'hbeda4a43); 
iteration (32'hca9d86a3,32'h4ac67449,32'hbf4b3426); 
iteration (32'hcb164aff,32'h49f98819,32'hc09a3059); 
iteration (32'h49bc6a07,32'h4abe448a,32'h3e7d818f); 
iteration (32'h4aa018fb,32'h4a88dc0b,32'h3f95bbd6); 
iteration (32'hcac4f8a4,32'h4a62b03d,32'hbfde70b7); 
iteration (32'h4996250a,32'h4a2e0bf7,32'h3edcd7dc); 
iteration (32'h48c31a2d,32'h4b035dc7,32'h3d3e1a49); 
iteration (32'hca29a023,32'h4ab2e736,32'hbef2b968); 
iteration (32'hcac5fc6d,32'hcadd656f,32'h3f64ee4c); 
iteration (32'h4b14b0a3,32'hcb1795dc,32'hbf7b1c36); 
iteration (32'h4ad73622,32'h4aa029fa,32'h3fabfe2f); 
iteration (32'hcb13d8ef,32'h4a8459fe,32'hc00efc84); 
iteration (32'h4ac3d9bb,32'h4b122548,32'h3f2b8891); 
iteration (32'h49b3e258,32'h49f4fdd5,32'h3f3bf793); 
iteration (32'hcb167228,32'h4aba4581,32'hbfcec378); 
iteration (32'h4b11df8f,32'hcaa39d27,32'hbfe43df4); 
iteration (32'hc88d2c7e,32'hcb126ab4,32'h3cf6d53c); 
iteration (32'hc83ffe0c,32'h4956c031,32'hbe64dec6); 
iteration (32'hc9c31572,32'hca97a3a6,32'h3ea4ac01); 
iteration (32'h4aac0aac,32'hca3ed4f2,32'hbfe6cb0a); 
iteration (32'h4a91c768,32'h4abb5d9e,32'h3f472df4); 
iteration (32'h4b0da0b7,32'hca33ff53,32'hc0496ddd); 
iteration (32'h4b1538b1,32'h4b0d408b,32'h3f8738be); 
iteration (32'hca28d0b9,32'hcaa65864,32'h3f01e692); 
iteration (32'h4a3c9601,32'hcb0d3a1d,32'hbeaaec65); 
iteration (32'h4b1452ef,32'hca6bd0b8,32'hc0210512); 
iteration (32'h49a15ff5,32'hca2484ac,32'hbefb1bd1); 
iteration (32'h4b0f295c,32'hcacee9c5,32'hbfb11fd5); 
iteration (32'hcaf752e8,32'h4b15b842,32'hbf5371da); 
iteration (32'h4a90a22d,32'hc94ae582,32'hc0b67cec); 
iteration (32'hc9ef341b,32'h4893a714,32'hc0cf5d8c); 
iteration (32'h49b57c3e,32'h4aba1c43,32'h3e79a359); 
iteration (32'hc9e327be,32'h4ae6a5c2,32'hbe7c1fb7); 
iteration (32'hca256424,32'hca6fef7f,32'h3f3076f4); 
iteration (32'h4ac3a434,32'h4ab26f2e,32'h3f8c57f3); 
iteration (32'h4a27be63,32'hc97d310a,32'hc0299ab6); 
iteration (32'h4b02992f,32'h4b0b889a,32'h3f6f9b50); 
iteration (32'hca376126,32'hca84f054,32'h3f309119); 
iteration (32'h4a1e621b,32'h4ac38f83,32'h3ecf552c); 
iteration (32'hcb0659ba,32'h4a0e5ebe,32'hc0719469); 
iteration (32'hca67e1d3,32'h479e85f9,32'hc23b3bd5); 
iteration (32'h4ac81193,32'hca8001a3,32'hbfc80f04); 
iteration (32'h4b06bf49,32'h4b1106ea,32'h3f6ddaae); 
iteration (32'h49f8f6d8,32'h4976f1b8,32'h40010c0b); 
iteration (32'hc92760e4,32'h4af7d25f,32'hbdace6ed); 
iteration (32'hcb0d911f,32'h488dc867,32'hc1ff9c2f); 
iteration (32'hca18b982,32'hc674c1c0,32'h431fbd7e); 
iteration (32'hcab5dc42,32'hc8018498,32'h4233ba9f); 
iteration (32'h4844b91d,32'hcabe01ac,32'hbd048652); 
iteration (32'h4afa58c8,32'h4a37f034,32'h402e3675); 
iteration (32'h4b14672d,32'h4a693949,32'h4022e554); 
iteration (32'hca3523bc,32'hcadb43a3,32'h3ed37ce9); 
iteration (32'hcaba3b2e,32'hcb14764e,32'h3f20903e); 
iteration (32'h4a56ded2,32'hc934dd6e,32'hc09810e5); 
iteration (32'h4a5d12f8,32'hcb06511f,32'hbed2ad53); 
iteration (32'h4603e0ad,32'h4b102645,32'h3a6a34bd); 
iteration (32'hcaf87b74,32'hca36e2a6,32'h402de927); 
iteration (32'hc96a4701,32'h4aa4db6f,32'hbe35e660); 
iteration (32'h4a4fd996,32'hca404221,32'hbf8a6165); 
iteration (32'h49d7c9aa,32'h4a65a1e9,32'h3ef090c9); 
iteration (32'h4adf05b8,32'hcae68d0e,32'hbf77a3eb); 
iteration (32'h4a8ef7ac,32'hc7f7e4d9,32'hc213a479); 
iteration (32'h4899cecb,32'h493db159,32'h3ecf9247); 
iteration (32'h4affe017,32'hcae3ce81,32'hbf8fc570); 
iteration (32'h4b0cb88d,32'h49d733da,32'h40a765fa); 
iteration (32'hcabad050,32'h4aa7d1df,32'hbf8e7cb2); 
iteration (32'h49cb2bc6,32'h4a7da01e,32'h3ecd12ba); 
iteration (32'hc894d504,32'hcb116123,32'h3d030a37); 
iteration (32'h4a474be2,32'h4af66dec,32'h3ecf095a); 
iteration (32'h4afc6bf4,32'hca9a8195,32'hbfd11e21); 
iteration (32'hcabba035,32'hcaceed16,32'h3f681f5c); 
iteration (32'hca24eb64,32'hcab9ccb5,32'h3ee33b12); 
iteration (32'hca1395bd,32'h4a7f58b9,32'hbf13f66c); 
iteration (32'h4a7c3ba0,32'h4a977427,32'h3f552c3c); 
iteration (32'hcb08670e,32'h4a72db06,32'hc00fc908); 
iteration (32'hcaccf2dd,32'h4b104392,32'hbf35d7e2); 
iteration (32'h4a7c5599,32'hcb106c28,32'hbedfa41d); 
iteration (32'hc92a9bce,32'hc91bb35f,32'h3f8c4174); 
iteration (32'hc8e244f2,32'h4a978752,32'hbdbf22a7); 
iteration (32'hca0fc340,32'h4a52a341,32'hbf2eb916); 
iteration (32'h4a0be60e,32'hc94adcbb,32'hc0308b32); 
iteration (32'hcb078f7b,32'hcaa02af1,32'h3fd8ab6b); 
iteration (32'hc888ff5b,32'h4aaba0a1,32'hbd4c5888); 
iteration (32'h4b04e906,32'hca8685cf,32'hbffcee76); 
iteration (32'h4a008566,32'h4a98519d,32'h3ed800e7); 
iteration (32'hcaba07ea,32'hc9c53589,32'h40717d4a);
$stop;
end

task iteration(input [31:0] operand_a,operand_b,Expected_result);
begin
@(negedge clk)
begin
	a_operand = operand_a;
	b_operand = operand_b;
end
@(posedge clk)
begin
if (Expected_result[31:20] == result[31:20])
    begin
	$display ("Iteration no. %1d: Test Passed ,Expected_result = %h, Result = %h",i,Expected_result,result);
	i=i+1'd1;
	end
else
	begin
	$display ("Iteration no. %1d: Test Failed ,Expected_result = %h, Result = %h",i,Expected_result,result);
	i=i+1'd1;
	end
end
end
endtask

endmodule

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

module Alu_multiplication(
    input [31:0] a_operand,
    input [31:0] b_operand,
    output Exception,
    output Overflow,
    output Underflow,
    output [31:0] result
    );
    wire sign,product_round,normalised,zero;
    wire [8:0] exponent,sum_exponent;
    wire [22:0] product_mantissa;
    wire [23:0] operand_a,operand_b;
    wire [47:0] product,product_normalised; //48 Bits
    
    //Exception flag sets 1 if either one of the exponent is 255.
    assign Exception = (&a_operand[30:23]) | (&b_operand[30:23]);
    
    assign sign = a_operand[31] ^ b_operand[31];
   
    //Assigining significand values according to Hidden Bit.
    //If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
    assign operand_a = (|a_operand[30:23]) ? {1'b1,a_operand[22:0]} : {1'b0,a_operand[22:0]};
    assign operand_b = (|b_operand[30:23]) ? {1'b1,b_operand[22:0]} : {1'b0,b_operand[22:0]};
    assign product = operand_a * operand_b;			//Calculating Product
    
    
    
    assign normalised = product[47] ? 1'b1 : 1'b0;
    assign product_normalised = normalised ? product : product << 1;	//Assigning Normalised value based on 48th bit
    assign product_round = |product_normalised[22:0];  //Ending 22 bits are OR'ed for rounding operation.
    //Final Mantissa.
    assign product_mantissa = product_normalised[46:24] + (product_normalised[23] & product_round); 
    assign zero = Exception ? 1'b0 : (product_mantissa == 23'd0) ? 1'b1 : 1'b0;
    assign sum_exponent = a_operand[30:23] + b_operand[30:23];
    assign exponent = sum_exponent - 8'd127 + normalised;
    //If overall exponent is greater than 255 then Overflow condition.
    assign Overflow = ((exponent[8] & !exponent[7]) & !zero) ; 
    //If sum of both exponents is less than 127 then Underflow condition.
    assign Underflow = ((exponent[8] & exponent[7]) & !zero) ? 1'b1 : 1'b0; 
    assign result = Exception ? 32'd0 : zero ? {sign,31'd0} : Overflow ? {sign,8'd255,23'd0} : Underflow ? {sign,31'd0} : {sign,exponent[7:0],product_mantissa};

endmodule

module Alu_addAndSubtract(
    input [31:0] a_operand,
    input [31:0] b_operand,
    input add_Sub_Diff,
    output exception,
    output [31:0] result
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

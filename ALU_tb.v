`timescale 0.1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 21:13:14
// Design Name: 
// Module Name: ALU_tb
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
module ALU_tb();
reg [31:0] a_operand,b_operand;
reg [3:0] Operation;
wire [31:0] ALU_Output;
wire Exception;
wire Underflow;
wire Overflow;

reg pass;
reg error; 

reg clk = 1'b0;
assign d0 = 1'd0;
ALU dut(a_operand,b_operand,Operation,ALU_Output,Exception,Overflow,Underflow);

always #5 clk = ~clk;
initial
begin
iteration (32'h4201_51EC,32'h4242_147B,32'h42A1_B333,3'b001,`__LINE__,1'b0);
iteration (32'h47f8_0c0d,32'h498d_a763,32'h499d_2824,3'b001,`__LINE__,1'b0); 
iteration (32'hcab371f3,32'hcb09ddfd,32'hcb6396f6,3'b001,`__LINE__,1'b0); 
iteration (32'hc99ebdbb,32'h49de65a1,32'h48fe9f98,3'b001,`__LINE__,1'b0); 
iteration (32'hcad82a68,32'h4b1745e7,32'h4a2cc2cc,3'b001,`__LINE__,1'b0); 
iteration (32'h4a622b9e,32'h498aea7d,32'h4a93d06e,3'b001,`__LINE__,1'b0); 
iteration (32'h4a6adfca,32'hcb0453b9,32'hca93378d,3'b001,`__LINE__,1'b0); 
iteration (32'hcaf582f7,32'h4ae80f7a,32'hc8d737d0,3'b001,`__LINE__,1'b0); 
iteration (32'h4a37500c,32'h4b0e6e57,32'h4b3c425a,3'b001,`__LINE__,1'b0); 
iteration (32'h4ade7792,32'h4a9f7203,32'h4b3ef4ca,3'b001,`__LINE__,1'b0); 
iteration (32'h4a5d8130,32'h48cc9394,32'h4a7713a2,3'b001,`__LINE__,1'b0); 
iteration (32'h4aaf6108,32'hc9a1ef9c,32'h4a86e521,3'b001,`__LINE__,1'b0); 
iteration (32'hca2cfa2e,32'hca8fcbdc,32'hcae648f3,3'b001,`__LINE__,1'b0); 
iteration (32'h4aa8028b,32'hc8ded2b2,32'h4a9a1560,3'b001,`__LINE__,1'b0); 
iteration (32'h4b058deb,32'h49dee3fd,32'h4b216a6b,3'b001,`__LINE__,1'b0); 
iteration (32'hc8de64bd,32'h4aed51d2,32'h4adf6b86,3'b001,`__LINE__,1'b0); 
iteration (32'hcb0134b8,32'h4afa0574,32'hc8863fc0,3'b001,`__LINE__,1'b0); 
iteration (32'h492119fa,32'hca76bc1b,32'hca4e759c,3'b001,`__LINE__,1'b0); 
iteration (32'hcb013798,32'h4ab393e6,32'hca1db694,3'b001,`__LINE__,1'b0); 
iteration (32'h49da4fcd,32'h4b15d893,32'h4b31228d,3'b001,`__LINE__,1'b0); 
iteration (32'hca09c5cf,32'hc906aab1,32'hca2b707b,3'b001,`__LINE__,1'b0); 
iteration (32'hca664bb2,32'hc966a74d,32'hca8ffac3,3'b001,`__LINE__,1'b0); 
iteration (32'h49dcc327,32'hca63afcf,32'hc9ea9c77,3'b001,`__LINE__,1'b0); 
iteration (32'hca34de59,32'h4aca18d3,32'h4a5f534d,3'b001,`__LINE__,1'b0); 
iteration (32'h4a0906c6,32'h4b01d53f,32'h4b2416f0,3'b001,`__LINE__,1'b0); 
iteration (32'h4b16b349,32'hca819943,32'h4aabcd4f,3'b001,`__LINE__,1'b0); 
iteration (32'hca85274b,32'hca968293,32'hcb0dd4ef,3'b001,`__LINE__,1'b0); 
iteration (32'hca156bbe,32'hca4140c1,32'hcaab5640,3'b001,`__LINE__,1'b0); 
iteration (32'hca98db21,32'h4b05967a,32'h4a64a3a6,3'b001,`__LINE__,1'b0); 
iteration (32'h4b0c7b1d,32'hca2b9e50,32'h4ac32712,3'b001,`__LINE__,1'b0); 
iteration (32'h4afcd35f,32'hcab6275d,32'h4a0d5804,3'b001,`__LINE__,1'b0); 
iteration (32'h4b0f919a,32'h4a57eca7,32'h4b458cc4,3'b001,`__LINE__,1'b0); 
iteration (32'hcad61725,32'hcaa53e43,32'hcb3daab4,3'b001,`__LINE__,1'b0); 
iteration (32'hca296bab,32'h49f41294,32'hc93d8984,3'b001,`__LINE__,1'b0); 
iteration (32'hca891c05,32'hca98186d,32'hcb109a39,3'b001,`__LINE__,1'b0); 
iteration (32'hc9de1985,32'h4a003938,32'h488963ac,3'b001,`__LINE__,1'b0); 
iteration (32'h481cd08b,32'h4a0ffcd9,32'h4a19c9e2,3'b001,`__LINE__,1'b0); 
iteration (32'hca5677f2,32'h4b183a87,32'h4ac53915,3'b001,`__LINE__,1'b0); 
iteration (32'h48f24976,32'hc91b633d,32'hc808fa08,3'b001,`__LINE__,1'b0); 
iteration (32'hcaa99663,32'h47ce5e4e,32'hcaa65cea,3'b001,`__LINE__,1'b0); 
iteration (32'hca899a65,32'hca99b97b,32'hcb11a9f0,3'b001,`__LINE__,1'b0); 
iteration (32'h4ae0865c,32'h4ac7fdea,32'h4b544223,3'b001,`__LINE__,1'b0); 
iteration (32'h4b081b5a,32'hca2ba31d,32'h4aba6526,3'b001,`__LINE__,1'b0); 
iteration (32'h4a203862,32'hca3e60fe,32'hc8f144e0,3'b001,`__LINE__,1'b0); 
iteration (32'h4b0cff6d,32'h4ac33f5c,32'h4b6e9f1b,3'b001,`__LINE__,1'b0); 
iteration (32'h4ac9fa4b,32'h47b6472b,32'h4accd368,3'b001,`__LINE__,1'b0); 
iteration (32'h4b0174d6,32'hc89ba54a,32'h4af92f57,3'b001,`__LINE__,1'b0); 
iteration (32'h4a8a57a5,32'hcb056d0f,32'hca808279,3'b001,`__LINE__,1'b0); 
iteration (32'h4b114cc8,32'h4a9f6cd8,32'h4b610334,3'b001,`__LINE__,1'b0); 
iteration (32'h4b0a2831,32'h4a9a49fb,32'h4b574d2e,3'b001,`__LINE__,1'b0);  
iteration (32'hca7f5506,32'hc988ddc4,32'hca3ae624,3'b010,`__LINE__,1'b0); 
iteration (32'hca8a4cf1,32'h4b022bcb,32'hcb475244,3'b010,`__LINE__,1'b0); 
iteration (32'hcb09ce8a,32'hcaa53c6c,32'hca5cc150,3'b010,`__LINE__,1'b0); 
iteration (32'hcaf05025,32'h4a82f39f,32'hcb39a1e2,3'b010,`__LINE__,1'b0); 
iteration (32'h49f5da2f,32'h4a7e84f4,32'hca0397dc,3'b010,`__LINE__,1'b0); 
iteration (32'h4a994ecf,32'h4af69d8e,32'hca3a9d7e,3'b010,`__LINE__,1'b0); 
iteration (32'hca947be4,32'hca6cdfc9,32'hc9705ffc,3'b010,`__LINE__,1'b0); 
iteration (32'h4b096e1b,32'h4a446458,32'h4ab0aa0a,3'b010,`__LINE__,1'b0); 
iteration (32'h4b13a5a0,32'hc978f477,32'h4b2334e7,3'b010,`__LINE__,1'b0); 
iteration (32'hc785be52,32'hcb111470,32'h4b1008f3,3'b010,`__LINE__,1'b0); 
iteration (32'h499bc06d,32'hcafa7201,32'h4b10b10e,3'b010,`__LINE__,1'b0); 
iteration (32'hc9785bac,32'hc995e55f,32'h484dbc48,3'b010,`__LINE__,1'b0); 
iteration (32'hcb169e9e,32'h4a782f8d,32'hcb54aa81,3'b010,`__LINE__,1'b0); 
iteration (32'h49dda86a,32'hcac7ffc9,32'h4aff69e4,3'b010,`__LINE__,1'b0); 
iteration (32'h4814c9e4,32'h498f3659,32'hc9793a39,3'b010,`__LINE__,1'b0); 
iteration (32'hcaa3515e,32'h4a4bb854,32'hcb0496c4,3'b010,`__LINE__,1'b0); 
iteration (32'h4b1055c6,32'h4ac1aead,32'h4a3df9be,3'b010,`__LINE__,1'b0); 
iteration (32'h4aa7fbfe,32'hcaf80b67,32'h4b5003b2,3'b010,`__LINE__,1'b0); 
iteration (32'h49d75b6e,32'h4a75947e,32'hca09e6c7,3'b010,`__LINE__,1'b0); 
iteration (32'h4ad0980d,32'h4ac17e72,32'h48f199b0,3'b010,`__LINE__,1'b0); 
iteration (32'h4ab1c5f0,32'hcb08bd28,32'h4b61a020,3'b010,`__LINE__,1'b0); 
iteration (32'hca810c2b,32'h4a5fe4ec,32'hcaf0fea1,3'b010,`__LINE__,1'b0); 
iteration (32'h4aa915d6,32'h4af24f02,32'hca127258,3'b010,`__LINE__,1'b0); 
iteration (32'h4a956528,32'h49fee3a3,32'h4a2b587e,3'b010,`__LINE__,1'b0); 
iteration (32'hca5a7d1b,32'h4a7236c8,32'hcae659f2,3'b010,`__LINE__,1'b0); 
iteration (32'h4a838dd0,32'h4a8cdf4a,32'hc89517a0,3'b010,`__LINE__,1'b0); 
iteration (32'hc94f1657,32'h4b09fb07,32'hcb16ec6c,3'b010,`__LINE__,1'b0); 
iteration (32'hcab897d8,32'hcaf60704,32'h49f5bcb0,3'b010,`__LINE__,1'b0); 
iteration (32'hc9d3d7e5,32'h4b0832b8,32'hcb22adb5,3'b010,`__LINE__,1'b0); 
iteration (32'h4b136a20,32'hca02d8e7,32'h4b34205a,3'b010,`__LINE__,1'b0); 
iteration (32'hc97ba357,32'h4aff8bcf,32'hcb0f801d,3'b010,`__LINE__,1'b0); 
iteration (32'hcaf592f1,32'h4ae74ffc,32'hcb6e7176,3'b010,`__LINE__,1'b0); 
iteration (32'hca9acce7,32'hca7fc904,32'hc9574328,3'b010,`__LINE__,1'b0); 
iteration (32'hcb0e3b12,32'h4ad09e00,32'hcb768a12,3'b010,`__LINE__,1'b0); 
iteration (32'hcad451fd,32'h4b0415c7,32'hcb6e3ec6,3'b010,`__LINE__,1'b0); 
iteration (32'hcabc553e,32'h4a037e6d,32'hcafe1474,3'b010,`__LINE__,1'b0); 
iteration (32'h4af6d4e0,32'h4a264623,32'h4aa3b1ce,3'b010,`__LINE__,1'b0); 
iteration (32'h4a3d9c6d,32'h4a4b436d,32'hc85a7000,3'b010,`__LINE__,1'b0); 
iteration (32'hcade2b37,32'h498982aa,32'hcb0045f1,3'b010,`__LINE__,1'b0); 
iteration (32'h4a19ddef,32'h492727cf,32'h49e027f6,3'b010,`__LINE__,1'b0); 
iteration (32'h4ac354b4,32'hc9e5f5c4,32'h4afcd225,3'b010,`__LINE__,1'b0); 
iteration (32'h4a73a1d1,32'hca69660e,32'h4aee83f0,3'b010,`__LINE__,1'b0); 
iteration (32'h4b1651ac,32'hca831187,32'h4b57da70,3'b010,`__LINE__,1'b0); 
iteration (32'hcaeeb35c,32'hcac1d045,32'hc9b38c5c,3'b010,`__LINE__,1'b0); 
iteration (32'hcb07aec7,32'h4ad74aca,32'hcb73542c,3'b010,`__LINE__,1'b0);
iteration (32'h4a08a583,32'hca3df775,32'hd4cacc90,3'b011,`__LINE__,1'b0); 
iteration (32'h4b05ae34,32'hcaad7b02,32'hd6352dea,3'b011,`__LINE__,1'b0); 
iteration (32'hca72844b,32'h4ad387a7,32'hd5c8638c,3'b011,`__LINE__,1'b0); 
iteration (32'hca3f88d6,32'hcb1673df,32'h55e121bd,3'b011,`__LINE__,1'b0); 
iteration (32'hcac3d5e6,32'hcadbd91c,32'h56282e11,3'b011,`__LINE__,1'b0); 
iteration (32'hca1a2cb9,32'h496bcc3f,32'hd40e020f,3'b011,`__LINE__,1'b0); 
iteration (32'h4ae96446,32'hc99fd9c2,32'hd511bbce,3'b011,`__LINE__,1'b0); 
iteration (32'h4ad22126,32'hca175e6d,32'hd5787e1e,3'b011,`__LINE__,1'b0); 
iteration (32'hc981015d,32'h4abf522a,32'hd4c0d2d8,3'b011,`__LINE__,1'b0); 
iteration (32'hcab52d22,32'h4ab2a39d,32'hd5fcda59,3'b011,`__LINE__,1'b0); 
iteration (32'h4a53013a,32'hca794560,32'hd54d7560,3'b011,`__LINE__,1'b0); 
iteration (32'h4a515963,32'hca89002f,32'hd56011f9,3'b011,`__LINE__,1'b0); 
iteration (32'hc93b1824,32'h4a4b53a5,32'hd4149946,3'b011,`__LINE__,1'b0); 
iteration (32'hcb0f5d6a,32'h4aa2d1d5,32'hd6365d3f,3'b011,`__LINE__,1'b0); 
iteration (32'hcab0d819,32'h484de7d9,32'hd38e3d35,3'b011,`__LINE__,1'b0); 
iteration (32'hca8aefb5,32'h4ad62fa4,32'hd5e87c79,3'b011,`__LINE__,1'b0); 
iteration (32'h49ac9057,32'hca7958a6,32'hd4a81426,3'b011,`__LINE__,1'b0); 
iteration (32'hcb1810e3,32'hca3ecbe5,32'h55e2ab4c,3'b011,`__LINE__,1'b0); 
iteration (32'hcac7e5d9,32'h4ad96f30,32'hd629c8a7,3'b011,`__LINE__,1'b0); 
iteration (32'hca834ab6,32'hcab55c51,32'h55ba0656,3'b011,`__LINE__,1'b0); 
iteration (32'hca9774fd,32'hc8e015cc,32'h54049343,3'b011,`__LINE__,1'b0); 
iteration (32'h4b0bc46a,32'hca39bc02,32'hd5cacf2c,3'b011,`__LINE__,1'b0); 
iteration (32'h4a7d1a7c,32'h4acd86c1,32'h55cb3370,3'b011,`__LINE__,1'b0); 
iteration (32'h4a7d7d77,32'h49b32f7c,32'h54b16dbf,3'b011,`__LINE__,1'b0); 
iteration (32'h4abfe899,32'hc914636c,32'hd45e7a01,3'b011,`__LINE__,1'b0); 
iteration (32'hcae39404,32'h4af0e877,32'hd656296c,3'b011,`__LINE__,1'b0); 
iteration (32'hcad72767,32'hca38cfb7,32'h559b52e5,3'b011,`__LINE__,1'b0); 
iteration (32'h4a71917a,32'hca0703ce,32'hd4fece9d,3'b011,`__LINE__,1'b0); 
iteration (32'hcad716ad,32'h4ae53f89,32'hd6409caa,3'b011,`__LINE__,1'b0); 
iteration (32'hcaac4b06,32'hcac38aa1,32'h56039a72,3'b011,`__LINE__,1'b0); 
iteration (32'hc8ecb80f,32'h4a1184e8,32'hd3868f26,3'b011,`__LINE__,1'b0); 
iteration (32'hcaf2e950,32'hcac974c7,32'h563f27fe,3'b011,`__LINE__,1'b0); 
iteration (32'hca88e5ce,32'hca48d1ce,32'h5556c775,3'b011,`__LINE__,1'b0); 
iteration (32'hc9b7d155,32'hca4c748a,32'h5492ce7e,3'b011,`__LINE__,1'b0); 
iteration (32'hcaed7226,32'hca89e28c,32'h55ffc86e,3'b011,`__LINE__,1'b0); 
iteration (32'h4a4fccca,32'h49a53f1c,32'h54862238,3'b011,`__LINE__,1'b0); 
iteration (32'h4b03cb4a,32'hc8916fd8,32'hd415bf73,3'b011,`__LINE__,1'b0); 
iteration (32'h480a6ae3,32'h4b16e5db,32'h53a32dd2,3'b011,`__LINE__,1'b0); 
iteration (32'h4ab9e5ae,32'hcb10fc01,32'hd6529061,3'b011,`__LINE__,1'b0); 
iteration (32'hc9bb2f68,32'hcad9ea6a,32'h551f5696,3'b011,`__LINE__,1'b0);
iteration (32'hc688eca8,32'h4a1fc55a,32'hbbdb64ab,3'b100,`__LINE__,1'b0); 
iteration (32'h4a6289d4,32'h49caa003,32'h400f1b34,3'b100,`__LINE__,1'b0); 
iteration (32'hcab445e3,32'hcaeabc8a,32'h3f449a5c,3'b100,`__LINE__,1'b0); 
iteration (32'hcaa5c4e9,32'h4a872f8f,32'hbf9cf52f,3'b100,`__LINE__,1'b0); 
iteration (32'h4a860058,32'hcb0f8694,32'hbeef0309,3'b100,`__LINE__,1'b0); 
iteration (32'hca9ca79f,32'hcaa2b3db,32'h3f767bf9,3'b100,`__LINE__,1'b0); 
iteration (32'hca9307ae,32'hcb10c0a8,32'h3f02038c,3'b100,`__LINE__,1'b0); 
iteration (32'h4ac877dc,32'h4b119008,32'h3f3047f2,3'b100,`__LINE__,1'b0); 
iteration (32'hca5780a0,32'hcaab75bf,32'h3f20e109,3'b100,`__LINE__,1'b0); 
iteration (32'h4b161e31,32'hca897ff1,32'hc00bbf13,3'b100,`__LINE__,1'b0); 
iteration (32'hcac930a7,32'h4a2ca88b,32'hc01526e4,3'b100,`__LINE__,1'b0); 
iteration (32'h4a5e318e,32'h4ad2f786,32'h3f06cfc3,3'b100,`__LINE__,1'b0); 
iteration (32'hcabdadee,32'h4890e29a,32'hc1a792e8,3'b100,`__LINE__,1'b0); 
iteration (32'h4a5c3f95,32'h4a40be6e,32'h3f9243fc,3'b100,`__LINE__,1'b0); 
iteration (32'h4ab818ea,32'h4aa630d7,32'h3f8dcaa6,3'b100,`__LINE__,1'b0); 
iteration (32'hc91bfc27,32'h4a8b8b79,32'hbe0f147d,3'b100,`__LINE__,1'b0); 
iteration (32'h4a8cbd33,32'h4af1f78a,32'h3f14e6bd,3'b100,`__LINE__,1'b0); 
iteration (32'hcad0f85c,32'hca9513b2,32'h3fb36ce3,3'b100,`__LINE__,1'b0); 
iteration (32'hcae2ac33,32'hca25574c,32'h402f7af9,3'b100,`__LINE__,1'b0); 
iteration (32'h4a04f115,32'h4af87dbd,32'h3e88f57c,3'b100,`__LINE__,1'b0); 
iteration (32'h493ebe02,32'hcab93f58,32'hbe03cbf6,3'b100,`__LINE__,1'b0); 
iteration (32'hcac495e2,32'h4a8b76e1,32'hbfb46cf3,3'b100,`__LINE__,1'b0); 
iteration (32'h49ef2a43,32'h4a6e92b9,32'h3f00514e,3'b100,`__LINE__,1'b0); 
iteration (32'h4a92e0f4,32'h49afa489,32'h4056138c,3'b100,`__LINE__,1'b0); 
iteration (32'h4aa09cf9,32'hcaf36965,32'hbf28eb62,3'b100,`__LINE__,1'b0); 
iteration (32'h4b0f37d5,32'hc97111e2,32'hc1181687,3'b100,`__LINE__,1'b0); 
iteration (32'h4b08b50d,32'h4a955d81,32'h3fea4e20,3'b100,`__LINE__,1'b0); 
iteration (32'hcb1468ae,32'h4aeccd6b,32'hbfa070c0,3'b100,`__LINE__,1'b0); 
iteration (32'h4a7b8852,32'h4a475ba7,32'h3fa17fcc,3'b100,`__LINE__,1'b0); 
iteration (32'hcb113c84,32'hca3fd9ed,32'h4041cc74,3'b100,`__LINE__,1'b0); 
iteration (32'h4aa9952f,32'h4b099e4d,32'h3f1dbaf8,3'b100,`__LINE__,1'b0); 
iteration (32'h4ad61754,32'hc99f22ac,32'hc0ac3412,3'b100,`__LINE__,1'b0); 
iteration (32'hcb186716,32'h4a8c5d88,32'hc00afa17,3'b100,`__LINE__,1'b0); 
iteration (32'hcab448e3,32'h4af133ad,32'hbf3f5872,3'b100,`__LINE__,1'b0); 
iteration (32'hca94fbd9,32'h4aa6db83,32'hbf6493d1,3'b100,`__LINE__,1'b0); 
iteration (32'h4b031bb0,32'h47d84e19,32'h429b2b15,3'b100,`__LINE__,1'b0); 
iteration (32'hcb0c51bc,32'h4aa51816,32'hbfd9955a,3'b100,`__LINE__,1'b0); 
iteration (32'hca12a718,32'h4b00541f,32'hbe9246f6,3'b100,`__LINE__,1'b0); 
iteration (32'hca1e1328,32'hcadcd480,32'h3eb7400d,3'b100,`__LINE__,1'b0); 
iteration (32'hca389a0e,32'h4aba2332,32'hbefde34e,3'b100,`__LINE__,1'b0); 
iteration (32'h4adf0d14,32'h48bd38b5,32'h4196e25c,3'b100,`__LINE__,1'b0); 
iteration (32'hcae6b80a,32'h4b053c08,32'hbf5da78a,3'b100,`__LINE__,1'b0);
iteration (32'h4aa2b0ae,32'hc91d8b2d,32'hcbbfbbaf,3'b101,`__LINE__,1'b0); 
iteration (32'hcab82474,32'h4af8a6e8,32'hcaf8a6fc,3'b101,`__LINE__,1'b0); 
iteration (32'h4acd0668,32'hcab785c0,32'hcaff87e8,3'b101,`__LINE__,1'b0); 
iteration (32'h4a9c87e9,32'hca06171f,32'hca9e97ff,3'b101,`__LINE__,1'b0); 
iteration (32'h4b157d63,32'h4ac76853,32'h4bd77d73,3'b101,`__LINE__,1'b0); 
iteration (32'hc966108c,32'h4a9d1d61,32'hcbff1ded,3'b101,`__LINE__,1'b0); 
iteration (32'hca0d45b9,32'hca2e388f,32'hca2f7dbf,3'b101,`__LINE__,1'b0); 
iteration (32'hca52ade3,32'hcb11deff,32'hcb53ffff,3'b101,`__LINE__,1'b0); 
iteration (32'hcad5b8ed,32'hcae8ec10,32'hcafdfcfd,3'b101,`__LINE__,1'b0); 
iteration (32'hcb153372,32'h4b03b247,32'hcb17b377,3'b101,`__LINE__,1'b0); 
iteration (32'hc9a52c8a,32'hcb05db68,32'hcba5ffea,3'b101,`__LINE__,1'b0); 
iteration (32'h4b0738be,32'h497209fb,32'h4b7739ff,3'b101,`__LINE__,1'b0); 
iteration (32'h4a4a2b90,32'hcb0b886d,32'hcb4babfd,3'b101,`__LINE__,1'b0); 
iteration (32'hcab7a671,32'hca8f981a,32'hcabfbe7b,3'b101,`__LINE__,1'b0); 
iteration (32'h4af85fd2,32'hc7711e59,32'hcff95fdb,3'b101,`__LINE__,1'b0); 
iteration (32'h498b3071,32'h4b009609,32'h4b8bb679,3'b101,`__LINE__,1'b0); 
iteration (32'hcaea51fd,32'h48cab7fb,32'hcaeaf7ff,3'b101,`__LINE__,1'b0); 
iteration (32'hca5a4bbb,32'hcac01c4b,32'hcada5ffb,3'b101,`__LINE__,1'b0); 
iteration (32'hc9e05b11,32'h4b075f36,32'hcbe75f37,3'b101,`__LINE__,1'b0); 
iteration (32'h49b81fdc,32'hcade6843,32'hcbfe7fdf,3'b101,`__LINE__,1'b0); 
iteration (32'hca45af99,32'h497d33d4,32'hcb7dbfdd,3'b101,`__LINE__,1'b0); 
iteration (32'h492b8b02,32'h4919ffc8,32'h493bffca,3'b101,`__LINE__,1'b0); 
iteration (32'h4aad40c3,32'hc974a754,32'hcbfde7d7,3'b101,`__LINE__,1'b0); 
iteration (32'h4a82ee8f,32'hca8bced6,32'hca8beedf,3'b101,`__LINE__,1'b0); 
iteration (32'h4a8e87c0,32'h4a09f242,32'h4a8ff7c2,3'b101,`__LINE__,1'b0); 
iteration (32'hca9dd30a,32'hcae1ba1d,32'hcafdfb1f,3'b101,`__LINE__,1'b0); 
iteration (32'hc9909fe3,32'hcac46f87,32'hcbd4ffe7,3'b101,`__LINE__,1'b0); 
iteration (32'h4af3210f,32'hcade5dfa,32'hcaff7dff,3'b101,`__LINE__,1'b0); 
iteration (32'h49a30a63,32'h4b00a2bf,32'h4ba3aaff,3'b101,`__LINE__,1'b0); 
iteration (32'hca753d29,32'hc9806c3d,32'hcbf57d3d,3'b101,`__LINE__,1'b0); 
iteration (32'hca1580c2,32'hcae74c78,32'hcaf7ccfa,3'b101,`__LINE__,1'b0); 
iteration (32'h4a91b113,32'h4a0fc9a9,32'h4a9ff9bb,3'b101,`__LINE__,1'b0); 
iteration (32'h4a9d62bd,32'hcb113d9e,32'hcb9d7fbf,3'b101,`__LINE__,1'b0); 
iteration (32'hcadfb553,32'h4b041965,32'hcbdfbd77,3'b101,`__LINE__,1'b0); 
iteration (32'hcaf1d099,32'hca699d32,32'hcaf9ddbb,3'b101,`__LINE__,1'b0); 
iteration (32'h4a9623c2,32'hcaba5705,32'hcabe77c7,3'b101,`__LINE__,1'b0); 
iteration (32'hca9d53e6,32'hca4bf31f,32'hcadff3ff,3'b101,`__LINE__,1'b0); 
iteration (32'h4a9f668b,32'h4a8efcfa,32'h4a9ffefb,3'b101,`__LINE__,1'b0); 
iteration (32'hca383683,32'h4a3bf72d,32'hca3bf7af,3'b101,`__LINE__,1'b0); 
iteration (32'h4a022e37,32'h4a459257,32'h4a47be77,3'b101,`__LINE__,1'b0); 
iteration (32'h4a7a76c4,32'hca367266,32'hca7e76e6,3'b101,`__LINE__,1'b0); 
iteration (32'hcb0d5f92,32'hcb02efad,32'hcb0fffbf,3'b101,`__LINE__,1'b0); 
iteration (32'hcaedd191,32'hca956751,32'hcafdf7d1,3'b101,`__LINE__,1'b0); 
iteration (32'hca088689,32'hcb0cfdcc,32'hcb0cffcd,3'b101,`__LINE__,1'b0); 
iteration (32'h49b16101,32'h4acc25c0,32'h4bfd65c1,3'b101,`__LINE__,1'b0); 
iteration (32'h4abb8bb8,32'hca57c843,32'hcaffcbfb,3'b101,`__LINE__,1'b0); 
iteration (32'h4ac3d2e9,32'h4a917798,32'h4ad3f7f9,3'b101,`__LINE__,1'b0); 
iteration (32'h4a912465,32'hc9957e1d,32'hcb957e7d,3'b101,`__LINE__,1'b0); 
iteration (32'h4a7c62e1,32'h4a994784,32'h4afd67e5,3'b101,`__LINE__,1'b0); 
iteration (32'hca6a9737,32'hcae819f6,32'hcaea9ff7,3'b101,`__LINE__,1'b0); 
iteration (32'h4a7f35c0,32'hcb051674,32'h4a051440,3'b110,`__LINE__,1'b0); 
iteration (32'h4b0dafef,32'h4a56d076,32'h4a048066,3'b110,`__LINE__,1'b0); 
iteration (32'h4aa00ffa,32'hca06bd26,32'h4a000d22,3'b110,`__LINE__,1'b0); 
iteration (32'h4a70d38b,32'h4b07d198,32'h4a00d188,3'b110,`__LINE__,1'b0); 
iteration (32'hca76b4f9,32'hca9793b5,32'hca1690b1,3'b110,`__LINE__,1'b0); 
iteration (32'hc938b0de,32'hcb16dab9,32'hc9109098,3'b110,`__LINE__,1'b0); 
iteration (32'h4a1d91c3,32'h491d853d,32'h481d8101,3'b110,`__LINE__,1'b0); 
iteration (32'h49dfb15b,32'hcb10f58d,32'h4910b109,3'b110,`__LINE__,1'b0); 
iteration (32'hcaec126b,32'hcb14ba64,32'hca041260,3'b110,`__LINE__,1'b0); 
iteration (32'hc96d4d18,32'hcb17839b,32'hc9050118,3'b110,`__LINE__,1'b0); 
iteration (32'h4affb7a5,32'hca77bd03,32'h4a77b501,3'b110,`__LINE__,1'b0); 
iteration (32'hca9ab620,32'hcaaa6aa6,32'hca8a2220,3'b110,`__LINE__,1'b0); 
iteration (32'h4b00ec2c,32'hcaf5c939,32'h4a00c828,3'b110,`__LINE__,1'b0); 
iteration (32'h4a0dc30d,32'hcab54347,32'h4a054305,3'b110,`__LINE__,1'b0); 
iteration (32'hcb027308,32'h4b0ed4f5,32'h4b025000,3'b110,`__LINE__,1'b0); 
iteration (32'hcab0ea50,32'hcb0ceb1c,32'hca00ea10,3'b110,`__LINE__,1'b0); 
iteration (32'hcb022c64,32'hcaa0b946,32'hca002844,3'b110,`__LINE__,1'b0); 
iteration (32'hcb17cd89,32'h498502bb,32'h49050089,3'b110,`__LINE__,1'b0); 
iteration (32'hcb0adeef,32'h4b0aeb8c,32'h4b0aca8c,3'b110,`__LINE__,1'b0); 
iteration (32'h4ad60619,32'hcb116259,32'h4a100219,3'b110,`__LINE__,1'b0); 
iteration (32'h4a09c970,32'h4aa16f14,32'h4a014910,3'b110,`__LINE__,1'b0); 
iteration (32'hcad92f32,32'hcac21e25,32'hcac00e20,3'b110,`__LINE__,1'b0); 
iteration (32'hc9a4dd66,32'hca7e0077,32'hc8240066,3'b110,`__LINE__,1'b0); 
iteration (32'hc99cadbf,32'h496ab5e1,32'h4908a5a1,3'b110,`__LINE__,1'b0); 
iteration (32'h4ac1c58b,32'h4af29af0,32'h4ac08080,3'b110,`__LINE__,1'b0); 
iteration (32'hcae3b383,32'h4aac01b7,32'h4aa00183,3'b110,`__LINE__,1'b0); 
iteration (32'h4a5b5b85,32'h4aa83094,32'h4a081084,3'b110,`__LINE__,1'b0); 
iteration (32'hcb0f333c,32'hca5864b3,32'hca082030,3'b110,`__LINE__,1'b0); 
iteration (32'h4b0c24bb,32'h4acdcab1,32'h4a0c00b1,3'b110,`__LINE__,1'b0); 
iteration (32'h4a308940,32'h4b090b5b,32'h4a000940,3'b110,`__LINE__,1'b0); 
iteration (32'hcad64673,32'hc78bd65b,32'hc2824653,3'b110,`__LINE__,1'b0); 
iteration (32'h4aa4829e,32'hcae4d1e2,32'h4aa48082,3'b110,`__LINE__,1'b0); 
iteration (32'h4634ce7f,32'h4af8905c,32'h4230805c,3'b110,`__LINE__,1'b0); 
iteration (32'h4a08094e,32'h4af4cffd,32'h4a00094c,3'b110,`__LINE__,1'b0); 
iteration (32'hca8b0553,32'h4a701ae8,32'h4a000040,3'b110,`__LINE__,1'b0); 
iteration (32'hcb0fc167,32'h4ab80c87,32'h4a080007,3'b110,`__LINE__,1'b0); 
iteration (32'hc9b133f8,32'h4aa72c22,32'h48a12020,3'b110,`__LINE__,1'b0); 
iteration (32'h4a63b477,32'hcaec5fc5,32'h4a601445,3'b110,`__LINE__,1'b0); 
iteration (32'hc9573d76,32'h49854aa6,32'h49050826,3'b110,`__LINE__,1'b0); 
iteration (32'h484e516a,32'hca946b8a,32'h4804410a,3'b110,`__LINE__,1'b0); 
iteration (32'h4a8986a1,32'hca5d81d9,32'h4a098081,3'b110,`__LINE__,1'b0); 
iteration (32'h48906188,32'hcae5105a,32'h48800008,3'b110,`__LINE__,1'b0); 
iteration (32'hcb10c435,32'h4b020e16,32'h4b000414,3'b110,`__LINE__,1'b0); 
iteration (32'h4a8fe1e6,32'hcad5c1da,32'h4a85c1c2,3'b110,`__LINE__,1'b0); 
iteration (32'hcaf0a5e5,32'hc9c2e523,32'hc8c0a521,3'b110,`__LINE__,1'b0); 
iteration (32'hc974ff28,32'h4ab0b5d0,32'h4830b500,3'b110,`__LINE__,1'b0); 
iteration (32'h496a4392,32'h4ab8e2b7,32'h48284292,3'b110,`__LINE__,1'b0); 
iteration (32'hca2e0684,32'h48b487f6,32'h48240684,3'b110,`__LINE__,1'b0); 
iteration (32'hcab79030,32'hc99a9c7b,32'hc8929030,3'b110,`__LINE__,1'b0); 
iteration (32'hcb0aa192,32'hcad62d2a,32'hca022102,3'b110,`__LINE__,1'b0);
iteration (32'hca918138,32'h4a2923c7,32'h356e7ec7,3'b111,`__LINE__,1'b0); 
iteration (32'hc9041afc,32'h4a609210,32'h36fbe503,3'b111,`__LINE__,1'b0); 
iteration (32'hcad055f2,32'hcabde564,32'h352faa0d,3'b111,`__LINE__,1'b0); 
iteration (32'hca1c9ebc,32'hc8eb6d7e,32'h35e36143,3'b111,`__LINE__,1'b0); 
iteration (32'hc987d328,32'hcac28b9a,32'h36782cd7,3'b111,`__LINE__,1'b0); 
iteration (32'h4a150032,32'h4a8068c4,32'hb5eaffcd,3'b111,`__LINE__,1'b0); 
iteration (32'h4b122e3f,32'h4a518647,32'hb4edd1c0,3'b111,`__LINE__,1'b0); 
iteration (32'h49e883af,32'h486b52aa,32'hb6177c50,3'b111,`__LINE__,1'b0); 
iteration (32'h49bd16bd,32'hcaf6e120,32'hb642e942,3'b111,`__LINE__,1'b0); 
iteration (32'hc8de534d,32'h4a8fc2d4,32'h3721acb2,3'b111,`__LINE__,1'b0); 
iteration (32'hcb1567dc,32'hca234cdb,32'h34ea9823,3'b111,`__LINE__,1'b0); 
iteration (32'hcadfedf5,32'h4b13c209,32'h3520120a,3'b111,`__LINE__,1'b0); 
iteration (32'h49edbac9,32'h47383316,32'hb6124536,3'b111,`__LINE__,1'b0); 
iteration (32'hca7d01d0,32'h4ab72741,32'h3582fe2f,3'b111,`__LINE__,1'b0); 
iteration (32'h4b05d9c7,32'hcb100839,32'hb4fa2638,3'b111,`__LINE__,1'b0); 
iteration (32'h4af4a5a0,32'hcadc2323,32'hb50b5a5f,3'b111,`__LINE__,1'b0); 
iteration (32'h4aed3a69,32'hcaf927f1,32'hb512c596,3'b111,`__LINE__,1'b0); 
iteration (32'h4afa3b89,32'h490adbf0,32'hb505c476,3'b111,`__LINE__,1'b0); 
iteration (32'h4ad57844,32'h4a05e216,32'hb52a87bb,3'b111,`__LINE__,1'b0); 
iteration (32'h4b0d6b94,32'hcab77109,32'hb4f2946b,3'b111,`__LINE__,1'b0); 
iteration (32'h4abaa97c,32'h4b0d4e82,32'hb5455683,3'b111,`__LINE__,1'b0); 
iteration (32'hca4b392c,32'hcaf299b2,32'h35b4c6d3,3'b111,`__LINE__,1'b0); 
iteration (32'hcb160049,32'h4ad68b0a,32'h34e9ffb6,3'b111,`__LINE__,1'b0); 
iteration (32'hc8e97169,32'hcb0f9227,32'h37168e96,3'b111,`__LINE__,1'b0); 
iteration (32'hca421e0f,32'h4ad1216d,32'h35bde1f0,3'b111,`__LINE__,1'b0); 
iteration (32'h499759be,32'h49cfd58b,32'hb668a641,3'b111,`__LINE__,1'b0); 
iteration (32'hcb1819d0,32'hca4238fd,32'h34e7e62f,3'b111,`__LINE__,1'b0); 
iteration (32'hca16c9de,32'hc99c3247,32'h35e93621,3'b111,`__LINE__,1'b0); 
iteration (32'h4abb9955,32'hcab3de61,32'hb54466aa,3'b111,`__LINE__,1'b0); 
iteration (32'h4aff65cd,32'h48d0da14,32'hb5009a32,3'b111,`__LINE__,1'b0); 
iteration (32'h4a90ce5d,32'hca9e086c,32'hb56f31a2,3'b111,`__LINE__,1'b0); 
iteration (32'hca517584,32'h4aa052ba,32'h35ae8a7b,3'b111,`__LINE__,1'b0); 
iteration (32'hc9745a19,32'h49f6a8bb,32'h368ba5e6,3'b111,`__LINE__,1'b0); 
iteration (32'h4a363bd2,32'h49de79ab,32'hb5c9c42d,3'b111,`__LINE__,1'b0); 
iteration (32'h4ae66840,32'hcaa660df,32'hb51997bf,3'b111,`__LINE__,1'b0); 
iteration (32'h4a7c9565,32'h498ce4a0,32'hb5836a9a,3'b111,`__LINE__,1'b0); 
iteration (32'h4a40805d,32'h4a5f8d6d,32'hb5bf7fa2,3'b111,`__LINE__,1'b0); 
iteration (32'h4adc6860,32'h4b098f57,32'hb523979f,3'b111,`__LINE__,1'b0); 
iteration (32'h4a94f236,32'h4b17b513,32'hb56b0dc9,3'b111,`__LINE__,1'b0); 
iteration (32'hca9eeec4,32'hcaaca077,32'h3561113b,3'b111,`__LINE__,1'b0); 
iteration (32'hca0d4523,32'h4a587209,32'h35f2badc,3'b111,`__LINE__,1'b0); 
iteration (32'hcaedd182,32'hcaf9b227,32'h35122e7d,3'b111,`__LINE__,1'b0); 
iteration (32'h44adea4f,32'hca8acb25,32'hbb5215b0,3'b111,`__LINE__,1'b0); 
iteration (32'hcaf44719,32'h4a869c0e,32'h350bb8e6,3'b111,`__LINE__,1'b0); 
iteration (32'hca59cb3f,32'h4a962a28,32'h35a634c0,3'b111,`__LINE__,1'b0); 
iteration (32'h4b1762fc,32'h4aecfa40,32'hb4e89d03,3'b111,`__LINE__,1'b0); 
iteration (32'h4a36ba46,32'hcb119fae,32'hb5c945b9,3'b111,`__LINE__,1'b0); 
iteration (32'hc9f7f41e,32'hca04e21f,32'h36080be1,3'b111,`__LINE__,1'b0); 
iteration (32'h4a3e2933,32'h4aab2f84,32'hb5c1d6cc,3'b111,`__LINE__,1'b0); 
iteration (32'h4a8a8ae8,32'h4ae6d529,32'hb5757517,3'b111,`__LINE__,1'b0);     
$stop;
end
task iteration(input [31:0] operand_a,operand_b,expected_value,input [3:0] operation,input integer line_num,input expected_exception);
begin
	@(negedge clk)
	begin
		a_operand = operand_a;
		b_operand = operand_b;
		Operation = operation;
	end

	
	@(posedge clk)
	begin
		if ((expected_value[31:15] == ALU_Output[31:15]))
		    begin
			$display ("Test Passed - Line Number -> %d", line_num);
			pass = 1'b1;
			error = 1'b0;
			end
		else 
		    begin
			$display ("Test Failed Expected Result -> %h and Expected_Exception -> %b and Obtained Result -> %h and Obtained Exception -> %b of corresponding Operation -> %d and %d",expected_value,expected_exception,ALU_Output,Exception,operation,line_num);
			error = 1'b1;
			pass = 1'b0;
			end
	end
end
endtask
endmodule

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
    
    assign NOT_Output = (operation == 3'd7) ? ~operand_a : 32'dz;

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
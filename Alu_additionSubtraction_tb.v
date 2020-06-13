`timescale 0.1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 16:53:25
// Design Name: 
// Module Name: Alu_addition_tb
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
module Alu_addition_tb();

reg [31:0] a_operand,b_operand;
reg clk=1'b0,
	reset=1'b1;
reg AddBar_Sub;

wire [31:0] result;
wire Exception;

Alu_addAndSubtract dut(a_operand,b_operand,AddBar_Sub,Exception,result);

always #5 clk = ~clk;

//Reset Block
initial
begin

//Reset Operation
//perform_reset; 

////////////////////////////////////////////////////////////////////
//
//Stimulus Block
//Addition
//If any case is failed:
//Check result with expected value and result will be similar to the expected value.
//The output won't be exactly as expected value. It will have some tolerance.
//
////////////////////////////////////////////////////////////////////

AddBar_Sub = 1'b0;
iteration (32'h49171089,32'hc9e3e24d,32'hc9985a08); 
iteration (32'hcaf38f8d,32'hca78bfe3,32'hcb37f7bf); 
iteration (32'hcabff32b,32'hca7ab0cb,32'hcb1ea5c8); 
iteration (32'h486691e1,32'h4afdb0e1,32'h4b0272b8); 
iteration (32'h4a06daf8,32'h4b170bbe,32'h4b38c27c); 
iteration (32'h4ae16fd8,32'h4b17fff5,32'h4b845bf0); 
iteration (32'hca84560a,32'h4a3dbd3a,32'hc995ddb4); 
iteration (32'hcb16a5e1,32'hca009455,32'hcb36caf6); 
iteration (32'h49b7358f,32'hcb011782,32'hcad461a0); 
iteration (32'h4a84aeb5,32'h4ad2ecec,32'h4b2bcdd0); 
iteration (32'hcad206ed,32'h4a9eeebf,32'hc9cc60b8); 
iteration (32'h4afdd128,32'hcadd9d0a,32'h4980d078); 
iteration (32'h4910b713,32'hca9257ba,32'hca8040d8); 
iteration (32'hcadca524,32'hca4ca7bb,32'hcb217c81); 
iteration (32'hcb0b65a1,32'hc85a39bc,32'hcb0ece88); 
iteration (32'h4a873373,32'hcac9be92,32'hca05163e); 
iteration (32'hcaae5dc3,32'hcb143a55,32'hcb6b6936); 
iteration (32'hcb04cfba,32'h4af9c43b,32'hc8fdb390); 
iteration (32'hcadb8b5e,32'h4a2893b5,32'hca874184); 
iteration (32'hc9e562a8,32'h4b0d23da,32'h4ae0ef0a); 
iteration (32'hca63b385,32'h4ab892aa,32'h4a0d71cf); 
iteration (32'h4b0aa646,32'h4b001d95,32'h4b8561ee); 
iteration (32'hcaff1703,32'hcadb0198,32'hcb6d0c4e); 
iteration (32'hca1782cf,32'h4b05cbab,32'h4abfd5ee); 
iteration (32'h4ad09c75,32'h4985ff57,32'h4af21c4b); 
iteration (32'hca48aed5,32'hcac82dbc,32'hcb164293); 
iteration (32'h4a834803,32'hcaf1b6d9,32'hca5cddac); 
iteration (32'hcb0de6f7,32'h4a51a72d,32'hcab2fa58); 
iteration (32'h4ad97703,32'hca9cc5a1,32'h49f2c588); 
iteration (32'h4abda1b9,32'hca39e398,32'h4a415fda); 
iteration (32'h4a3ad47f,32'hcaf12b37,32'hca93c0f8); 
iteration (32'h4afcb5d4,32'hcabcfba6,32'h49fee8b8); 
iteration (32'hcaa4aa7f,32'h4a798217,32'hc99fa5ce); 
iteration (32'h4ac3c956,32'hca08f28a,32'h4a7ea022); 
iteration (32'h491610c6,32'hcac610d0,32'hcab34eb7); 
iteration (32'hcab2ee72,32'hca57d6bf,32'hcb0f6ce9); 
iteration (32'h4afc9ba8,32'hc75aa839,32'h4afae658); 
iteration (32'hca4dae32,32'h49e42788,32'hc9b734dc); 
iteration (32'h49c2a275,32'hc99cbfa9,32'h48978b30); 
iteration (32'hca092cd5,32'h4ac65027,32'h4a81b9bc); 
iteration (32'hcac8d853,32'h4af95327,32'h49c1eb50); 
iteration (32'h480a408b,32'hcb12c349,32'hcb109a47); 
iteration (32'h4aba5efe,32'h4a06f5bd,32'h4afdd9dc); 
iteration (32'hc9273234,32'hcb08ab02,32'hcb131e25); 
iteration (32'hca955412,32'h4ac725ea,32'h49c74760); 
iteration (32'hca1c27d6,32'hcad604d8,32'hcb120c62); 
iteration (32'hc9b61635,32'h49e04efa,32'h48a8e314); 
iteration (32'h4ac1f548,32'h499e4b26,32'h4ae98812); 
iteration (32'hcb099bdf,32'hcabe8815,32'hcb68dfea); 
iteration (32'hcabe02a2,32'h4a9bf2d7,32'hc9883f2c); 
iteration (32'h4a4a5766,32'h4ad27c90,32'h4b1bd422); 
iteration (32'h4a990fd0,32'h481ea219,32'h4a9e04e1); 
iteration (32'hc9991e5c,32'hcb16824b,32'hcb29a616); 
iteration (32'h4ae66a99,32'hcb0463bc,32'hc989737c); 
iteration (32'h4b1888a7,32'hcaddd514,32'h4a267874); 
iteration (32'h4aabf9c7,32'hc99db479,32'h4a848ca9); 
iteration (32'h4b0da9c5,32'hca82f428,32'h4a985f62); 
iteration (32'h49649535,32'h4ab09782,32'h4acd2a29); 
iteration (32'h4abd5883,32'hc9f5df81,32'h4a7fc146); 
iteration (32'hcb0b89c9,32'h4ac0e488,32'hca2c5e14); 
iteration (32'hcae9c84e,32'h49017e71,32'hcad99880); 
iteration (32'hca8faede,32'h494be4a3,32'hca6c6493); 
iteration (32'h4a806c73,32'hc92428d4,32'h4a57ceb1); 
iteration (32'hca9afaee,32'hca7503f6,32'hcb0abe74); 
iteration (32'hcb17218c,32'hca5294aa,32'hcb4bc6b6); 
iteration (32'hca3c8490,32'h48afdd99,32'hca2688dd); 
iteration (32'h4ada0d7c,32'hcaa29ef2,32'h49ddba28); 
iteration (32'h4aa1ba6b,32'h4b184d3e,32'h4b692a74); 
iteration (32'hcadd8bae,32'h4b06b747,32'h49bf8b80); 
iteration (32'hcaa63f1f,32'hc980e760,32'hcac678f7); 
iteration (32'hc9da79b8,32'hcafa59b3,32'hcb187c10); 
iteration (32'hcad74ff6,32'hc890ec2a,32'hcae05eb9); 
iteration (32'hca02eae1,32'h49111bd6,32'hc9bd47d7); 
iteration (32'h481f7647,32'hcb1111dc,32'hcb0e9403); 
iteration (32'h4b113e7e,32'h4b029f0e,32'h4b89eec6); 
iteration (32'hcad4eb26,32'h49fb54e0,32'hca9615ee); 
iteration (32'hcade5575,32'h49d2a06f,32'hcaa9ad59); 
iteration (32'h4b130893,32'h49916c63,32'h4b25361f); 
iteration (32'hc9141bf8,32'hcae66d48,32'hcaf8f0c7); 
iteration (32'hcb059a9d,32'h4afd0338,32'hc8e32020); 
iteration (32'h49b9e4f9,32'hca1481d5,32'hc95e3d62); 
iteration (32'hc5c6e1bb,32'h4ab16b44,32'h4ab1398c); 
iteration (32'hca7b69c6,32'hca97670d,32'hcb0a8df8); 
iteration (32'h4ae85f64,32'h4a6d8125,32'h4b2f8ffb); 
iteration (32'h4a819994,32'h4abfa7fb,32'h4b20a0c8); 
iteration (32'h4992af8b,32'hcacab0aa,32'hcaa604c7); 
iteration (32'hcb0456f3,32'h4a9c2fdc,32'hca58fc14); 
iteration (32'h4abc42a1,32'h4aab1f87,32'h4b33b114); 
iteration (32'h4a99ca31,32'hca45e72d,32'h49db5a6a); 
iteration (32'h4af0535e,32'hca82e65b,32'h4a5ada06); 
iteration (32'hca62a646,32'hca248c3a,32'hcac39940); 
iteration (32'h4a111724,32'h4abdc2c8,32'h4b03272d); 
iteration (32'hca91e3c8,32'hcb1425b2,32'hcb5d1796); 
iteration (32'h4a9950b9,32'h4ac5ec8d,32'h4b2f9ea3); 
iteration (32'hcab32a72,32'h4a38ce43,32'hca2d86a1); 
iteration (32'hcaa00866,32'h4b0aa165,32'h4a6a74c8); 
iteration (32'hca6c3535,32'hcb13bec7,32'hcb4ecc14); 
iteration (32'hc9aa4134,32'h4b04fa26,32'h4adf63ff); 
iteration (32'h4a2d6fac,32'hc73999bf,32'h4a2a8945); 
iteration (32'hcad3800b,32'h49eb80cf,32'hca989fd7); 
iteration (32'h4b130dcd,32'h4af56331,32'h4b86dfb3); 
iteration (32'hcb011c68,32'hca34a387,32'hcb2e454a); 
iteration (32'hcb014183,32'hcae16036,32'hcb71f19e); 
iteration (32'h4b06813d,32'hca2bf421,32'h4ab7086a); 
iteration (32'h4a610e58,32'h4a481404,32'h4ad4912e); 
iteration (32'hc8b607a3,32'hca2d3247,32'hca43f33b); 
iteration (32'hcae99318,32'h48883f9f,32'hcae10f1e); 
iteration (32'h4a904610,32'hc92ade3a,32'h4a75d492); 
iteration (32'hc93983ba,32'h4ae0b1af,32'h4ac98138); 
iteration (32'h497bc53a,32'hcae3304f,32'hcac3b7a8); 
iteration (32'h4ae6e18c,32'h481995b5,32'h4aebae3a); 
iteration (32'hcb008842,32'hca641ec0,32'hcb398ff2); 
iteration (32'h4a001133,32'h4b150fc1,32'h4b35140e); 
iteration (32'h4b0692de,32'h4ac4eed7,32'h4b690a4a); 
iteration (32'hcb15c17f,32'hcadf5f58,32'hcb82b896); 
iteration (32'h49ee6bf8,32'h4953056b,32'h4a2bf757); 
iteration (32'hcad8de20,32'h4a47fdbc,32'hca69be84); 
iteration (32'hcad02ee5,32'hcaa9dc07,32'hcb3d0576); 
iteration (32'h4b163b77,32'h4a976a63,32'h4b61f0a8); 
iteration (32'h46b9c4a2,32'hcb03dadf,32'hcb037dfd); 
iteration (32'hc902bd45,32'h4acbef6d,32'h4abb97c4); 
iteration (32'hcaaf0cbb,32'h4af66751,32'h4a0eb52c); 
iteration (32'h4adc1eed,32'hca11dd09,32'h4a933068); 
iteration (32'h4a4b42f4,32'hc9963ff0,32'h4a0022fc); 
iteration (32'hcadecddd,32'h4af5f52d,32'h49393a80); 
iteration (32'h4b052d02,32'hcabf5ad2,32'h4a15fe64); 
iteration (32'h4ac93a64,32'h4b071387,32'h4b6bb0b9); 
iteration (32'h4a4ec511,32'hca13a5e9,32'h496c7ca0); 
iteration (32'h49438244,32'h4a3a68f3,32'h4a6b4984); 
iteration (32'hcaec1b9c,32'hca8f01ec,32'hcb3d8ec4); 
iteration (32'h4b1218eb,32'hcaa82cdc,32'h4a7809f4); 
iteration (32'hca39b92d,32'h4a236748,32'hc8b28f28); 
iteration (32'h4a12330d,32'h4ae10bf2,32'h4b1512bc); 
iteration (32'h4ac3ba71,32'hca3dc99a,32'h4a49ab48); 
iteration (32'h47978905,32'h4ab545fa,32'h4ab7a41e); 
iteration (32'hca9a78f0,32'hcaee5450,32'hcb4466a0); 
iteration (32'hc94b9e86,32'hc9a8c5fc,32'hca074aa0); 
iteration (32'h4ad103c5,32'h4b1660fe,32'h4b7ee2e0); 
iteration (32'h49ba8824,32'hca601b84,32'hca02d772); 
iteration (32'h4a215d5c,32'hcb163119,32'hcadbb384); 
iteration (32'hcaa22897,32'hc9f1c18d,32'hcade98fa); 
iteration (32'h4b014d07,32'h4ae2ddb3,32'h4b72bbe0); 
iteration (32'h4aa655c1,32'h4b11ffb7,32'h4b652a98); 
iteration (32'hca337763,32'h496631c4,32'hc9f3d5e4); 
iteration (32'hca677a39,32'hca84f26f,32'hcaf8af8c); 
iteration (32'hcaf45f13,32'h4b154db6,32'h49d8f164); 
iteration (32'h4b0b7294,32'hca4bb85c,32'h4ab108fa); 
iteration (32'h4acf4f8f,32'hcb1865bf,32'hca42f7de); 
iteration (32'hc99c8aa2,32'h4aec8f5e,32'h4ac56cb6); 
iteration (32'h4a20dc3f,32'h497042f9,32'h4a5cecfd); 
iteration (32'h4a9046d5,32'hcb019b1a,32'hca65debe); 
iteration (32'h48b9baa0,32'h4a54a331,32'h4a6bda85); 
iteration (32'hcae348eb,32'hcb10529a,32'hcb80fb88); 
iteration (32'h4b0833b9,32'hc90630e0,32'h4affa156); 
iteration (32'hcb172cae,32'h4afe8068,32'hc9bf63d0); 
iteration (32'hcad15878,32'hcae3f7cf,32'hcb5aa824); 
iteration (32'hcaf37f53,32'h48dcdd02,32'hcae5b183); 
iteration (32'hc9918020,32'hcac84f2d,32'hcaecaf35); 
iteration (32'h4a981e35,32'h4aff870c,32'h4b4bd2a0); 
iteration (32'h4961bc8a,32'h4aba92da,32'h4ad6ca6b); 
iteration (32'h4ad5df5b,32'hca052561,32'h4a934caa); 
iteration (32'h4a1b11cb,32'hc94f042f,32'h49cea17e); 
iteration (32'hc9b271f0,32'h4a118c0d,32'h49614c54); 
iteration (32'hcabc450b,32'h4abd2d40,32'h46e83500); 
iteration (32'hcaacd47a,32'h495ecdad,32'hca90fac4); 
iteration (32'h4acf6135,32'h4a370f33,32'h4b157467); 
iteration (32'hcac4964d,32'h49fb38e9,32'hca85c813); 
iteration (32'hca6334db,32'h4b0aaabd,32'h4aa3bb0c); 
iteration (32'h4ae53a6e,32'hc988972c,32'h4ac314a3); 
iteration (32'h4a356fcc,32'h491f2bd3,32'h4a5d3ac1); 
iteration (32'hcaf4af95,32'hca4ce4d4,32'hcb2d9100); 
iteration (32'hcb0c78fe,32'hc9e8ce1c,32'hcb2992c2); 
iteration (32'h4b15ac69,32'hc940b22a,32'h4b09a146); 
iteration (32'h4a81c22d,32'h4aad0a56,32'h4b176642); 
iteration (32'hc7f909c8,32'hca51fb64,32'hca59c3b2); 
iteration (32'h486c82a3,32'hc97a509c,32'hc93f2ff3); 
iteration (32'h4abb38c0,32'hc870bdaa,32'h4ab3b2d3); 
iteration (32'hc92aba45,32'h4a417aad,32'h4a16cc1c); 
iteration (32'hca5c380e,32'hcac5700b,32'hcb19c609); 
iteration (32'h4a25ec14,32'hca824f74,32'hc9bd65a8); 
iteration (32'h4a864658,32'hca5fbd45,32'h49333dac); 
iteration (32'h4959ed00,32'hcb09ddc7,32'hcaf87dee); 
iteration (32'h49a665b6,32'h4aebae60,32'h4b0aa3e7); 
iteration (32'h4ab5ed53,32'hc908ee45,32'h4aa4cf8a); 
iteration (32'h4a9286cb,32'h49057b7c,32'h4aa3363a); 
iteration (32'h4a9945e1,32'h4aa5aa8e,32'h4b1f7838); 
iteration (32'h4a3a11e6,32'hcaff9247,32'hcaa28954); 
iteration (32'hc88c0f2c,32'h4a542a5a,32'h4a42a874); 
iteration (32'hca302522,32'h4aafb348,32'h4a2f416e); 
iteration (32'h4b06a4ef,32'h4a6ebdb2,32'h4b42545c); 
iteration (32'h4ae31e19,32'h4b15c012,32'h4b83a78f); 
iteration (32'h4b172367,32'hcad22a67,32'h4a3838ce); 
iteration (32'h473421f4,32'h4a60aafa,32'h4a637b82); 
iteration (32'h4b0b7f1e,32'hca9d8695,32'h4a72ef4e); 
iteration (32'hcac9b3a6,32'hcaca94d3,32'hcb4a243c); 
iteration (32'h4a6991f1,32'h4ac79052,32'h4b1e2ca5); 
iteration (32'hc849f6f9,32'hcadd8d84,32'hcae3dd3c); 
iteration (32'hca559bbc,32'hca0978dc,32'hcaaf8a4c); 
iteration (32'hcaeb727b,32'h4ad67732,32'hc927da48); 
iteration (32'h4a472c77,32'hcb04f912,32'hcaa65be8); 
iteration (32'hcab3357a,32'hcacf744a,32'hcb4154e2); 
iteration (32'h4a7792fb,32'h4ad9ae8e,32'h4b2abc06); 
iteration (32'hca900754,32'h4a6f7a1e,32'hc9425228); 
iteration (32'hcb01b118,32'h4a6d83e2,32'hca8ca03f); 
iteration (32'h4ad3a453,32'h4aa88455,32'h4b3e1454); 
iteration (32'h4ad1c9ef,32'hcac74a9e,32'h48a7f510); 
iteration (32'hcb11f2f7,32'h4a334dec,32'hcaca3ef8); 
iteration (32'hca200c02,32'hcb02f819,32'hcb2afb1a); 
iteration (32'h4a525dbe,32'hc91289f1,32'h4a2dbb42); 
iteration (32'hcacda514,32'hcb079821,32'hcb6e6aab); 
iteration (32'h4a13ac41,32'hcaba44b6,32'hca60dd2b); 
iteration (32'hcac1c9a0,32'hca9387a6,32'hcb2aa8a3); 
iteration (32'h4af0531c,32'h4abe5b9d,32'h4b57575c); 
iteration (32'h4a33d2a5,32'hcae3666a,32'hca897d18); 
iteration (32'h4a35f448,32'h4a9220e5,32'h4aed1b09); 
iteration (32'h4ae0ddd6,32'h4a1de56b,32'h4b17e846); 
iteration (32'h4a4e73d7,32'hcac17b44,32'hca3482b1); 
iteration (32'hca824d7b,32'hcad38f0e,32'hcb2aee44); 
iteration (32'h49f9cd10,32'h4b069050,32'h4b25c9f2); 
iteration (32'h4b008c7e,32'hca82cfe9,32'h4a7c9226); 
iteration (32'hca8804d8,32'hc93ee0bf,32'hca9fe0f0); 
iteration (32'hcaf0a5b2,32'hcb163e4c,32'hcb874892); 
iteration (32'hc9057e73,32'hca28f266,32'hca4a5203); 
iteration (32'h49f00562,32'h4ae0825e,32'h4b0e41db); 
iteration (32'hc93a756a,32'h4a7686e6,32'h4a47e98c); 
iteration (32'h4abe0484,32'h4997e2b9,32'h4ae3fd32); 
iteration (32'h4a445924,32'hca6d3f32,32'hc9239838); 
iteration (32'h4aa55c85,32'h4aa7ca19,32'h4b26934f); 
iteration (32'hcac355a1,32'h4aa250cc,32'hc9841354); 
iteration (32'hca47b18a,32'h49a9966d,32'hc9e5cca7); 
iteration (32'h49763d3f,32'h4a51a5a0,32'h4a879a78); 
iteration (32'h4ae9b08d,32'hc937b35c,32'h4ad2ba22); 
iteration (32'h4af8eebe,32'h48a10d34,32'h4b017fc9); 
iteration (32'hc98aecd0,32'h49edccb3,32'h4945bfc6); 
iteration (32'h4af9a8b2,32'hc856bea0,32'h4af2f2bd); 
iteration (32'h4a174866,32'h4b0665b6,32'h4b2c37d0); 
iteration (32'h4ae01d8d,32'h4a98aecb,32'h4b3c662c); 
iteration (32'h4a706c78,32'hcac7637b,32'hca1e5a7e); 
iteration (32'h4b01d5a7,32'h4a5c9315,32'h4b38fa6c); 
iteration (32'hca3c95bc,32'hca976ca4,32'hcaf5b782); 
iteration (32'h4b0d56b1,32'h4b024b61,32'h4b87d109); 
iteration (32'h4b1732a3,32'h4af1803d,32'h4b87f961); 
iteration (32'hc9d91494,32'hca44fdfb,32'hca98c422); 
iteration (32'h49177808,32'hcb0acfe5,32'hcb015864); 
iteration (32'hcb049b4b,32'h4b038dfd,32'hc786a700); 
iteration (32'h493bdf19,32'h4a5f8c17,32'h4a8741ef); 
iteration (32'h4a67a5ea,32'h4b10b9bd,32'h4b4aa338); 
iteration (32'hcaad7d51,32'h4ac0b8fc,32'h4919dd58); 
iteration (32'hca1fb68b,32'hcaa9e2cd,32'hcaf9be12); 
iteration (32'h4aa72d6c,32'h4b12a213,32'h4b6638c9); 
iteration (32'hcb14e83b,32'h4b0903b1,32'hc93e48a0); 
iteration (32'h4922020c,32'h4b094b9a,32'h4b136bbb); 
iteration (32'h4af46540,32'h4ac68ad2,32'h4b5d7809); 
iteration (32'h4959f008,32'h49c4c87d,32'h4a18e040); 
iteration (32'h4b050440,32'hcb0c5cf8,32'hc8eb1700); 
iteration (32'h4a8b6c14,32'hca74c6bc,32'h490845b0); 
iteration (32'h4946421c,32'h4aaa15bb,32'h4ac2ddfe); 
iteration (32'h4ab6539d,32'h4a8bbd10,32'h4b210856); 
iteration (32'h4ad47a76,32'h4a9bb2b2,32'h4b381694); 
iteration (32'hcb074990,32'h4b041042,32'hc84e5380); 
iteration (32'h4b04cb9a,32'hc9932222,32'h4ae4ceac); 
iteration (32'h4a9a6bf4,32'hcaa2b355,32'hc8847610); 
iteration (32'hc9d049a9,32'hcb111710,32'hcb2b2045); 
iteration (32'hc9add904,32'hc9fd2d92,32'hca55834b); 
iteration (32'hcb016851,32'h48847097,32'hcafa8999); 
iteration (32'hc71c6e9e,32'h4aed75f6,32'h4aec3d19); 
iteration (32'hc8a3c182,32'h4a4f7ec1,32'h4a3b0691); 
iteration (32'h4abf9427,32'h4a70da21,32'h4b1c009c); 
iteration (32'h498516a5,32'h4ab337eb,32'h4ad47d94); 
iteration (32'hca616007,32'hca81bcf1,32'hcaf26cf4); 
iteration (32'hca95d8f5,32'h4a318ec2,32'hc9f44650); 
iteration (32'hca7e8e27,32'hcafce798,32'hcb3e1756); 
iteration (32'hcafa423d,32'hca93e8cc,32'hcb471584); 
iteration (32'h4ac41f25,32'hca66e4dc,32'h4a21596e); 
iteration (32'hc8dcf19c,32'h4a0d3a90,32'h49e338b9); 
iteration (32'h4ad8c9ba,32'hca1119b6,32'h4a903cdf); 
iteration (32'hca3cbc04,32'hca432294,32'hcabfef4c); 
iteration (32'h4905a7fc,32'hca274332,32'hca05d933); 
iteration (32'hcae520b6,32'h4abefb58,32'hc9989578); 
iteration (32'hca09ee8c,32'hcaf8663b,32'hcb1eaec0); 
iteration (32'hca0ca9d6,32'hc4bbf279,32'hca0cc154); 
iteration (32'h498f8ea1,32'h4abbd208,32'h4adfb5b0); 
iteration (32'h4b090a8a,32'hcadca57a,32'h49d5be68); 
iteration (32'h4ad819f7,32'h4aa30334,32'h4b3d8e96); 
iteration (32'hcac70c25,32'h481d354c,32'hcac2227b); 
iteration (32'h4ab458f1,32'h4b1363ab,32'h4b6d9024); 
iteration (32'h4883060f,32'hcaf98c75,32'hcaf15c14); 
iteration (32'hca9221a9,32'h4ada0abb,32'h4a0fd224); 
iteration (32'h4a041c9e,32'hcb166cb8,32'hcaeacb21); 
iteration (32'h4ac674c8,32'h4ac9c3f2,32'h4b481c5d); 
iteration (32'hc8aee1a6,32'hcac7c789,32'hcad2b5a3); 
iteration (32'hcab359a3,32'hca25957b,32'hcb031230); 
iteration (32'hcac2dfae,32'h4af0546d,32'h49b5d2fc); 
iteration (32'h4b128d27,32'hc9d9dd22,32'h4aeea306); 
iteration (32'h4a8a093d,32'h4b0e6042,32'h4b5364e0); 
iteration (32'h48bba34a,32'h4a23d855,32'h4a3b4cbe); 
iteration (32'h4aeb5d19,32'hca8e02eb,32'h4a3ab45c); 
iteration (32'h4a85d0ad,32'h497e636a,32'h4aa59d1a); 
iteration (32'hcafd8ed1,32'hca70a8b2,32'hcb3af195); 
iteration (32'h498c04eb,32'hc8005732,32'h4977f40a); 
iteration (32'hc9eeb1dc,32'hcb008e91,32'hcb1e64cc); 
iteration (32'hc970c44d,32'hcaab55d9,32'hcac96e63); 
iteration (32'h4ad69900,32'h4b024a5c,32'h4b6d96dc); 
iteration (32'hc9254a4a,32'h4aaf057c,32'h4a9a5c33); 
iteration (32'hcb0f1d64,32'h4ad6242b,32'hca102d3a); 
iteration (32'hca65c5d1,32'h4a3e1f9b,32'hc91e98d8); 
iteration (32'hc8b44fd9,32'h4a72bd02,32'h4a5c3307); 
iteration (32'hcaa352a9,32'h4b005f5a,32'h4a3ad816); 
iteration (32'h4ad0327f,32'h4adb3e0e,32'h4b55b846); 
iteration (32'h4ae8b39a,32'hcb0d57e1,32'hc9c7f0a0); 
iteration (32'h4afa09ce,32'h486e5157,32'h4b00be2c); 
iteration (32'h4aa52cbf,32'hc9cadf60,32'h4a64e9ce); 
iteration (32'hca0f3b3d,32'hca4ad50f,32'hcaad0826); 
iteration (32'h4b06a298,32'h4ada7115,32'h4b73db22); 
iteration (32'hca6e8d2b,32'h4acfbd85,32'h4a30eddf); 
iteration (32'h4a9c999f,32'h4b0bb7f2,32'h4b5a04c2); 
iteration (32'hcab9e7c5,32'hcb0f0863,32'hcb6bfc46); 
iteration (32'hcaf35c08,32'hcaa34d61,32'hcb4b54b4); 
iteration (32'h4a684b12,32'hcb133beb,32'hcab2524d); 
iteration (32'h4a717902,32'hca985e6e,32'hc97d0f68); 
iteration (32'hc971397d,32'hca75c25a,32'hca99085d); 
iteration (32'h4a5e445b,32'h4a48f8ea,32'h4ad39ea2); 
iteration (32'h4b03a9dc,32'hca992e50,32'h4a5c4ad0); 
iteration (32'hc99b3b56,32'h4a1b211f,32'h499b06e8); 
iteration (32'hca0b991e,32'h4b184d94,32'h4aeace99); 
iteration (32'h4a7bd5e7,32'hcadb0298,32'hca3a2f49); 
iteration (32'h4a756bfa,32'h4a8f5100,32'h4b05037e); 
iteration (32'h4a26690f,32'hc9631c38,32'h49db4402); 
iteration (32'hcab37dc0,32'hcadd1570,32'hcb484998); 
iteration (32'hcb17fca1,32'h4a3fdb68,32'hcad00b8e); 
iteration (32'h4a1c8c7e,32'hcab44ee0,32'hca4c1142); 
iteration (32'hcaa558de,32'h494254e8,32'hca8d0e41); 
iteration (32'hca877512,32'hcacbc7f9,32'hcb299e86); 
iteration (32'h4a66b242,32'hcb0b6bfb,32'hcaa37ed5); 
iteration (32'hca2e2940,32'h48b7e6cd,32'hca172c66); 
iteration (32'hca3a1447,32'hcaed3234,32'hcb251e2c); 
iteration (32'h4adbe2f0,32'hca3eaec8,32'h4a791718); 
iteration (32'hcb1814f0,32'h4aae097c,32'hca822064); 
iteration (32'h4aa247f2,32'hcad2efa4,32'hc9c29ec8); 
iteration (32'h4a5260d4,32'hcaa5dbfd,32'hc9f2ae4c); 
iteration (32'hcab0bf8a,32'h4aa5b33c,32'hc8b0c4e0); 
iteration (32'h49e70bce,32'h4af97ee5,32'h4b19a0ec); 
iteration (32'hcae0bdc2,32'hcb03ac89,32'hcb740b6a); 
iteration (32'h4aa71a8c,32'h4a4f3b26,32'h4b075c10); 
iteration (32'h4aaa6225,32'hcb0d9795,32'hca619a0a); 
iteration (32'h4951b9eb,32'hca997268,32'hca7e7655); 
iteration (32'h49dc9a1b,32'hc9716d9d,32'h4947c699); 
iteration (32'hcb14a250,32'hc9896ad7,32'hcb25cfab); 
iteration (32'h49fdba0c,32'hcac4c8ed,32'hca855a6a); 
iteration (32'hca34745c,32'h4aa302af,32'h4a119102); 
iteration (32'h4b177088,32'h4a23af0f,32'h4b405c4c); 
iteration (32'h4b0d6b07,32'hca56523a,32'h4aafacf1); 
iteration (32'h4b15fcca,32'h4ab9aa7e,32'h4b72d209); 
iteration (32'hcaf491e1,32'hca6be4ab,32'hcb35421b); 
iteration (32'hcacd3768,32'h4a98595b,32'hc9d37834); 
iteration (32'hca9d5c99,32'hcb148840,32'hcb63368c); 
iteration (32'h4a6d98dd,32'hcb115062,32'hcaabd456); 
iteration (32'h4aa69eef,32'hca73187d,32'h49b44ac2); 
iteration (32'hca89add8,32'h4ac69fa9,32'h49f3c744); 
iteration (32'hcb06143e,32'h4860eb8b,32'hcb029090); 
iteration (32'h4786f58d,32'hca60a497,32'hca5c6ceb); 
iteration (32'hcb14b971,32'hca0a2736,32'hcb37433e); 
iteration (32'h4af7204b,32'hcb10dcfe,32'hc9aa66c4); 
iteration (32'hca8755aa,32'hca34b414,32'hcae1afb4); 
iteration (32'h4a56479b,32'hca44b4a3,32'h488c97c0); 
iteration (32'hcb081b2b,32'hcaef7f4c,32'hcb7fdad1); 
iteration (32'h4a7dd252,32'h4ac06d47,32'h4b1fab38); 
iteration (32'h4a78de35,32'h493c7f37,32'h4a93ff01); 
iteration (32'h4b11a345,32'h49e4353f,32'h4b2e29ed); 
iteration (32'h4aa25a58,32'h4a6d94d8,32'h4b0c9262); 
iteration (32'h4ae6c55b,32'h4b019cb0,32'h4b74ff5e); 
iteration (32'hca0bd2f3,32'hcacc481f,32'hcb0918cc); 
iteration (32'hcb114761,32'h4b10e990,32'hc6bba200); 
iteration (32'hc9bd59c0,32'hc99f0214,32'hca2e2dea); 
iteration (32'h4a46ffee,32'h4b163eca,32'h4b47fec6); 
iteration (32'h4b01d386,32'hc9821b7a,32'h4ae3202e); 
iteration (32'hc9087022,32'h4addc43a,32'h4accb636); 
iteration (32'h4b039955,32'hca259382,32'h4ab468e9); 
iteration (32'hca0dd805,32'hcb075e50,32'hcb2ad451); 
iteration (32'hcb0283c4,32'h492a5752,32'hcaefbc9e); 
iteration (32'hcaa29035,32'h4998c1ae,32'hca78bf93); 
iteration (32'h4a9b2cd3,32'hcabf7c4d,32'hc9913de8); 
iteration (32'h496c7331,32'h4b008730,32'h4b0f4e63); 
iteration (32'h4ac2d9f9,32'hca164406,32'h4a6f6fec); 
iteration (32'hca24e9c1,32'h4afa38a9,32'h4aa7c3c8); 
iteration (32'h4ab6f300,32'h4aa56548,32'h4b2e2c24); 
iteration (32'h4a476842,32'h4a97399b,32'h4afaedbc); 
iteration (32'h494e43fd,32'h4a93e6a7,32'h4aadaf27); 
iteration (32'hc9a9d4c7,32'hca3cf6a8,32'hca88f086); 
iteration (32'h4b05205c,32'hcaa2332e,32'h4a501b14); 
iteration (32'hca93005a,32'h4a5cdbf5,32'hc992497e); 
iteration (32'h4aa60426,32'hcac9fac7,32'hc98fda84); 
iteration (32'h4a3a979e,32'hca749544,32'hc967f698); 
iteration (32'hcae2556a,32'h4a3f0c2d,32'hca82cf54); 
iteration (32'h4a5480e5,32'h4acf20cf,32'h4b1cb0a1); 
iteration (32'hcb13f27f,32'h4972328d,32'hcb04cf56); 
iteration (32'h4aa988b4,32'hcab118c7,32'hc8720260); 
iteration (32'h4a5bdf73,32'h4a035c30,32'h4aaf9dd2); 
iteration (32'h4a87788a,32'h4954658f,32'h4aa2053c); 
iteration (32'h4b16d799,32'hcad24341,32'h4a36d7e2); 

/////////////////////////////////////////////////////////////////////////
//
//Subtraction
//
/////////////////////////////////////////////////////////////////////////
AddBar_Sub = 1'b1;

iteration (32'hcabfe12e,32'hcb038a87,32'h4a0e67c0); 
iteration (32'h4ac95bb3,32'h4b1332c2,32'hca3a13a2); 
iteration (32'h4ac5c5c1,32'h4abc97eb,32'h4892dd60); 
iteration (32'hca86b842,32'hc83b1cae,32'hca80df5d); 
iteration (32'hca17c10d,32'h48c500c6,32'hca306126); 
iteration (32'h4b17ca35,32'hc9fb2ba1,32'h4b372fa9); 
iteration (32'hca51e06c,32'hcad8952b,32'h4a5f49ea); 
iteration (32'hcaba005e,32'hca1617b7,32'hca5de905); 
iteration (32'hc9c5ed23,32'h4ab12f66,32'hcae2aaaf); 
iteration (32'hcad3fee3,32'h4b03fb5a,32'hcb6dfacc); 
iteration (32'h4a8c6072,32'h4b00e110,32'hca6ac35c); 
iteration (32'h4a0693c1,32'hca0bdbf4,32'h4a8937da); 
iteration (32'hc9a257ae,32'h4adc3405,32'hcb0264f8); 
iteration (32'h4aec5bdf,32'h49ef5f05,32'h4ab0841e); 
iteration (32'hcaae3746,32'hc81c724e,32'hcaa953b4); 
iteration (32'h4a97ad26,32'h4af2f3c9,32'hca368d46); 
iteration (32'hca2da42d,32'hcaee44c1,32'h4a9772aa); 
iteration (32'h4ab08f92,32'h4a9edaae,32'h490da720); 
iteration (32'h49fffc14,32'hca648f0f,32'h4ab2468c); 
iteration (32'hc9b1d4eb,32'h49f340da,32'hca528ae2); 
iteration (32'hc9d2b7a6,32'hca6cb5fc,32'h4a035a29); 
iteration (32'h4b098e51,32'h4ae79cd4,32'h49adff38); 
iteration (32'hca97dd92,32'hca5de0e8,32'hc9a3b478); 
iteration (32'hcaa7df99,32'hcaedeec8,32'h4a0c1e5e); 
iteration (32'hcaa9137a,32'h4acc229c,32'hcb3a9b0b); 
iteration (32'hca45d175,32'hc9bb7673,32'hc9d02c77); 
iteration (32'hcaaa9fb8,32'h494d3806,32'hcac446b9); 
iteration (32'h4a44cb5d,32'hcabe7ad2,32'h4b107040); 
iteration (32'hca60e96b,32'h4ac231fc,32'hcb195359); 
iteration (32'hcb162e49,32'h4ac6ba05,32'hcb798b4c); 
iteration (32'hca435d47,32'hcae48b5d,32'h4a82dcba); 
iteration (32'hca3edb8e,32'h4a1d631b,32'hcaae1f54); 
iteration (32'hca0258ba,32'hca8c9cad,32'h4a16e0a0); 
iteration (32'h4b137e39,32'h49a03830,32'h4afeee66); 
iteration (32'hcae1c85f,32'hca0b164c,32'hca9c3d39); 
iteration (32'hca4ab422,32'hca86b1b5,32'h49855e90); 
iteration (32'hcace83ca,32'h4a14b991,32'hcb0c7049); 
iteration (32'h4a53b27c,32'h4a97bdde,32'hc9b79280); 
iteration (32'hcab0cc00,32'hca4dcfa4,32'hca13c85c); 
iteration (32'hcae6ef35,32'h4a3e37e0,32'hcb230592); 
iteration (32'h49f2254d,32'hcaadc1d7,32'h4aea4b2a); 
iteration (32'hca569d7a,32'h4acf5049,32'hcb1d4f83); 
iteration (32'hc937687f,32'h4999a8f5,32'hc9f55d34); 
iteration (32'hcaa13193,32'h49db5695,32'hcad80738); 
iteration (32'h4a77959e,32'h4af63ac7,32'hca74dff0); 
iteration (32'h4a45727d,32'h491ae196,32'h4a1eba18); 
iteration (32'h4a682223,32'hc9991682,32'h4a9a56b2); 
iteration (32'h4aa3d6f2,32'hcafa09be,32'h4b4ef058); 
iteration (32'h4a06fcfc,32'h4a1a6383,32'hc89b3438); 
iteration (32'h4a8f4c54,32'hc9d7fe1c,32'h4ac54bdb); 
iteration (32'h4ae9ed02,32'hca82b3f5,32'h4b36507c); 
iteration (32'h49e450fd,32'hcaea782d,32'h4b11c636); 
iteration (32'h4adf4be3,32'h488961ce,32'h4ad6b5c6); 
iteration (32'hcb050589,32'hca817c21,32'hca888ef1); 
iteration (32'hcabefdb5,32'hc98b1022,32'hca9c39ac); 
iteration (32'h4a9074e7,32'hc9b14c64,32'h4abcc800); 
iteration (32'hcacba4a7,32'h4ad9685c,32'hcb528682); 
iteration (32'h4b050d10,32'h4b1485a1,32'hc9778910); 
iteration (32'hc948ff21,32'h4aa9a243,32'hcac2c227); 
iteration (32'h4acc4d09,32'h4a5386f1,32'h4a451321); 
iteration (32'h4adaebd7,32'hcacce02e,32'h4b53e602); 
iteration (32'h4a681f56,32'h4b0a5634,32'hcaa09cbd); 
iteration (32'hcab7e9cb,32'hcb136389,32'h4a5dba8e); 
iteration (32'h49007856,32'hca4892e7,32'h4a68b0fc); 
iteration (32'h4a864b53,32'h4a0c5824,32'h4a003e82); 
iteration (32'h4aed36de,32'hcb1779e4,32'h4b870aaa); 
iteration (32'hca9c9eee,32'hcaf8b413,32'h4a382a4a); 
iteration (32'h495f8e14,32'hca0adc21,32'h4a42bfa6); 
iteration (32'hcacc8faa,32'h4a9835ee,32'hcb3262cc); 
iteration (32'hcb01daf6,32'h4a47a471,32'hcb33c412); 
iteration (32'h4a7eed8b,32'h4986ac18,32'h4a3b977f); 
iteration (32'hcad16a3a,32'hc9a6e381,32'hcaa7b15a); 
iteration (32'h4a85a31d,32'hcafb009e,32'h4b4051de); 
iteration (32'hcb104e91,32'hcaf94173,32'hc99d6ebc); 
iteration (32'hcabd5b77,32'hcb01da8f,32'h4a0cb34e); 
iteration (32'hca79acb5,32'hcade354b,32'h4a42bde1); 
iteration (32'hcaf5442b,32'h49e48d39,32'hcb1733bd); 
iteration (32'h4b15c484,32'h4adebcb6,32'h4a1998a4); 
iteration (32'h494320ea,32'hc9d738ab,32'h4a1c6490); 
iteration (32'hc9270755,32'hc9e19258,32'h498e0eae); 
iteration (32'h49fc9c35,32'hcac2d935,32'h4b010021); 
iteration (32'h4a4aa557,32'hcab47fef,32'h4b0ce94d); 
iteration (32'h4b12a710,32'hcad1c152,32'h4b7b87b9); 
iteration (32'hcaecbc24,32'hca42c7c4,32'hca8b5842); 
iteration (32'h4a05dcf5,32'hca698fd5,32'h4ab7b665); 
iteration (32'hca6f20e8,32'h4a6eeed4,32'hcaef07de); 
iteration (32'h4a7f6670,32'hcafcd460,32'h4b3e43cc); 
iteration (32'hcac836a1,32'hcaadea87,32'hc95260d0); 
iteration (32'h4b173aea,32'h4a2b249c,32'h4ad8e386); 
iteration (32'hca3d96c3,32'h4aca8873,32'hcb14a9ea); 
iteration (32'hcab46525,32'hc90bab68,32'hcaa2efb8); 
iteration (32'h49959cd2,32'hca93cbc3,32'h4ab932f8); 
iteration (32'hcad1518d,32'h4b0c6ca3,32'hcb75156a); 
iteration (32'hca0c5342,32'hca1a45de,32'h485f29c0); 
iteration (32'h4ab44147,32'h489cc891,32'h4aaa74be); 
iteration (32'h4a168c44,32'h4a87217c,32'hc9ef6d68); 
iteration (32'h4aef297a,32'hcadb7f36,32'h4b655458); 
iteration (32'h4ae6df90,32'h4ad2e5d1,32'h491fcdf8); 
iteration (32'h49852276,32'h4ade668b,32'hcabd1dee); 
iteration (32'hc98ab148,32'hcaccd900,32'h4aaa2cae); 
iteration (32'hca23da91,32'h49e2b85f,32'hca8a9b60); 
iteration (32'hcad29528,32'hca9b0686,32'hc9de3a88); 
iteration (32'hca85e845,32'h4ad5837e,32'hcb2db5e2); 
iteration (32'hcad35157,32'hcada9e37,32'h48699c00); 
iteration (32'hcb151fa8,32'h4a4a337b,32'hcb47ac87); 
iteration (32'h4839837a,32'h4a5f6165,32'hca53c92d); 
iteration (32'hca132052,32'hca848560,32'h49ebd4dc); 
iteration (32'h4a27afe8,32'hc8b59706,32'h4a3e62c9); 
iteration (32'hcb070592,32'h48935610,32'hcb0ba042); 
iteration (32'hc93eea6e,32'hcab01ab7,32'h4a983d69); 
iteration (32'h4a23ca55,32'h4b113ae3,32'hcad0909c); 
iteration (32'h4a815355,32'h46c97f8f,32'h4a8089d5); 
iteration (32'h4a8a153f,32'h49a5593e,32'h4a417ddf); 
iteration (32'hcaccf4a7,32'h4b0b039f,32'hcb717df2); 
iteration (32'h49d57dcb,32'h4afd1e24,32'hcac7beb1); 
iteration (32'h4900363d,32'hcaed5624,32'h4afd5cec); 
iteration (32'hcb0f5cd2,32'h4b13fe7b,32'hcb91ada6); 
iteration (32'hcae72b5e,32'hcab65537,32'hc9c3589c); 
iteration (32'h4a9f6283,32'h4931d137,32'h4a89285c); 
iteration (32'hc9a183b8,32'h4aa3090f,32'hcacb69fd); 
iteration (32'h4b0d8a4c,32'h4b127a2d,32'hc89dfc20); 
iteration (32'h4ab93edb,32'hc9a4f11f,32'h4ae27b23); 
iteration (32'h4ad4d365,32'h4a4f1c45,32'h4a5a8a85); 
iteration (32'h4a5c4613,32'hca49fe52,32'h4ad32232); 
iteration (32'h49eb8f67,32'hcac5a314,32'h4b004377); 
iteration (32'hcabf1aaf,32'h4b0cf45d,32'hcb6c81b4); 
iteration (32'h4acc8f69,32'h496d14d3,32'h4aaeeccf); 
iteration (32'h4a8e9060,32'h4b02df56,32'hca6e5c98); 
iteration (32'hcab9fffc,32'h4a68fc2f,32'hcb173f0a); 
iteration (32'hcab01442,32'hcaaff265,32'hc5877400); 
iteration (32'hca7e4132,32'h4a48acb5,32'hcae376f4); 
iteration (32'h4b00a966,32'hca7d5f44,32'h4b400137); 
iteration (32'h4b1026d7,32'hcae58b72,32'h4b817648); 
iteration (32'hcafc9e80,32'hcb0d95c5,32'h49746850); 
iteration (32'h4acc0170,32'hcb00f302,32'h4b66f3ba); 
iteration (32'h4af26c0a,32'h49c7a421,32'h4ac08302); 
iteration (32'h4ac201f3,32'hcadfb62b,32'h4b50dc0f); 
iteration (32'h4ad9f0be,32'hcaf96371,32'h4b69aa18); 
iteration (32'hc9a3f802,32'hca64ef51,32'h4a12f350); 
iteration (32'hcb003a38,32'hca2e8930,32'hcaa92fd8); 
iteration (32'h4a45b2de,32'h4ae4ae46,32'hca81d4d7); 
iteration (32'h4b00a582,32'hca43dfef,32'h4b319d7e); 
iteration (32'hca6dd1cb,32'hcaa64f60,32'h49bd99ea); 
iteration (32'h4a82f05e,32'hcad6534a,32'h4b2ca1d4); 
iteration (32'hc8c7b36e,32'h4ac82058,32'hcad49b8f); 
iteration (32'h494d226a,32'hca92604e,32'h4aac049b); 
iteration (32'hc944b7e5,32'h4a1b3255,32'hca4c604e); 
iteration (32'hcabf5596,32'h4adf9a03,32'hcb4f77cc); 
iteration (32'h4adaa5ee,32'hc93ab44f,32'h4af1fc78); 
iteration (32'hcac804cc,32'hcb0c03c9,32'h4a20058c); 
iteration (32'hca8ea22b,32'h4a419c12,32'hcaef7034); 
iteration (32'hcb06bf54,32'h4841cdd5,32'hcb09c68b); 
iteration (32'hca945952,32'h4ad68083,32'hcb356cea); 
iteration (32'hcac8b7af,32'hca13a653,32'hca7dc90b); 
iteration (32'hc9cd1ec3,32'hc8bd11fb,32'hc99dda44); 
iteration (32'hcab92522,32'hca9c087b,32'hc968e538); 
iteration (32'h49443b8a,32'hcaa5b565,32'h4abe3cd6); 
iteration (32'h4ae498cb,32'hca60d496,32'h4b2a818b); 
iteration (32'hcaffb9e2,32'h4b07911a,32'hcb83b706); 
iteration (32'hcaa562c0,32'h4a1ee083,32'hcaf4d302); 
iteration (32'h4b0a75ee,32'h4a923212,32'h4a82b9ca); 
iteration (32'h4ad54a9b,32'hca048e42,32'h4b0bc8de); 
iteration (32'h4a33024d,32'hca884ec5,32'h4ae1cfec); 
iteration (32'h4ac4a268,32'hcaa88ee2,32'h4b3698a5); 
iteration (32'h4a919481,32'h48e72dcb,32'h4a8321a4); 
iteration (32'h4adfae96,32'hcb0ec6fb,32'h4b7e9e46); 
iteration (32'hcaa379a1,32'hca6f083f,32'hc9afd606); 
iteration (32'h49a1f0c0,32'h4b050356,32'hcae18a7c); 
iteration (32'hca77f0cc,32'h4ade11e1,32'hcb2d0524); 
iteration (32'h4949562d,32'h4a5a6225,32'hca280c9a); 
iteration (32'hca1d4bcd,32'hca2c8cc3,32'h48740f60); 
iteration (32'h4a8ae583,32'hcad8f3e1,32'h4b31ecb2); 
iteration (32'hca8c95e0,32'h4a381d4e,32'hcae8a487); 
iteration (32'h4b10f1f1,32'hcb0e3e23,32'h4b8f980a); 
iteration (32'hcad7053c,32'h4aed79a9,32'hcb623f72); 
iteration (32'hcb08b871,32'hca704d95,32'hca994a18); 
iteration (32'hcad87916,32'h4b043533,32'hcb7071be); 
iteration (32'h4a0a85a0,32'hca48b5d6,32'h4aa99dbb); 
iteration (32'hc98c7746,32'hc8cc3366,32'hc932d4d9); 
iteration (32'h4af1d90d,32'hcaa542d9,32'h4b4b8df3); 
iteration (32'hcad3b77b,32'h4aab587a,32'hcb3f87fa); 
iteration (32'hcb0e03ac,32'hcae3b6e5,32'hc9e141cc); 
iteration (32'h49e227ad,32'h4ab7062a,32'hca7cf87e); 
iteration (32'hcb0a3742,32'h49d100cc,32'hcb24575c); 
iteration (32'h4af52268,32'hcadf472b,32'h4b6a34ca); 
iteration (32'hcab9933d,32'hcac42d41,32'h48a9a040); 
iteration (32'hcaaaebd4,32'hc9686dc8,32'hca8dde1b); 
iteration (32'h4a5fad3a,32'hcab427b5,32'h4b11ff29); 
iteration (32'h4a6bb709,32'h4a434026,32'h4921db8c); 
iteration (32'h493d9d5c,32'hca5dbff4,32'h4a8693a6); 
iteration (32'hcaab4c83,32'hcb1800dc,32'h4a84b535); 
iteration (32'hc9f70f8e,32'hcae13cbb,32'h4aa378d8); 
iteration (32'h4ad5637c,32'h495de363,32'h4ab9a710); 
iteration (32'h49761bae,32'h4b14443e,32'hcb04e283); 
iteration (32'h4924b7a3,32'h4ab32f28,32'hca9e9834); 
iteration (32'hc8d618ad,32'hcafe9dc4,32'h4af13c39); 
iteration (32'h4aca529b,32'hcb0a3c7e,32'h4b6f65cc); 
iteration (32'h4ab54e05,32'hcade75dd,32'h4b49e1f1); 
iteration (32'hcac15572,32'hc99049a1,32'hca9d430a); 
iteration (32'h49f0201e,32'h4aa5df36,32'hca53ae5d); 
iteration (32'hcaa6c1ac,32'hcadc957c,32'h49d74f40); 
iteration (32'h49ac8a80,32'h4af9c72a,32'hcacea48a); 
iteration (32'h4b083d33,32'h497b6ce9,32'h4af10cc9); 
iteration (32'h4a9368b5,32'hcb125d42,32'h4b5c119c); 
iteration (32'h4a33c8aa,32'hcb111528,32'h4b3e0752); 
iteration (32'hca061c55,32'hcab3d57d,32'h4a618ea5); 
iteration (32'hcae3c063,32'h49dc8742,32'hcb0d711a); 
iteration (32'hc915d619,32'h4942c929,32'hc9ac4fa1); 
iteration (32'hcad1128f,32'h4aed1a24,32'hcb5f165a); 
iteration (32'h4a611389,32'hcb0b439d,32'h4b43887f); 
iteration (32'hcb127354,32'h4adc5199,32'hcb804e10); 
iteration (32'h4a6becee,32'hcad715cc,32'h4b268622); 
iteration (32'h4b157531,32'hca9ed59e,32'h4b64e000); 
iteration (32'h4ab1160c,32'h4ae06419,32'hc9bd3834); 
iteration (32'hc937d80f,32'hcae1f023,32'h4acaf521); 
iteration (32'h4a5f2aa7,32'h4a20f200,32'h4978e29c); 
iteration (32'h4accfd05,32'hc9be30da,32'h4afc893c); 
iteration (32'hcaca4a75,32'h4a4a9637,32'hcb17cac8); 
iteration (32'hcaf14322,32'hcab6e9e9,32'hc9e964e4); 
iteration (32'hca8b13f3,32'h4a75a531,32'hcb02f346); 
iteration (32'hc93212ae,32'hca986224,32'h4a821fce); 
iteration (32'h4adc4c5f,32'h4ae6d437,32'hc8a87d80); 
iteration (32'hc9c9f2fa,32'hc86251ca,32'hc9ada8c1); 
iteration (32'h4a703cd2,32'hcac06f3d,32'h4b1c46d3); 
iteration (32'h4ae4fbcc,32'hcac700cf,32'h4b55fe4e); 
iteration (32'h4ae4164c,32'hca36d01b,32'h4b1fbf2d); 
iteration (32'h48bbd0b6,32'h484d50eb,32'h482a5081); 
iteration (32'hcb12bbab,32'h4a3d70cc,32'hcb4217de); 
iteration (32'h4a02ffd5,32'h4addd524,32'hca9c553a); 
iteration (32'h4aefba76,32'h4b088b7a,32'hc98571f8); 
iteration (32'h4b0375e4,32'h4b0b2b30,32'hc8f6a980); 
iteration (32'hcaad81d0,32'h4a759728,32'hcb1426b2); 
iteration (32'hc944e304,32'hcad51a95,32'h4abc7e34); 
iteration (32'h4a81e681,32'h4a9da094,32'hc95dd098); 
iteration (32'hcaf8bda7,32'h4ad70cc6,32'hcb67e536); 
iteration (32'hcaba7e1a,32'hcb0fb60d,32'h4a49dc00); 
iteration (32'h4a4ea303,32'h4a0e61b5,32'h4980829c); 
iteration (32'h4b16f25b,32'hcaee1891,32'h4b86ff52); 
iteration (32'h4afba603,32'h48cb5775,32'h4aeef08c); 
iteration (32'h49d87b13,32'h4ae0753d,32'hcaaa5678); 
iteration (32'h4a061300,32'h4b09e82a,32'hcad0c6d4); 
iteration (32'hcb04929d,32'hcaa7e5f9,32'hca427e82); 
iteration (32'h4b02a11c,32'hcb01dd53,32'h4b823f38); 
iteration (32'hcad1d5d4,32'hc8c8fa54,32'hcac5462f); 
iteration (32'hcacbed27,32'h4a80cb69,32'hcb265c48); 
iteration (32'hcad645e9,32'hcb07f638,32'h49e69a1c); 
iteration (32'h4a16c2ec,32'hcabf012f,32'h4b053152); 
iteration (32'h4a93d20a,32'h4a413ade,32'h49ccd26c); 
iteration (32'h4a6179f6,32'hc9e50ea5,32'h4aaa00a4); 
iteration (32'hca97d368,32'h4a458704,32'hcafa96ea); 
iteration (32'hc9e664a8,32'h47c4b2ef,32'hc9f2afd7); 
iteration (32'h4a868115,32'hca288f55,32'h4adac8c0); 
iteration (32'h4b0a0b7c,32'hcb01d9e9,32'h4b85f2b2); 
iteration (32'hcacb7b8b,32'h4ae4c0aa,32'hcb581e1a); 
iteration (32'hcafebbef,32'hca8e7c6c,32'hca607f06); 
iteration (32'h4b0d34c0,32'hc97c086b,32'h4b1cf547); 
iteration (32'h4ab6fc17,32'hca4b2136,32'h4b0e4659); 
iteration (32'hca7bf5ae,32'hcad6c0ba,32'h4a318bc6); 
iteration (32'h4acbb890,32'h4ac75a9c,32'h480bbe80); 
iteration (32'h4b0c4162,32'h49eafc74,32'h4addc3a7); 
iteration (32'hca154d80,32'hc9e2a288,32'hc90ff0f0); 
iteration (32'hc9a52f8a,32'hcb153afc,32'h4b00950b); 
iteration (32'h4a060363,32'hc8e0dd83,32'h4a221f13); 
iteration (32'h4af58ab6,32'hc9cd8727,32'h4b147640); 
iteration (32'h4a85385f,32'hcab6bcdf,32'h4b1dfa9f); 
iteration (32'hcb059572,32'h49745b17,32'hcb14db23); 
iteration (32'h4ae881a3,32'hcb0d4cd1,32'h4b80c6d1); 
iteration (32'h4b138278,32'h4aae214b,32'h4a71c74a); 
iteration (32'h4a781735,32'h4ad511d3,32'hca320c71); 
iteration (32'h4a82b0fc,32'h4a8695d6,32'hc7f93680); 
iteration (32'hc7e227fb,32'h4ab5b67f,32'hcab93f1f); 
iteration (32'h4addb7de,32'h49b0577b,32'h4ab1a1ff); 
iteration (32'hcb1776eb,32'h4b122ee9,32'hcb94d2ea); 
iteration (32'h4ac08c29,32'h49820bd2,32'h4aa00934); 
iteration (32'hca0e98d0,32'hcae0eb78,32'h4a999f10); 
iteration (32'h4aedc583,32'h4b07a09d,32'hc985eedc); 
iteration (32'h4ae82785,32'h4a8cff79,32'h4a365018); 
iteration (32'h491c9a7e,32'hcb15466e,32'h4b1f1016); 
iteration (32'hca84a834,32'hcab90546,32'h49d17448); 
iteration (32'h4a49b7de,32'h49cd8fbe,32'h49c5dffe); 
iteration (32'h4a5bcef0,32'h49bd0652,32'h49fa978e); 
iteration (32'hcadb8df1,32'h4894229b,32'hcae4d01b); 
iteration (32'hca8db4fa,32'h4a9b79e3,32'hcb14976e); 
iteration (32'hc9e1c181,32'hca829d94,32'h4a145a68); 
iteration (32'hcab90160,32'h4abb188a,32'hcb3a0cf5); 
iteration (32'h4afa8b70,32'h4a123f9f,32'h4ab16ba0); 
iteration (32'h4ad45d9f,32'h4aa6d9bc,32'h49b60f8c); 
iteration (32'hc9ec62c0,32'h4a6627f0,32'hcaae2ca8); 
iteration (32'h47938001,32'hcacc1cde,32'h4ace6ade); 
iteration (32'h4aec00b7,32'hcaa6f3a4,32'h4b497a2e); 
iteration (32'h4a99ba60,32'hc9ea7674,32'h4ad457fd); 
iteration (32'hcaa60ca8,32'h4ac960e0,32'hcb37b6c4); 
iteration (32'hcb0bdc23,32'hcacef0e7,32'hca118ebe); 
iteration (32'h46f2a77a,32'hcb0927ae,32'h4b09a102); 
iteration (32'hc94d4294,32'h4767df95,32'hc95bc08d); 
iteration (32'hca44b53a,32'hcb0558fa,32'h4aa85757); 
iteration (32'hc9bbdf26,32'hc9c02f4b,32'h470a04a0); 
iteration (32'h4afe7b09,32'hcaaba7a3,32'h4b551156); 
iteration (32'hcb13e6e0,32'h4954a106,32'hcb2130f0); 
iteration (32'h4a83c36e,32'h4ac39df7,32'hc9ff6a24); 
iteration (32'h4a75e6df,32'h4a89b86c,32'hc8ec4fc8); 
iteration (32'hcae0f384,32'hca43edc7,32'hca7df941); 
iteration (32'hcaa90bb3,32'h4a63352f,32'hcb0d5325); 
iteration (32'hc95ade7c,32'hca5470f7,32'h4a1db958); 
iteration (32'hcafc1a2a,32'hc8b6eef8,32'hcaf0ab3a); 
iteration (32'h484d1557,32'h4a327c2b,32'hca25aad6); 
iteration (32'h4b0386e4,32'h48ffeaa7,32'h4af70f1e); 
iteration (32'hc97b861c,32'h4a062ffd,32'hca451184); 
iteration (32'h4a6f6dfd,32'hc73d14a4,32'h4a726250); 
iteration (32'hca9d2d1a,32'hcaae742a,32'h490a3880); 
iteration (32'hc9946b74,32'h4b056a39,32'hcb17f7a8); 
iteration (32'hca2f3489,32'hc95336af,32'hc9f4cdba); 
iteration (32'h4b000140,32'h4a9692e6,32'h4a52df34); 
iteration (32'h4a026bf1,32'h49310eec,32'h49ac506c); 
iteration (32'hcadb6f37,32'h4aab54a6,32'hcb4361ee); 
iteration (32'h49a18478,32'hca4f2005,32'h4a8ff120); 
iteration (32'h4b06597c,32'hcb09528e,32'h4b87d605); 
iteration (32'h4b04443e,32'h4ad07f0d,32'h49e025bc); 
iteration (32'h4b0b75a2,32'h49b35b9f,32'h4aea145c); 
iteration (32'hc89e8235,32'h4b091aa4,32'hcb0e0eb6); 
iteration (32'hca382475,32'h4ac60251,32'hcb110a46); 
iteration (32'hcaf79589,32'hcaf6cd2b,32'hc6c85e00); 
iteration (32'h4a5982dd,32'hca2f7267,32'h4ac47aa2); 
iteration (32'hc972b2eb,32'hca4c13f1,32'h4a0f6736); 
iteration (32'h4b0d6344,32'hcad7b85d,32'h4b793f72); 
iteration (32'h4b075649,32'h4b0c99f1,32'hc8a87500); 
iteration (32'hc8551100,32'hca694a2f,32'h4a5bf91f); 
iteration (32'h49ea3e67,32'hcacf0b3c,32'h4b04cd6b); 
iteration (32'h4aa47fab,32'h46e090fa,32'h4aa39f1a); 
iteration (32'hca16b624,32'h4aa5aa85,32'hcaf10597); 
iteration (32'hcac8b988,32'hc9b0f3c2,32'hca9c7c98); 
iteration (32'h4ac4778a,32'h4adf7fa0,32'hc95840b0); 
iteration (32'hcad2571c,32'hca0fea30,32'hca8a6204); 
iteration (32'h4b14ec9c,32'h4b0d78dd,32'h48ee77e0); 
iteration (32'hc83c2f70,32'h4ac3493c,32'hcac92ab8); 
iteration (32'hc83c7424,32'h4aac51ef,32'hcab23590); 
iteration (32'hcab4b962,32'hca24cdb1,32'hca44a513); 
iteration (32'hca143057,32'h48840ccb,32'hca24b1f0); 
iteration (32'h4a74c492,32'hca1c2c61,32'h4ac8787a); 
iteration (32'h4a5bc825,32'h49773437,32'h4a1dfb17); 
iteration (32'hcae2d605,32'h4b04e3c4,32'hcb764ec6); 
iteration (32'h4b060b6e,32'h4a8e6ac7,32'h4a7b582a); 
iteration (32'hcb0e86c6,32'h4ae269cf,32'hcb7fbbae); 
iteration (32'h4affda50,32'hcb09020a,32'h4b847799); 
iteration (32'hca814201,32'h4b14f24d,32'hcb55934e); 
iteration (32'hcaa7d437,32'h4a56c7de,32'hcb099c13); 
iteration (32'h4ac65268,32'h4ad49a1a,32'hc8e47b20); 
iteration (32'h495ee284,32'h4af2d246,32'hcad6f5f6); 
iteration (32'h4a24cba8,32'hcaebf203,32'h4b1f2bec); 
iteration (32'hcab22f45,32'h4aa11809,32'hcb29a3a7); 
iteration (32'hc99a39b9,32'h492f4586,32'hc9f1dc7c); 
iteration (32'hc93694f6,32'h4a617d23,32'hca879130); 
iteration (32'hcaffeca3,32'h4a2b083e,32'hcb2ab861); 
iteration (32'hca39cd3e,32'h4b0bc37f,32'hcb3a36ce); 
iteration (32'h4b0ac18f,32'hcaa5fee9,32'h4b5dc104); 
iteration (32'hca9edea7,32'h4a89fefb,32'hcb146ed1); 
iteration (32'h4acdcfd2,32'hcaf781f1,32'h4b62a8e2); 
iteration (32'hcad18778,32'h4a87a8d9,32'hcb2c9828); 
iteration (32'h4a0e7717,32'h4b07f028,32'hcac8a4c4); 
iteration (32'h4b0c3b21,32'hca9e027e,32'h4b5b3c60); 
iteration (32'h4a9ce875,32'h49a0f31e,32'h4a69575b); 
iteration (32'hcb0d2078,32'hcacaca12,32'hca1eedbc); 
iteration (32'hcb1809e2,32'hcb0e94be,32'hc9175240); 
iteration (32'hc6984cdd,32'h4b180236,32'hcb184e5c); 
iteration (32'hca9d5fc4,32'h4a686a46,32'hcb08ca74); 
iteration (32'h47bc5af5,32'h4b1507b0,32'hcb138efa); 
iteration (32'hcaaa3af2,32'hca61c757,32'hc9e55d1a); 
iteration (32'h4a2206b2,32'h4aa07ca2,32'hca1ef292); 
iteration (32'h4a82c6b1,32'hcb01b6fe,32'h4b431a56); 
iteration (32'h49379b00,32'hcaa135cd,32'h4ab8292d); 
iteration (32'h4ab993b6,32'hca135748,32'h4b019fad); 
iteration (32'h49edcd9c,32'hca9aecfc,32'h4ad66063); 
iteration (32'hc8069434,32'hc7a56348,32'hc74f8a40); 
iteration (32'h48b74f24,32'hca8047ad,32'h4a8bbc9f); 
iteration (32'hca477b8f,32'hca893915,32'h4995ed36); 
iteration (32'h4ac953bd,32'hcab0877a,32'h4b3ced9c); 
iteration (32'hca982cf7,32'hcb0ac9ef,32'h4a7acdce); 
iteration (32'h496fe392,32'hcb136f94,32'h4b226dcd); 
iteration (32'hcad5b5ac,32'hca846ba5,32'hca22940e); 
iteration (32'hcaa40e6d,32'h4a57f473,32'hcb080453); 
iteration (32'h4a5479d9,32'h4ac39428,32'hca32ae77); 
iteration (32'hca9a149a,32'h4adc9331,32'hcb3b53e6); 
iteration (32'h4b0e2ddb,32'hcb12721f,32'h4b904ffd); 
iteration (32'h4afa6e21,32'h4b006f45,32'hc84e0d20); 
iteration (32'hc9d5c5d4,32'h4ae8830c,32'hcb0efa40); 
iteration (32'hcb0f08c6,32'hca2a27ad,32'hcac8fdb6); 
iteration (32'hcb16d3e5,32'h4b0989ac,32'hcb902ec8); 
iteration (32'h4a025cf2,32'h4ac5d68f,32'hca84a816); 
iteration (32'hcac2c1b5,32'hca63a8aa,32'hca21dac0); 
iteration (32'hc7d1d1bf,32'hcab0c2f0,32'h4aad7ba9); 
iteration (32'hcadc19e7,32'hc9b70e5f,32'hcaae564f); 
iteration (32'h4a54ed28,32'hca8a91c1,32'h4af50855); 
iteration (32'hca8443ef,32'h4a4841b2,32'hcae864c8); 
iteration (32'hc9f4ca65,32'hcaf28a4c,32'h4ab557b3); 
iteration (32'hca52649b,32'hcb0c8533,32'h4aafd818); 
iteration (32'h4b0bee8e,32'h4b013bb0,32'h492b2de0); 
iteration (32'hcaf105e1,32'h4ae4456a,32'hcb6aa5a6); 
iteration (32'h4b039df0,32'hca921591,32'h4b4ca8b8); 
iteration (32'hca99d0f5,32'hcaf893eb,32'h4a3d85ec); 
iteration (32'hcaf41c21,32'hcb0dd135,32'h499e1924);

/////////////////////////////////////////////////////////////////////////
//
//Exception Cases
//
////////////////////////////////////////////////////////////////////////

iteration (32'h0000_0000,32'h3EC7_AE14,32'h3EC7_AE14);

iteration (32'h3EC7_AE14,32'h0000_0000,32'h3EC7_AE14);

iteration (32'h0000_0000,32'h0000_0000,32'h0000_0000);

iteration (32'h7F80_0000,32'h7F90_0100,32'h0000_0000);

iteration (32'h7F80_0000,32'h3EC7_AE14,32'h0000_0000);

iteration (32'h3EC7_AE14,32'h7F80_0000,32'h0000_0000);

iteration (32'h7F80_0000,32'h0000_0000,32'h0000_0000);

iteration (32'h7F90_0100,32'h7F80_0000,32'h0000_0000);

@(negedge clk)
$stop;

end

/*
task perform_reset;
	begin
		@(negedge clk)
		reset = 1'b0;
		@(negedge clk)
		reset = 1'b1;
	end
endtask
*/

task iteration(
input [31:0] operand_a,operand_b,expected_value);

begin
	@(negedge clk)
	begin
		a_operand = operand_a;
		b_operand = operand_b;
	end

	@(posedge clk)
	begin
		#1;
		if (expected_value[31:20] == result[31:20])
			$display ("Test Passed ");
		else 
			$display ("Test Failed A => %h, B => %h, Result Obtained => %h, \ Expected Value => %h - Line Number",operand_a,operand_b,result,expected_value);
	end
end

endtask

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
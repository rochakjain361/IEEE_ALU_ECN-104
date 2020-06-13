`timescale 0.1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 10:30:32
// Design Name: 
// Module Name: Alu_multiplication_tb
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

//`include "Alu_multiplication.v"

module Alu_multiplication_tb();
reg [31:0] a_operand,b_operand;
wire Exception,Overflow,Underflow;
wire [31:0] result;
integer i = 1;
reg clk = 1'b1;

Alu_multiplication dut(a_operand,b_operand,Exception,Overflow,Underflow,result);

always clk = #5 ~clk;

initial
begin
iteration (32'h4b15315b,32'h4aefa758,32'h568baa9a); 
iteration (32'hca0381d9,32'hcae0abcf,32'h5566d3c0); 
iteration (32'hcb120f40,32'h4b09d056,32'hd69d420d); 
iteration (32'hcb103a3b,32'h4b15cc59,32'hd6a8ca0a); 
iteration (32'hcacf6015,32'h4aecfe69,32'hd63ffaaa); 
iteration (32'hca6cb7cb,32'h4b10653a,32'hd60584fc); 
iteration (32'hca0f3f61,32'hcad2f82b,32'h556c19b6); 
iteration (32'h4b126284,32'h4aeff9b8,32'h568938c4); 
iteration (32'h4ac4bfbd,32'h4ade62c7,32'h562aea30); 
iteration (32'h4a8c7b5b,32'h4a04de3e,32'h5511d320); 
iteration (32'hc9cb7fe8,32'h4a0e8e4a,32'hd462a41d); 
iteration (32'hcac5267e,32'hca157137,32'h55662d2f); 
iteration (32'h4ac804dc,32'hc9e163c9,32'hd5301a3c); 
iteration (32'h4ae99d96,32'h4ac5817d,32'h56343c6f); 
iteration (32'hcaca0afe,32'hcb07c686,32'h565650f4); 
iteration (32'h4a9163ce,32'hc8a9ac64,32'hd3c0b996); 
iteration (32'hc9cc6125,32'h497028ea,32'hd3bfbbbd); 
iteration (32'h4759cecf,32'hca9b10e4,32'hd283ee96); 
iteration (32'h4ad63861,32'h4a90eb08,32'h55f288c6); 
iteration (32'h4b0fc344,32'hc9a75dea,32'hd53bfa3d); 
iteration (32'h49cbe6eb,32'hca45cf2c,32'hd49d8db6); 
iteration (32'hcae6cef8,32'h4b0b2a90,32'hd67af181); 
iteration (32'h4af3a97a,32'h49c1d015,32'h553878d3); 
iteration (32'hcafedffa,32'hca2ee52f,32'h55ae2069); 
iteration (32'h4ad899e9,32'h4aa3aed5,32'h560a7dec); 
iteration (32'hc9996032,32'h49af1134,32'hd3d1c621); 
iteration (32'hcb035aa9,32'hcae4e050,32'h566adfae); 
iteration (32'h4a1c9924,32'h4ae7d20f,32'h558dceae); 
iteration (32'h4af7d268,32'hcb0784ea,32'hd68330a0); 
iteration (32'hc93b87ea,32'hc8ffe1f7,32'h52bb71e9); 
iteration (32'hcb063484,32'h4ad8a301,32'hd6632387); 
iteration (32'hca1c6fd9,32'hcb07f268,32'h55a62639); 
iteration (32'hcacde35e,32'hcb0aa69e,32'h565f0522); 
iteration (32'h4a828a6a,32'h4942d809,32'h5446b61b); 
iteration (32'h4a4fc9d9,32'h4a9ac833,32'h557b43d7); 
iteration (32'h4b02ba2f,32'h4a25e2b0,32'h55a96b85); 
iteration (32'h4a6c5106,32'hc9db3958,32'hd4ca5e3f); 
iteration (32'h4ab33771,32'hca96d4ef,32'hd5d32f1b); 
iteration (32'h4ad864d9,32'hc982b3c2,32'hd4dcf651); 
iteration (32'h4a15d5af,32'h49bf7914,32'h54602297); 
iteration (32'hcac2e55c,32'hcb01ca80,32'h56459f7c); 
iteration (32'h4ab54340,32'h4a7f5b12,32'h55b4ce78); 
iteration (32'hc9c71400,32'hc8f1eecb,32'h533c2386); 
iteration (32'h4a62aef8,32'h4aef8fb8,32'h55d4209c); 
iteration (32'hcaea443f,32'h4aadb7f1,32'hd61ef872); 
iteration (32'hcaaf9bde,32'h4a3bead0,32'hd580e7ee); 
iteration (32'hcb167112,32'h4a9f46cf,32'hd63b33ad); 
iteration (32'h49601b1b,32'h4b04f627,32'h54e8caec); 
iteration (32'hca34d8a7,32'hca9fa5c8,32'h55618f59); 
iteration (32'hcb0e3b51,32'h4afb7005,32'hd68bb265); 
iteration (32'h4afe9860,32'hcb0482ff,32'hd683c8d8); 
iteration (32'hcad8022c,32'hcaac7cbe,32'h56118ab7); 
iteration (32'hc91859a4,32'h4aec6605,32'hd48caf5a); 
iteration (32'h4903b473,32'hcac6ea3f,32'hd44cac29); 
iteration (32'h4ab93ea1,32'hcaa4b958,32'hd5ee647a); 
iteration (32'hc9f7c77d,32'hcad4f1eb,32'h554e1b5a); 
iteration (32'hca33640b,32'h49d26899,32'hd493715d); 
iteration (32'hcb053bb7,32'h4b12455c,32'hd698404f); 
iteration (32'h4b03e29a,32'hca6aa234,32'hd5f1c162); 
iteration (32'h49f69879,32'h48c91e8c,32'h5341bb24); 
iteration (32'h4a368a65,32'hca9287e0,32'hd550f7a1); 
iteration (32'h4a1f3b5f,32'hca9fc7ec,32'hd546c474); 
iteration (32'hcaa91e41,32'h4aee650d,32'hd61d7ce2); 
iteration (32'h49a4b06e,32'h49e962b4,32'h54162413); 
iteration (32'hc81dc648,32'hcace9c16,32'h537eab81); 
iteration (32'h4b093a48,32'h4a38442b,32'h55c58cdd); 
iteration (32'hcaebe179,32'hcb15ef4b,32'h568a26b8); 
iteration (32'h48404ec3,32'h49d9abd3,32'h52a383d6); 
iteration (32'hcad5d981,32'hcb0c96ae,32'h566ae1a3); 
iteration (32'hc8cf02ab,32'hcae103f0,32'h5435f487); 
iteration (32'hcaad1b30,32'h4aaee6c7,32'hd5ec890f); 
iteration (32'hcb01569d,32'hcb0e2005,32'h568f9c71); 
iteration (32'h470c51d3,32'hca2cac22,32'hd1bd4aa7); 
iteration (32'h4a706adf,32'hcb098e3a,32'hd6012ec3); 
iteration (32'hc7a8ddc9,32'h4ac82b11,32'hd30409ad); 
iteration (32'hc93bfdd1,32'hc9e80c7e,32'h53aa6732); 
iteration (32'h48c02a75,32'h4b11c15c,32'h545ad263); 
iteration (32'hcad23de7,32'hcb0984dc,32'h5661e07a); 
iteration (32'h49f3d787,32'hcace8c7a,32'hd544bd3d); 
iteration (32'h49b0e190,32'hca15c5a5,32'hd44ef7b1); 
iteration (32'h4a9019b3,32'h4a973640,32'h55aa3b64); 
iteration (32'h4a0d07ce,32'h4b137ca3,32'h55a2804a); 
iteration (32'h4acdc9f8,32'hca7b7642,32'hd5ca2416); 
iteration (32'hc981a1ec,32'h4a5c4713,32'hd45f1649); 
iteration (32'hcaf1ab0e,32'h4abe83ba,32'hd633d94f); 
iteration (32'hc991f810,32'h4acfcda9,32'hd4ecf9b2); 
iteration (32'hc9d62b70,32'hc99ac894,32'h54017def); 
iteration (32'hcafb6a8b,32'h4ac639a6,32'hd642ad05); 
iteration (32'h4ac44b94,32'hcad6d4c8,32'hd624ba56); 
iteration (32'hca86dd99,32'hc9e62fe2,32'h54f288a2); 
iteration (32'h4a707c3d,32'hcaf05ece,32'hd5e1cd88); 
iteration (32'h4b1227dd,32'hca12c141,32'hd5a79222); 
iteration (32'hc99115ad,32'hcacc51d1,32'h54e79748); 
iteration (32'h4a50aab9,32'hcb0cb030,32'hd5e559f3); 
iteration (32'h4b0caf8f,32'h496b9810,32'h550178b9); 
iteration (32'hca8b289a,32'hcacb0844,32'h55dcbb61); 
iteration (32'hca5f2a91,32'h4a6b97c5,32'hd54d6061); 
iteration (32'hcb109950,32'hca4035fd,32'h55d922f5); 
iteration (32'h48906027,32'hcaf4689e,32'hd409d6a5); 
iteration (32'h4a8c57da,32'hcafbcf78,32'hd60a0be0); 
iteration (32'hcb16b5fa,32'hcb002887,32'h5696e5b2); 
iteration (32'hcac199c0,32'hca1ec8f4,32'h557029ba); 
iteration (32'h4aa39ac8,32'h4ab98f86,32'h55ed2d27); 
iteration (32'h4a6f27ba,32'h4b08cc27,32'h55ff97a6); 
iteration (32'h4958fe8f,32'hcb06f857,32'hd4e4cf7e); 
iteration (32'h4a36eea1,32'hcac247af,32'hd58ad40f); 
iteration (32'hcabdab7c,32'hcaf214f9,32'h56335ba5); 
iteration (32'h4b04751d,32'hcad13c86,32'hd65885db); 
iteration (32'h49c3f8e1,32'h4a82cb96,32'h54c84077); 
iteration (32'h4a7adcde,32'h4b026fd0,32'h55ffa375); 
iteration (32'hca316f22,32'h498fa163,32'hd44719df); 
iteration (32'hcaf8414b,32'hcafec82e,32'h567712e8); 
iteration (32'h4991e7ea,32'hcb0e6eaa,32'hd5225b6d); 
iteration (32'h4a907a5f,32'h4af55387,32'h560a7441); 
iteration (32'hcb007856,32'h4ab31a1f,32'hd633c280); 
iteration (32'h4a30be92,32'h4aeb484e,32'h55a270db); 
iteration (32'hcb10d817,32'h4af4f603,32'hd68a9927); 
iteration (32'h4ac0bc0e,32'h4a9e8c34,32'h55eebb3d); 
iteration (32'h4a6277a3,32'hcaff3be2,32'hd5e1ca25); 
iteration (32'h4a491e45,32'hcb000cab,32'hd5c9322d); 
iteration (32'hcaa3ab12,32'hca5edc2b,32'h558e7b1c); 
iteration (32'h4a5aa589,32'h4a00d7ac,32'h54dc15f1); 
iteration (32'hcac5ed20,32'hc9ece3ce,32'h553726ba); 
iteration (32'h48aef0e8,32'h49142621,32'h524a7aa9); 
iteration (32'h4ab6ca88,32'h4a643ca7,32'h55a2f7b0); 
iteration (32'h4abc688a,32'h4b0be894,32'h564defdd); 
iteration (32'h4acbd149,32'h4948fc7d,32'h54a00487); 
iteration (32'hc9c05386,32'h4a414bf9,32'hd491380c); 
iteration (32'hcac03849,32'hca73df04,32'h55b71ce1); 
iteration (32'h4acde81b,32'h4a92e692,32'h55ec4fa7); 
iteration (32'h49311965,32'hc970a273,32'hd3267830); 
iteration (32'h491b60ac,32'h4b16a79b,32'h54b6e0be); 
iteration (32'h4a5f80d0,32'h49227047,32'h540dd18a); 
iteration (32'h4ab4be2a,32'hca508cbd,32'hd5933de0); 
iteration (32'hc9328cb3,32'hca568071,32'h54159b33); 
iteration (32'hcb0ce058,32'hcaaf3339,32'h5640d318); 
iteration (32'hcad03923,32'hc94a74d5,32'h54a4ac1d); 
iteration (32'hca1deeba,32'hcac988b6,32'h5578a98e); 
iteration (32'h49d9b510,32'h49c3863f,32'h54264716); 
iteration (32'hca0a3b44,32'hcab4674c,32'h5542d2e5); 
iteration (32'h4acf98d5,32'h4abc1b90,32'h56188a96); 
iteration (32'hcaca31e7,32'h4aa268b3,32'hd6004646); 
iteration (32'hca90863d,32'hcae9323c,32'h5603a68a); 
iteration (32'hcb04984e,32'h49aef635,32'hd5353e16); 
iteration (32'hca6fc506,32'hcaaad22b,32'h559ffdae); 
iteration (32'hc9839e49,32'hcaeaf571,32'h54f199bf); 
iteration (32'h4afc17a5,32'h49b4217b,32'h55316198); 
iteration (32'hca5abdb7,32'hca84cbb2,32'h5562efbe); 
iteration (32'hca628e6c,32'hc99d9d76,32'h548b7cb2); 
iteration (32'h4b11f1a8,32'h4af00b64,32'h5688d90c); 
iteration (32'hcabd3bec,32'hca9d70b9,32'h55e8c225); 
iteration (32'hca3894d0,32'hca914e1f,32'h5551893b); 
iteration (32'h49833749,32'hcb07723f,32'hd50ad96d); 
iteration (32'h4a127e6f,32'hc92ac2b9,32'hd3c36ec7); 
iteration (32'h4a83dcbc,32'hcafde366,32'hd602c647); 
iteration (32'h4adbbff1,32'h49e466f2,32'h55440f51); 
iteration (32'hcad05d31,32'hcaa8679e,32'h5609117e); 
iteration (32'hca90b214,32'h49901728,32'hd4a2e284); 
iteration (32'hca9dba57,32'hca6ed1cb,32'h5593247f); 
iteration (32'h4b174599,32'h4a0009f4,32'h5597515c); 
iteration (32'hcad0fbe9,32'h4a814dbd,32'hd5d31ccd); 
iteration (32'hc9464116,32'hca8e58ad,32'h545c798d); 
iteration (32'hcaed2848,32'h4ae8e72a,32'hd657c2a8); 
iteration (32'h48e3f739,32'hc8855c6c,32'hd1ed837b); 
iteration (32'hcad77242,32'hca62d89e,32'h55bee92c); 
iteration (32'hc9a882e2,32'h4a79cc64,32'hd4a46dd8); 
iteration (32'h4a50ffb5,32'h4957d9ae,32'h54303878); 
iteration (32'hcaa97a1a,32'h4abe3251,32'hd5fbd3de); 
iteration (32'hcad1ae18,32'h4ab1abb4,32'hd6118601); 
iteration (32'hcb0f0813,32'h4b0cbc5d,32'hd69d4351); 
iteration (32'hca1f676f,32'h4a02fae4,32'hd4a31d7f); 
iteration (32'h4aaa4c18,32'h486c5a78,32'h539d3a55); 
iteration (32'h4a7ec6d5,32'h4a640cb2,32'h5562f5b8); 
iteration (32'hc888b4a5,32'hcac78179,32'h53d51320); 
iteration (32'hcb0a24ef,32'h4a88d243,32'hd613aa2b); 
iteration (32'hca335db7,32'hca9860e8,32'h55558715); 
iteration (32'hca8d5e23,32'h49c39b54,32'hd4d808f6); 
iteration (32'h4b156c5b,32'hc99ba247,32'hd535aea6); 
iteration (32'hc8c06650,32'hca795462,32'h53bb62ef); 
iteration (32'hca6b31ba,32'h4a8145ea,32'hd56d8894); 
iteration (32'hcac842f2,32'h4a6cd46f,32'hd5b943e5); 
iteration (32'h4ac3d0fc,32'hcacc9881,32'hd61c7f30); 
iteration (32'hcadce77d,32'hcaf967c2,32'h565736b1); 
iteration (32'h4b15f60e,32'h4a0a4e28,32'h55a208d8); 
iteration (32'h4b0bded4,32'h4957a269,32'h54eba1c1); 
iteration (32'h4a9285fb,32'h4aa6a3b7,32'h55bec12a); 
iteration (32'hcaaf61f4,32'hca7a2830,32'h55ab6130); 
iteration (32'h4b1002f7,32'h4af7106b,32'h568afc19); 
iteration (32'hc8741c69,32'hca07b766,32'h530169dd); 
iteration (32'hcaca6324,32'h49aadd68,32'hd50714e0); 
iteration (32'hca2f7203,32'h4a86f5c7,32'hd538fc3c); 
iteration (32'h4af33a21,32'h4a5a1d7a,32'h55cf3b82); 
iteration (32'h488a313d,32'h4a1aed36,32'h53274357); 
iteration (32'h4a1d2e6a,32'hca55defe,32'hd5035088); 
iteration (32'h4989a28c,32'hcb1167ae,32'hd51c599e); 
iteration (32'h4aba049c,32'hc8bb6018,32'hd4082731); 
iteration (32'hc8a20507,32'hca095d11,32'h532ddf2f); 
iteration (32'hc8685999,32'h4a9cbfce,32'hd38e44af); 
iteration (32'h4a8c3666,32'h496927da,32'h547f66ad); 
iteration (32'h4afe55dc,32'hc9295d6d,32'hd4a84380); 
iteration (32'h4a836930,32'hcb101217,32'hd613e8e8); 
iteration (32'hc96b64dd,32'hca4c26e3,32'h543bb822); 
iteration (32'hc8058955,32'h4af78bfe,32'hd3812087); 
iteration (32'h4b01c495,32'h4aada574,32'h56300b6e); 
iteration (32'hca83404e,32'hc9415768,32'h54464096); 
iteration (32'h4a3b893a,32'hcab0eeb7,32'hd5819d38); 
iteration (32'hcb06458a,32'hca821781,32'h56087748); 
iteration (32'hc8e5a088,32'hc8170392,32'h518774e4); 
iteration (32'h4b036f82,32'h4a18a4d3,32'h559cbdaa); 
iteration (32'hc9df6376,32'hcb166eea,32'h55834510); 
iteration (32'h4a4fb418,32'hca271425,32'hd5078ed4); 
iteration (32'h47e0606f,32'hcadf2872,32'hd3439774); 
iteration (32'h4b0b2eab,32'hca63ef54,32'hd5f7d900); 
iteration (32'hcaefaf5b,32'hc6478cdc,32'h51bad532); 
iteration (32'hcabaeaba,32'h4aecd14f,32'hd62ce937); 
iteration (32'h4ab8fe54,32'hcaa604e6,32'hd5eff0e9); 
iteration (32'h492b16f9,32'hcaf33f22,32'hd4a29100); 
iteration (32'h4af49e2c,32'hcaae1654,32'hd62658d8); 
iteration (32'hc98f339f,32'h48d60c9c,32'hd2ef7869); 
iteration (32'h4b1073b1,32'h4a8dd237,32'h56200cad); 
iteration (32'hcacbd01e,32'hca007b25,32'h554c9433); 
iteration (32'h4a831fde,32'hca9fbb43,32'hd5a3a16b); 
iteration (32'hcb0111a5,32'hca993663,32'h561a7dee); 
iteration (32'hcb08515b,32'hca0ed2ab,32'h55981a9d); 
iteration (32'h497e6947,32'h4a1252c4,32'h54116a4b); 
iteration (32'h4ab78dfd,32'h484d5896,32'h53933c38); 
iteration (32'h4b11db15,32'hc9378f44,32'hd4d12a78); 
iteration (32'h4a8f0900,32'h482ba05d,32'h533fc939); 
iteration (32'h4af5bf9b,32'hc96f6f00,32'hd4e5d870); 
iteration (32'hc895e541,32'h4afca8ed,32'hd413f095); 
iteration (32'h4ae4a4db,32'h4b0d0424,32'h567be4ff); 
iteration (32'h4b121e8e,32'hc9b41a71,32'hd54d9927); 
iteration (32'hcab69f02,32'hcab34cf3,32'h55ffd026); 
iteration (32'h4a3dc2d2,32'h4a5701d7,32'h551f5ffb); 
iteration (32'h4a88de3e,32'h4a86ccbe,32'h55902396); 
iteration (32'h4af136d8,32'hca926080,32'hd609ec34); 
iteration (32'hcad63e2a,32'h49cd96d6,32'hd52c0e03); 
iteration (32'h4abe631c,32'h49fe28a2,32'h553d048e); 
iteration (32'hc8e58d19,32'hca6531f9,32'h53cd8407); 
iteration (32'h4a918d9b,32'h4a091514,32'h551be188); 
iteration (32'h4a87ad9c,32'hca03a97b,32'hd50b8f53); 
iteration (32'h49eed3fb,32'hcacb5855,32'hd53db480); 
iteration (32'hca29303a,32'hca1c1f9a,32'h54ce5c8c); 
iteration (32'h4a3ef289,32'h49b0f6e2,32'h5483fee4); 
iteration (32'hcb064ec0,32'hca3fd051,32'h55c94417); 
iteration (32'h499da485,32'hca90eefe,32'hd4b27f6c); 
iteration (32'hca3a9829,32'h4ac3d0fd,32'hd58eba3b); 
iteration (32'h4ac89b3f,32'hcaf5df0e,32'hd640ab5d); 
iteration (32'hcb0915e3,32'hcad53fa8,32'h56646298); 
iteration (32'hc8f0056f,32'hc99d4c3d,32'h53137ad0); 
iteration (32'hcb01f2f0,32'hcb115694,32'h56938d19); 
iteration (32'hcafb65be,32'h4953659d,32'hd4cf98a5); 
iteration (32'h491ddc50,32'h4a74ff56,32'h54171370); 
iteration (32'h4ab58e6a,32'hcb047d0f,32'hd63bec40); 
iteration (32'hca948f90,32'hca8c9421,32'h55a328f2); 
iteration (32'hcb166ed6,32'hc92f5fc6,32'h54ce1c18); 
iteration (32'h499eea9f,32'h4af891d0,32'h551a4dce); 
iteration (32'h49e927b2,32'hcb02d45b,32'hd56e4f20); 
iteration (32'hcaeb97ff,32'hcad46032,32'h56437266); 
iteration (32'hca99974b,32'h4ac338bb,32'hd5ea408f); 
iteration (32'h4a571118,32'h4af270c9,32'h55cbace9); 
iteration (32'h4a42c37b,32'h4acc4878,32'h559b6ae8); 
iteration (32'h4b0afb01,32'h4aa8fcd1,32'h56377bf2); 
iteration (32'hca56e68c,32'h4afeadb3,32'hd5d5ca8f); 
iteration (32'hcaf20201,32'hcaeeea91,32'h5661db9c); 
iteration (32'hcabeadda,32'h490ba884,32'hd4500bd4); 
iteration (32'h4ab86c7d,32'hcadbb64d,32'hd61e4824); 
iteration (32'hc9abde16,32'h4ad70e6a,32'hd5106132); 
iteration (32'h4b0d62c2,32'h4a8cafd6,32'h561b663e); 
iteration (32'hc8bf6599,32'h4b137bd9,32'hd45c87de); 
iteration (32'hcab9447b,32'hcaa82301,32'h55f35c8c); 
iteration (32'hcae8af9c,32'h4aa8e0fd,32'hd6197fbe); 
iteration (32'hcad14de5,32'h4aff3a3a,32'hd650ac32); 
iteration (32'h4a226761,32'hcac084db,32'hd57443a2); 
iteration (32'hcb08db01,32'h499994af,32'hd52434c0); 
iteration (32'h4af5b5b9,32'hcaa94493,32'hd62276c8); 
iteration (32'h49cff4ab,32'hca47db4d,32'hd4a25956); 
iteration (32'h49bf0552,32'hca5d67d1,32'hd4a5350f); 
iteration (32'hca722ac9,32'h4b0b1345,32'hd6038f76); 
iteration (32'h4a8f06a5,32'hcb15d0d6,32'hd6276716); 
iteration (32'h4a96b824,32'hcaa6acea,32'hd5c4426a); 
iteration (32'hca4107b6,32'h4a1efbce,32'hd4efc140); 
iteration (32'h4b06fb8e,32'hc97cb757,32'hd505404b); 
iteration (32'h4a80d90a,32'h4b0be214,32'h560ccf44); 
iteration (32'hcaec13cc,32'h4a9339ab,32'hd607c48c); 
iteration (32'hcb14c14d,32'h4962f376,32'hd503e01e); 
iteration (32'h4ad40ad5,32'hcaa22576,32'hd6064de2); 
iteration (32'hcaaa784a,32'h4ac59ddd,32'hd60397b0); 
iteration (32'hca6ddfbe,32'hcb0c2e91,32'h560241a1); 
iteration (32'h4a239312,32'h49666db4,32'h54133c3b); 
iteration (32'h4a9678d1,32'hcad8df2d,32'hd5fef23c); 
iteration (32'hca435039,32'hcaf0575f,32'h55b75dde); 
iteration (32'h4ae35a80,32'h4a912aa9,32'h5600ec25); 
iteration (32'hcaa7c2db,32'hc991c2b6,32'h54bf09ee); 
iteration (32'hcab1e779,32'h4abc8c20,32'hd603075e); 
iteration (32'hcac7923e,32'h4aa5bb8b,32'hd6013376); 
iteration (32'hcaaecb50,32'hcadad5c6,32'h56156b18); 
iteration (32'hca85e53f,32'h4972c002,32'hd47dee45); 
iteration (32'h4ad71e1f,32'hcaf41fbf,32'hd64d2363); 
iteration (32'h49d0ca64,32'h4afb07ef,32'h554cbce9); 
iteration (32'h492f44a1,32'hcb0de4dc,32'hd4c24af9); 
iteration (32'h4a30deba,32'h4ad40209,32'h559279da); 
iteration (32'h49ae063b,32'h4a4d22b4,32'h548b7294); 
iteration (32'h48eabab3,32'hcb08f5ef,32'hd47b295e); 
iteration (32'hc9e1e79b,32'hcb090fae,32'h5571e590); 
iteration (32'h4af2d0a8,32'h4b013a87,32'h56752550); 
iteration (32'hca30e551,32'hcaa78fd2,32'h556791f2); 
iteration (32'h4a25f96f,32'hca30b649,32'hd4e52356); 
iteration (32'h4ada13d5,32'h4a9ca344,32'h56056f2a); 
iteration (32'h499d5db0,32'hcb1583ac,32'hd537d0f0); 
iteration (32'hc9211566,32'hcb1598ca,32'h54bc4330); 
iteration (32'h4b09ec57,32'h4a02f6ed,32'h558d1e1a); 
iteration (32'hca9a4c68,32'hcab950f0,32'h55df63ff); 
iteration (32'hcb086ad3,32'hca34f8c1,32'h55c0df55); 
iteration (32'hcb01d830,32'h48bedf2a,32'hd4419f48); 
iteration (32'h4a5f2964,32'hcadc5aba,32'hd5c016a9); 
iteration (32'hcaa0a382,32'h48911774,32'hd3b616a8); 
iteration (32'h4a85e473,32'h4abc71f0,32'h55c51eb8); 
iteration (32'hca38777c,32'hc98dadb4,32'h544c2df3); 
iteration (32'h4a885145,32'h4a8e0d46,32'h5597484b); 
iteration (32'hcafaab3b,32'hca8afb6a,32'h5608167b); 
iteration (32'hcb018003,32'hca07159a,32'h5588aade); 
iteration (32'h4acc2a5f,32'h46cf0273,32'h52251837); 
iteration (32'hc971d37f,32'h4a1beb69,32'hd413496e); 
iteration (32'h4af9cfdc,32'h4a1c43cf,32'h55987cd5); 
iteration (32'h4a96657f,32'h4b08eaee,32'h5620dfe0); 
iteration (32'hcabcfcde,32'h4ae5299c,32'hd6292cea); 
iteration (32'hcb0cf256,32'hca55b341,32'h55eb50a6); 
iteration (32'h4aff819d,32'hcb031cc5,32'hd682dc0a); 
iteration (32'h4a499c05,32'hcaf5f20c,32'hd5c1b0f0); 
iteration (32'h4aa4fd5c,32'h4ab019a2,32'h55e2fd69); 
iteration (32'h4a0a3b16,32'h4b0979ed,32'h559476e9); 
iteration (32'hc88d4c83,32'hcac915d3,32'h53ddfa3d); 
iteration (32'h4ac7df3d,32'hca96293b,32'hd5ea79fd); 
iteration (32'h4a5b2110,32'h4ad285e1,32'h55b433b8); 
iteration (32'h4b0eb840,32'hc6828b26,32'hd2118e47); 
iteration (32'hcabff656,32'h4a1e3507,32'hd56d4399); 
iteration (32'h4aadac04,32'h49100677,32'h54436a4a); 
iteration (32'h4add98d6,32'h4b071659,32'h5669dde2); 
iteration (32'h4a420cc5,32'hcb150552,32'hd5e1eaee); 
iteration (32'h4a6f0860,32'hca74c802,32'hd5648ebc); 
iteration (32'hca84741e,32'h49e36d02,32'hd4eb56ba); 
iteration (32'hcad3ae58,32'hcad193cd,32'h562d4b8c); 
iteration (32'h49405b08,32'hcb1332cb,32'hd4dd34e0); 
iteration (32'hc9ac1512,32'h4ac88205,32'hd506c7dc); 
iteration (32'h4a975ecd,32'hca9bdb15,32'hd5b84fe1); 
iteration (32'h491f1fd8,32'h49ff5e5b,32'h539ebb5e); 
iteration (32'h49cdc1a9,32'hcafeb1b9,32'hd54cb4fd); 
iteration (32'hcaddf073,32'h4af4152f,32'hd6539b8b); 
iteration (32'h4accae66,32'hc98e9cd6,32'hd4e40c44); 
iteration (32'h4a88d9b7,32'h4ad59896,32'h55e45d6d); 
iteration (32'hc8839960,32'h49d8b4f8,32'hd2decce1); 
iteration (32'h4ae78c2f,32'hcb131d98,32'hd6851043); 
iteration (32'h48517882,32'h4a9950b9,32'h537ae625); 
iteration (32'h4a933eb6,32'h49db623f,32'h54fc5e50); 
iteration (32'hca0239d6,32'h4a93978a,32'hd5162898); 
iteration (32'hcaf37a13,32'h4af0eedb,32'hd665259e); 
iteration (32'h4acf1a3b,32'hcb08b276,32'hd65d2c9e); 
iteration (32'hca5f627e,32'hcada23b4,32'h55be5907); 
iteration (32'hc9fa5072,32'h4aa3b004,32'hd5200d54); 
iteration (32'hcafdf9c3,32'h4aa1031b,32'hd61fbd28); 
iteration (32'hcac5365d,32'h4a4f613c,32'hd59fc1dd); 
iteration (32'hcaf63973,32'hcb0271a3,32'h567aecf1); 
iteration (32'h4a71a015,32'hca9940a2,32'hd590a5ad); 
iteration (32'hc542e621,32'hcac09b3b,32'h5092a2c7); 
iteration (32'hcad52d43,32'h4a9214cd,32'hd5f34a45); 
iteration (32'h4a43195a,32'hca158b14,32'hd4e3ef7f); 
iteration (32'h4aea9b39,32'h494b2f99,32'h54ba34b5); 
iteration (32'hcb012c2f,32'h4a8bbcaf,32'hd60d0465); 
iteration (32'h4b0357b8,32'hca460e0c,32'hd5cb3a1b); 
iteration (32'hca329bba,32'hcad2dde2,32'h55931e8d); 
iteration (32'hcad6d4b3,32'hca57bacc,32'h55b50964); 
iteration (32'hca31a011,32'hcaf78847,32'h55abbfff); 
iteration (32'hc9682754,32'h4b09eb75,32'hd4fa2524); 
iteration (32'h4a60bc1d,32'h4a2cddb8,32'h5517c107); 
iteration (32'h4a06b287,32'h4ad7b5a8,32'h5562ff08); 
iteration (32'h4967ce55,32'hcb08285c,32'hd4f69451); 
iteration (32'hcae201a5,32'h4a9b9fba,32'hd6096402); 
iteration (32'h4b011837,32'h4a865d8a,32'h560783b0); 
iteration (32'h4a484c2e,32'hca8052b9,32'hd548cda0); 
iteration (32'hcad77d62,32'hca6d9cd0,32'h55c80313); 
iteration (32'hcaeeb3b5,32'hcad012ca,32'h56420388); 
iteration (32'hcb0f7f90,32'h4a81b7c0,32'hd6116c8f); 
iteration (32'h4b0e2e04,32'hca9e45ac,32'hd62fce31); 
iteration (32'hcad2091f,32'h4b16599e,32'hd676b5be); 
iteration (32'h4b0f8c48,32'hcaf6b2c6,32'hd68a550c); 
iteration (32'hca0960ba,32'h4a54741a,32'hd4e404d0); 
iteration (32'h49ebb047,32'h4a824c2b,32'h54efeb48); 
iteration (32'h4ab64bbe,32'hcad1d145,32'hd61568db); 
iteration (32'h4af2884d,32'h4aa15056,32'h5618d3d4); 
iteration (32'hc810db88,32'hc9c199c1,32'h525b1904); 
iteration (32'h4b00dfdd,32'hca06f086,32'hd587dc86); 
iteration (32'hcaafebd8,32'hca5c7164,32'h55977c99); 
iteration (32'h4ac859d5,32'hcb0e59af,32'hd65ed009); 
iteration (32'hca45a8e7,32'hc9613589,32'h542de2c9); 
iteration (32'hcad5e800,32'hcb0e728f,32'h566e0cd2); 
iteration (32'h463aa508,32'hca1bed93,32'hd0e35e44); 
iteration (32'hca858481,32'hcace3234,32'h55d7159e); 
iteration (32'hcae06911,32'hcb005bb7,32'h566109dd); 
iteration (32'h4a323480,32'h4a4883c8,32'h550b94c0); 
iteration (32'hcab79e60,32'h4ac71c19,32'hd60ed044); 
iteration (32'h4a67c8d0,32'h4a167dff,32'h550841be); 
iteration (32'h4ac7e640,32'h4a394f22,32'h5590b32f); 
iteration (32'hcacff414,32'h4aa11e0a,32'hd602e0e7); 
iteration (32'h49b84e33,32'h480be384,32'h52496c84); 
iteration (32'h48f47bb2,32'h4a8c1917,32'h5405cb9b); 
iteration (32'h4ace25f2,32'h4a9a96b6,32'h55f8f861); 
iteration (32'h4ab87424,32'h4b0a0bd7,32'h5646ee47); 
iteration (32'h4aaf5003,32'hc9d9b390,32'hd51515ca); 
iteration (32'hca436493,32'hcb157542,32'h55e42612); 
iteration (32'h4b0f1f6c,32'h4af4d2d4,32'h5688dfd1); 
iteration (32'hc7d89ec1,32'hcb0c6a2d,32'h536da153); 
iteration (32'h4b0b7e2a,32'hca9ebe31,32'hd62cff01); 
iteration (32'hcac23075,32'h4a8abb89,32'hd5d278c1); 
iteration (32'hcaabd3d2,32'h49283c35,32'hd461d6d6); 
iteration (32'hcad4a424,32'h4ae5568f,32'hd63e7eba); 
iteration (32'h4acc9e1b,32'h4b10b2b8,32'h56674f90); 
iteration (32'hcb091371,32'h4af6890a,32'hd684020f); 
iteration (32'h4ab1bb7d,32'hcab6ed03,32'hd5fdffaf); 
iteration (32'h4a5ffe0a,32'h4aa8568f,32'h55934a73); 
iteration (32'h4ad9a579,32'h49c8ec09,32'h552ad1f3); 
iteration (32'hcb089653,32'hcb0f97ac,32'h569939ca); 
iteration (32'hca258cca,32'hcaaf7d28,32'h5562f85b); 
iteration (32'h4a7b66f3,32'hca58c896,32'hd554e3d9); 
iteration (32'hca6f3d7d,32'hc994c063,32'h548b0357); 
iteration (32'h4a670478,32'hcafe8aa7,32'hd5e5b38e); 
iteration (32'h4a792995,32'h4a67a289,32'h556172b7); 
iteration (32'hcaf834f4,32'hca03d1dd,32'h557f9d25); 
iteration (32'hc9ade976,32'hcb0bbe8d,32'h553dde6c); 
iteration (32'hcabc1ccb,32'h4a4c0e2a,32'hd595f15a); 
iteration (32'h4b0583e2,32'h49f9cfb4,32'h5582499a); 
iteration (32'hca81dc27,32'hca702d6c,32'h5573aade); 
iteration (32'h4aa797d8,32'hc9d6e0ed,32'hd50cac2f); 
iteration (32'h4a999a45,32'h4aa0bc60,32'h55c0e2e4); 
iteration (32'hcac1ca2d,32'h4acc1dfd,32'hd61a83cf); 
iteration (32'h4ae42d4f,32'h4aeaf774,32'h56516df9); 
iteration (32'h4b02a85a,32'hca1e85e5,32'hd5a1d07c); 
iteration (32'hc9ddf710,32'hca9f1a9a,32'h5509f384); 
iteration (32'hcb09d8c3,32'h4a63d09e,32'hd5f55714); 
iteration (32'hcab264d8,32'hca9abcbf,32'h55d7a862); 
iteration (32'hca25a64e,32'hca9d3ffb,32'h554b80c8); 
iteration (32'hcac60c46,32'h4ac9a1f8,32'hd61bfcf1); 
iteration (32'hcac62ea5,32'hca86c219,32'h55d0a55a); 
iteration (32'hca2315e7,32'h4b08f1d5,32'hd5ae7b64); 
iteration (32'h4a42276d,32'hca80d5f7,32'hd5436bf9); 
iteration (32'hcb0c51d8,32'h4a924c1f,32'hd62060cd); 
iteration (32'h48e28317,32'h4a14b344,32'h53839267); 
iteration (32'hcac75222,32'h4aad29a0,32'hd606d2ea); 
iteration (32'hcaa193ee,32'hca3c38f7,32'h556d992e); 
iteration (32'h4b1122f3,32'hcae3af04,32'hd6811537); 
iteration (32'h4a971803,32'h4a8db2d6,32'h55a7438d); 
iteration (32'hc9614700,32'hcb058e0d,32'h54eb0dc8); 
iteration (32'hcab9bd61,32'h498023a5,32'hd4b9f11a); 
iteration (32'h4a45fde0,32'hcaa60548,32'hd58066b5); 
iteration (32'hc9b05886,32'h4ab90b9d,32'hd4feeff2); 
iteration (32'hc896c6d5,32'h4a0a8925,32'hd3232fea); 
iteration (32'h49fcd7ff,32'hca50cfad,32'hd4ce3c9d); 
iteration (32'h49a6ea5e,32'h4a094886,32'h5433056b); 
iteration (32'h4ab49a38,32'hca8c8f68,32'hd5c65304); 
iteration (32'h4a8588dc,32'hcad1911e,32'hd5daa0dc); 
iteration (32'h4aa0b5ec,32'h4a885eca,32'h55ab384e); 
iteration (32'hcb0545b3,32'hc95ec5d1,32'h54e7f2d9); 
iteration (32'hcae9ed15,32'h49b52694,32'hd52587e0); 
iteration (32'hcaeb7e2b,32'h49ed3dff,32'hd55a3cd5); 
iteration (32'h4b10159e,32'h4919acf8,32'h54acfc8b); 
iteration (32'h4a19e2f0,32'h49535336,32'h53fe1022); 
iteration (32'hca7d4952,32'hcaa70e5f,32'h55a5490c); 
iteration (32'hc9bb971c,32'hcac17069,32'h550dbf4b); 
iteration (32'h49e4573d,32'hcaf1e2a9,32'hd557c04c); 
iteration (32'h4aff2819,32'hcab15185,32'hd630bbfa); 
iteration (32'hcb14641a,32'h4aad9a68,32'hd649424c); 
iteration (32'h4ac35a03,32'hcacad429,32'hd61ac6ec); 
iteration (32'h47823256,32'h4a290f08,32'h522bf5c0); 
iteration (32'h4a25efca,32'h4b1796b0,32'h55c48439); 
iteration (32'hcafc3aa7,32'h4a831e1b,32'hd6012fad); 
iteration (32'hc98225ac,32'h4ac6f167,32'hd4ca47ba); 
iteration (32'hca67b38d,32'h4a8d162a,32'hd57f63e8); 
iteration (32'hc99bcf38,32'h4a72e9b5,32'hd493d821); 
iteration (32'h4ab60210,32'hcb01c343,32'hd63883bb); 
iteration (32'hcaf5dd54,32'hc96b18fe,32'h54e1ca2d); 
iteration (32'hc9b0f878,32'hcaf6ce1c,32'h552a9d3f); 
iteration (32'h4840aad4,32'h4b0e574e,32'h53d640ed); 
iteration (32'h4acf780a,32'h4a41490a,32'h559ca4b1); 
iteration (32'hcb13d298,32'hcabca013,32'h5659d62c); 
iteration (32'h49e0f793,32'h4a930d72,32'h550139fa);  
iteration (32'hca616603,32'h499a6f55,32'hd487f964); 
iteration (32'h4a1b2477,32'hc8b223cf,32'hd357ea1c); 
iteration (32'h494af25d,32'h4ad1a370,32'h54a6316f); 
iteration (32'h486690db,32'hcb16e184,32'hd407e3fd); 
iteration (32'hca64c2fd,32'h4a09206b,32'hd4f512a3); 
iteration (32'h4aca81a4,32'h4acc212e,32'h5621798e); 
iteration (32'h4a433e78,32'h4a43d054,32'h55155778); 
iteration (32'h490a94b2,32'hcaa275da,32'hd42fe3c9); 
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
if (Expected_result == result)
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
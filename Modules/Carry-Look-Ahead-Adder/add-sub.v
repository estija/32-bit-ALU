`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 03:15:06 AM
// Design Name: 
// Module Name: add_sub
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
module add_sub(input [31:0]D,input cnt,output[31:0]B);
xor x0(B[0],D[0],cnt);
xor x1(B[1],D[1],cnt);
xor x2(B[2],D[2],cnt);
xor x3(B[3],D[3],cnt);
xor x4(B[4],D[4],cnt);
xor x5(B[5],D[5],cnt);
xor x6(B[6],D[6],cnt);
xor x7(B[7],D[7],cnt);
xor x8(B[8],D[8],cnt);
xor x9(B[9],D[9],cnt);
xor x10(B[10],D[10],cnt);
xor x11(B[11],D[11],cnt);
xor x12(B[12],D[12],cnt);
xor x13(B[13],D[13],cnt);
xor x14(B[14],D[14],cnt);
xor x15(B[15],D[15],cnt);
xor x16(B[16],D[16],cnt);
xor x17(B[17],D[17],cnt);
xor x18(B[18],D[18],cnt);
xor x19(B[19],D[19],cnt);
xor x20(B[20],D[20],cnt);
xor x21(B[21],D[21],cnt);
xor x22(B[22],D[22],cnt);
xor x23(B[23],D[23],cnt);
xor x24(B[24],D[24],cnt);
xor x25(B[25],D[25],cnt);
xor x26(B[26],D[26],cnt);
xor x27(B[27],D[27],cnt);
xor x28(B[28],D[28],cnt);
xor x29(B[29],D[29],cnt);
xor x30(B[30],D[30],cnt);
xor x31(B[31],D[31],cnt);
endmodule

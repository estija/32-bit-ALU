`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 03:13:35 AM
// Design Name: 
// Module Name: carry_gen
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
module carry_gen(input [31:0]A,B,p,g, output [31:0]C, input Cin, output Cout);
assign C[0]=Cin;
assign C[1]=g[0]| (p[0]&Cin);
assign C[2]=g[1]| (p[1]&g[0])| (p[1]&p[0]&Cin);
assign C[3]=g[2]| (p[2]&g[1])| (p[2]&p[1]&g[0])| (p[2]&p[1]&p[0]&Cin);
assign C[4]=g[3]| (p[3]&g[2])| (p[3]&p[2]&g[1])| (p[3]&p[2]&p[1]&g[0])| (p[3]&p[2]&p[1]&p[0]&Cin);
assign C[5]=g[4]| (p[4]&g[3])| (p[4]&p[3]&g[2])| (p[4]&p[3]&p[2]&g[1])| (p[4]&p[3]&p[2]&p[1]&g[0])| (p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[6]=g[5]| (p[5]&g[4])| (p[5]&p[4]&g[3])| (p[5]&p[4]&p[3]&g[2])| (p[5]&p[4]&p[3]&p[2]&g[1])| (p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[7]=g[6]| (p[6]&g[5])| (p[6]&p[5]&g[4])| (p[6]&p[5]&p[4]&g[3])| (p[6]&p[5]&p[4]&p[3]&g[2])| (p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[8]=g[7]| (p[7]&g[6])| (p[7]&p[6]&g[5])| (p[7]&p[6]&p[5]&g[4])| (p[7]&p[6]&p[5]&p[4]&g[3])| (p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[7]&p[6]&p[5]&p[3]&p[2]&p[2]&g[1])| (p[7]&p[6]&p[5]&p[3]&p[2]&p[1]&g[0])| (p[7]&p[6]&p[5]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[9]=g[8]| (p[8]&g[7])| (p[8]&p[7]&g[6])| (p[8]&p[7]&p[6]&g[5])| (p[8]&p[7]&p[6]&p[5]&g[4])| (p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[10]=g[9]| (p[9]&g[8])| (p[9]&p[8]&g[7])| (p[9]&p[8]&p[7]&g[6])| (p[9]&p[8]&p[7]&p[6]&g[5])| (p[9]&p[8]&p[7]&p[6]&p[5]&g[4])| (p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[11]=g[10]| (p[10]&g[9])| (p[10]&p[9]&g[8])| (p[10]&p[9]&p[8]&g[7])| (p[10]&p[9]&p[8]&p[7]&g[6])| (p[10]&p[9]&p[8]&p[7]&p[6]&g[5])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&g[4])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[12]=g[11]| (p[11]&g[10])| (p[11]&p[10]&g[9])| (p[11]&p[10]&p[9]&g[8])| (p[11]&p[10]&p[9]&p[8]&g[7])| (p[11]&p[10]&p[9]&p[8]&p[7]&g[6])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&g[5])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&g[4])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&p[4]&g[3])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[11]&p[10]&p[8]&p[7]&p[2]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[13]=g[12]| (p[12]&g[11])| (p[12]&p[11]&g[10])| (p[12]&p[11]&p[10]&g[9])| (p[12]&p[11]&p[10]&p[9]&g[8])| (p[12]&p[11]&p[10]&p[9]&p[8]&g[7])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&g[6])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&g[5])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&g[4])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[14]=g[13]| (p[13]&g[12])| (p[13]&p[12]&g[11])| (p[13]&p[12]&p[11]&g[10])| (p[13]&p[12]&p[11]&p[10]&g[9])| (p[13]&p[12]&p[11]&p[10]&p[9]&g[8])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&g[7])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&g[6])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&g[5])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&g[4])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[15]=g[14]| (p[14]&g[13])| (p[14]&p[13]&g[12])| (p[14]&p[13]&p[12]&g[11])| (p[14]&p[13]&p[12]&p[11]&g[10])| (p[14]&p[13]&p[12]&p[11]&p[10]&g[9])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&g[8])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&g[7])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&g[6])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&g[5])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&g[4])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&g[3])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&g[2])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])| (p[14]&p[13]&p[12]&p[11]&p[10]&p[9]&p[8]&p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&Cin);
assign C[16]=g[15]| (p[15]&C[15]);
assign C[17]=g[16]| (p[16]&g[15])| (p[16]&p[15]&C[15]);
assign C[18]=g[17]| (p[17]&g[16])| (p[17]&p[16]&g[15])| (p[17]&p[16]&p[15]&C[15]);
assign C[19]=g[18]| (p[18]&g[17])| (p[18]&p[17]&g[16])| (p[18]&p[17]&p[16]&g[15])| (p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[20]=g[19]| (p[19]&g[18])| (p[19]&p[18]&g[17])| (p[19]&p[18]&p[17]&g[16])| (p[19]&p[18]&p[17]&p[16]&g[15])| (p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[21]=g[20]| (p[20]&g[19])| (p[20]&p[19]&g[18])| (p[20]&p[19]&p[18]&g[17])| (p[20]&p[19]&p[18]&p[17]&g[16])| (p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[22]=g[21]| (p[21]&g[20])| (p[21]&p[20]&g[19])| (p[21]&p[20]&p[19]&g[18])| (p[21]&p[20]&p[19]&p[18]&g[17])| (p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[23]=g[22]| (p[22]&g[21])| (p[22]&p[21]&g[20])| (p[22]&p[21]&p[20]&g[19])| (p[22]&p[21]&p[20]&p[19]&g[18])| (p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[24]=g[23]| (p[23]&g[22])| (p[23]&p[22]&g[21])| (p[23]&p[22]&p[21]&g[20])| (p[23]&p[22]&p[21]&p[20]&g[19])| (p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[25]=g[24]| (p[24]&g[23])| (p[24]&p[23]&g[22])| (p[24]&p[23]&p[22]&g[21])| (p[24]&p[23]&p[22]&p[21]&g[20])| (p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])|(p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[26]=g[25]| (p[25]&g[24])| (p[25]&p[24]&g[23])| (p[25]&p[24]&p[23]&g[22])| (p[25]&p[24]&p[23]&p[22]&g[21])| (p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[27]=g[26]| (p[26]&g[25])| (p[26]&p[25]&g[24])| (p[26]&p[25]&p[24]&g[23])| (p[26]&p[25]&p[24]&p[23]&g[22])| (p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[28]=g[27]| (p[27]&g[26])| (p[27]&p[26]&g[25])| (p[27]&p[26]&p[25]&g[24])| (p[27]&p[26]&p[25]&p[24]&g[23])| (p[27]&p[26]&p[25]&p[24]&p[23]&g[22])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[29]=g[28]| (p[28]&g[27])| (p[28]&p[27]&g[26])| (p[28]&p[27]&p[26]&g[25])| (p[28]&p[27]&p[26]&p[25]&g[24])| (p[28]&p[27]&p[26]&p[25]&p[24]&g[23])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&g[22])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[30]=g[29]| (p[29]&g[28])| (p[29]&p[28]&g[27])| (p[29]&p[28]&p[27]&g[26])| (p[29]&p[28]&p[27]&p[26]&g[25])| (p[29]&p[28]&p[27]&p[26]&p[25]&g[24])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&g[23])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&g[22])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign C[31]=g[30]| (p[30]&g[29])| (p[30]&p[29]&g[28])| (p[30]&p[29]&p[28]&g[27])| (p[30]&p[29]&p[28]&p[27]&g[26])| (p[30]&p[29]&p[28]&p[27]&p[26]&g[25])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&g[24])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&g[23])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&g[22])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
assign Cout=g[31]| (p[31]&g[30])| (p[31]&p[30]&g[29])| (p[31]&p[30]&p[29]&g[28])| (p[31]&p[30]&p[29]&p[28]&g[27])| (p[31]&p[30]&p[29]&p[28]&p[27]&g[26])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&g[25])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&g[24])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&g[23])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&g[22])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&g[21])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&g[20])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&g[19])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&g[18])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&g[17])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&g[16])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&g[15])| (p[31]&p[30]&p[29]&p[28]&p[27]&p[26]&p[25]&p[24]&p[23]&p[22]&p[21]&p[20]&p[19]&p[18]&p[17]&p[16]&p[15]&C[15]);
endmodule
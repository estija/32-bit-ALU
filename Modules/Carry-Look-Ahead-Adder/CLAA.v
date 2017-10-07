`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 03:15:06 AM
// Design Name: 
// Module Name: cla_adder
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
module cla_adder(input [31:0]A,D, input Cnt,unsign, output Cout,sign, output [31:0]S);
wire [31:0] B,C,p,g;
add_sub as(D,Cnt,B);
pg_gen pg(A,B,p,g);
carry_gen cg(A,B,p,g,C,Cnt,Cout);
sum s(A,B,C,S);
assign sign=(A[31]|((Cnt|(~unsign))^B[31])|Cout)&Cnt&(~unsign);
endmodule

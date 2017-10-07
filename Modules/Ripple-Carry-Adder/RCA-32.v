`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 08:17:37 PM
// Design Name: 
// Module Name: rca32
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
module rca32(input [31:0]a, b, input Cin, output[31:0]S, output Cout);
wire C;
rca16 r0(a[15:0],b[15:0],Cin,S[15:0],C);
rca16 r1(a[31:16],b[31:16],C,S[31:16],Cout);
//assign sign=(a[31]|((cnt|(~unsign))^b[31])|Cout)&cnt&(~unsign);
endmodule

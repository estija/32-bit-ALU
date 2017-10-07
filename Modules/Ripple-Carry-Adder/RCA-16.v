`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 08:02:44 PM
// Design Name: 
// Module Name: rca16
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
module rca16(input [15:0]a,b, input Cin, output[15:0]s, output Cout);
wire [2:0]C;
//wire cn=(cnt==0)?Cin:0;
rca4 r0(a[3:0],b[3:0],Cin,s[3:0],C[0]);
rca4 r1(a[7:4],b[7:4],C[0],s[7:4],C[1]);
rca4 r2(a[11:8],b[11:8],C[1],s[11:8],C[2]);
rca4 r3(a[15:12],b[15:12],C[2],s[15:12],Cout);
//assign sign=(A[31]|((cnt|(~unsign))^B[31])|Cout)&cnt&(~unsign);
endmodule

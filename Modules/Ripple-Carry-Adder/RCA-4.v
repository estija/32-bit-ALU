`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 08:00:55 PM
// Design Name: 
// Module Name: rca4
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
module rca4(input [3:0]A,B, input Cin, output[3:0]S, output Cout);
//wire [3:0] D;
wire [2:0]C;
//wire cin=(cnt==0)?Cin:0;
full_adder fa0(A[0],B[0],Cin,S[0],C[0]);
full_adder fa1(A[1],B[1],C[0],S[1],C[1]);
full_adder fa2(A[2],B[2],C[1],S[2],C[2]);
full_adder fa3(A[3],B[3],C[2],S[3],Cout);
//assign sign=(A[31]|((cnt|(~unsign))^B[31])|Cout)&cnt&(~unsign);
endmodule

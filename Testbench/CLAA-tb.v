`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 03:21:16 AM
// Design Name: 
// Module Name: test_cla
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
module test_cla;
reg [31:0] A,D;
reg Cnt,unsign;
wire Cout,sign;
wire [31:0] S;
cla_adder uut(A,D,Cnt,unsign,Cout,sign,S);
//cla_adder uut(.A(A),.D(D),.Cnt(Cnt),.Cout(Cout),.sign(sign),.unsign(unsign),.S(S));
initial begin
A=32'h00778866;
D=32'h00554433;
Cnt=0;
unsign=0;
end
always begin
#10 A=A+1;
#10 Cnt=~Cnt;
#10 unsign=~unsign;
end
endmodule

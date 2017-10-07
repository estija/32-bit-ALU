`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 08:28:51 PM
// Design Name: 
// Module Name: tb
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
module tb;
reg [31:0] A,B;
reg Cin;
wire [31:0] S;
wire Cout;
rca32 uut(A,B,Cin,S,Cout);
initial begin
A=32'h00520112;
B=32'h00445566;
Cin=1;
end
always begin
#40 A=A+1;
end
endmodule

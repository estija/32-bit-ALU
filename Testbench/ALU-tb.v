`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2017 01:30:16 AM
// Design Name: 
// Module Name: test
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
module test;
reg[31:0]a,b;
reg[5:0]funct;
wire [31:0]s;
wire ov,cc,cs;
alu uut(a,b,funct,s,ov,cc,cs);
initial begin
a=32'b10000000000000000000011000001111;
b=32'b00000000000000000000000000001111;
funct=6'b000100;
end
always begin
#20 funct=funct+1;
#20 b=b+1;
end
endmodule

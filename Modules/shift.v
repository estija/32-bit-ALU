`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 09:04:38 PM
// Design Name: 
// Module Name: shift
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
module shift(input[31:0]a,input [4:0]b,input[1:0]funct,output reg[31:0]shtres);
always@(*)
    begin
    case(funct)
    2'b00:shtres=a>>1;
    2'b01:shtres=a<<1;
    2'b10:shtres=a>>b;
    2'b11:shtres=a<<b;
    endcase
    end
endmodule

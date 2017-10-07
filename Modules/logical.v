`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 09:04:38 PM
// Design Name: 
// Module Name: logical
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
module logical(input[31:0]a,b,input[2:0]funct,output reg[31:0]logres);
always@(*)
    begin
    case(funct[1:0])
    2'b00:logres={32{funct[2]}}^(a|b);
    2'b01:logres={32{funct[2]}}^(a&b);
    2'b10:logres={32{funct[2]}}^(a^b);
    2'b11:logres={32{funct[2]}}&(~b)|{32{~funct[2]}}&(~a);
    endcase
    end
endmodule

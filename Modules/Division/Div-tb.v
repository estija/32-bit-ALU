`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2017 08:05:11 PM
// Design Name: 
// Module Name: tb_div
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
module tb_div;
reg[31:0]dividend;
reg[12:0]divisor;
wire[16:0]quotient;
wire[15:0]remainder;
div uut(dividend,divisor,quotient,remainder);
initial
    begin
    dividend=32'b10000100011010001000010001101000;
    divisor=16'b000111000111;
    end
always
    begin
    #10 dividend=dividend+1;
    #10 divisor=divisor+1;
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 09:04:38 PM
// Design Name: 
// Module Name: calc
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
module calc(input[31:0]a,b,input[1:0]funct,output reg[31:0]calres,output reg ovf,sn);
reg [31:0]cal;
always@(*)
    begin
    case(funct[0])
    1'b0:
        begin
        {cal,calres}=a*b;
        if(cal==32'h00000000) ovf=0;
        else ovf=1;
        sn=funct[1]&a[31]&b[31];
        end
    1'b1:
       begin
       calres=a/b;
       ovf=0;
       sn=funct[1]&a[31]&b[31];
       end
    endcase
    end
endmodule

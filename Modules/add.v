`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 09:04:55 PM
// Design Name: 
// Module Name: add
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
module add(input[31:0]a,b,input[2:0]funct,output reg[31:0]addres,output reg cout,sign);
reg x;
always@(*)
begin
case(funct[1:0])
2'b00:
    begin
    {cout,addres}=a+b;
    sign=funct[2]&(a[31]+b[31]+cout);
    end
2'b01:
    begin
    {x,addres}=a-b;
    sign=funct[2]&(a[31]+~b[31]+x);
    cout=0;
    end
2'b10:
    begin
    if(funct[2]==0) {cout,addres}=a+1;
    else addres=a-1;
    sign=0;
    end
2'b11:
    begin
    if(funct[2]==0) addres=a;
    else addres=b;
    cout=0;
    sign=0;
    end
endcase
end
endmodule

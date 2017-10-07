`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 09:04:38 PM
// Design Name: 
// Module Name: compare
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
module compare(input[31:0]a,b,output reg c1,c0);
wire [31:0]addres;
reg cmp;
integer i;
add ad(a,b,3'b101,addres,cout,sign);
always@(addres)
    begin
    cmp=a[i]&(~b[i]);
    for(i=31;i>0;i=i-1)
    begin
    cmp=cmp|(~(a[i]&(~b[i])))&(a[i-1]&(~b[i-1]));
    end
    if(addres==32'd0)
        begin
        c1=1;
        c0=1;
        end
    else if(cmp==0)
        begin
        c1=1;
        c0=0;
        end
    else
        begin
        c1=0;
        c0=1;
        end
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 08:54:44 PM
// Design Name: 
// Module Name: alu
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
module alu(input[31:0]a,b,input[5:0]funct,output reg [31:0]s,output reg ov,cc,cs);
wire[31:0] logres,shtres,addres,calres;
reg x;
    logical l(a,b,funct[2:0],logres);
    shift sh(a,b[4:0],funct[1:0],shtres);
    compare c(a,b,c1,c0);
    add ad(a,b,funct[2:0],addres,cout,sign);
    calc cal(a,b,funct[1:0],calres,ovf,sn);
always@(*)
begin
casex(funct)
6'bx00xxx:
    s=logres;
6'bx010xx:
    s=shtres;
6'bx011xx:
    if(funct[0]|funct[1]==0)
    begin
    begin
    cc=c1;
    cs=c0;
    if((c1&c0)==0)
    s=32'd0;
    else if(c1&(~c0)) //s={{30{1'b0}},cc,cs};
    s=32'd1;
    end
    end
    else if(funct[0]&funct[1]==1)
    begin
    ov=0;
    cc=0;
    {x,s}=~a-1;
    cs=~a[31]+~b[31]+x;
    end
6'bx10xxx:
    begin
    cc=cout;
    cs=sign;
    s=addres;
    end
6'bx110xx:
    begin
    ov=ovf;
    cc=0;
    cs=sn;
    s=calres;
    end
default:
    begin
    ov=0;
    cc=0;
    cs=0;
    s=32'd0;
    end
endcase
end
endmodule

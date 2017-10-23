`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2017 12:34:24 PM
// Design Name: 
// Module Name: mux
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
module mux(input [31:0]A, input [31:0]B, input rst, output reg [63:0]Z, reg [63:0]Y);
integer i;
always@(rst)
begin
    if(rst==1) Z=64'd0;
    else
    begin
    for(i=0; i<32; i=i+1)
        begin
        if (B[i]==0)
        Y=64'd0;
        else
        Y=A<<i;
        Z=Z+Y;
        end
    end
end
endmodule

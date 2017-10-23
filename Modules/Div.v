`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2017 08:04:46 PM
// Design Name: 
// Module Name: div
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
module div(input[31:0]dividend,input[15:0]divisor,output[16:0]quotient,output[15:0]remainder);
reg[31:0]bdiv;
reg[16:0]buffd;
reg[16:0]buffq;
reg[16:0]buffr;
integer i;
//sign
//sr=sdividend
//sq=sdividend xnor sdivisor
always@(*)
    begin
    buffq=16'd0;
    bdiv=dividend;
    buffd={1'b0,bdiv[31:16]};
    for(i=0;i<17;i=i+1)
        begin
        buffq=buffq<<1;
        bdiv=bdiv<<1;
        if(buffd>=divisor)
            begin
            buffq=buffq+17'b000000000000001;
            buffr=buffd-{1'b0,divisor};
            if(buffr<17'b01000000000000000) buffd={1'b0,buffr[14:0],bdiv[16]};
            else buffd={buffr[15:0],bdiv[16]};
            end
        else
            begin
            buffr=buffd;
            buffd={buffr[15:0],bdiv[16]};
            end
        end
    end
assign quotient=buffq;
assign remainder=buffr[15:0];
endmodule

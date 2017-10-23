`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2017 12:34:44 PM
// Design Name: 
// Module Name: muxtb
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
module muxtb;
reg [31:0]A;
reg [31:0]B;
reg rst;
wire [63:0]Z;
wire [63:0]Y;
mux uut(.A(A), .B(B), .Z(Z), .Y(Y), .rst(rst));
initial begin
rst=1;
#5 rst=0;
A=32'b11001100110011001100110011001100;
B=32'b11100010110011001100110011001100;
#10 rst=1;
#5 rst=0;
A=32'b11110000110011001100110011001100;
B=32'b00001111110011001100110011001100;
#10 rst=1;
#5 rst=0;
A=32'b10101010110011001100110011001100;
B=32'b01010101110011001100110011001100;
end
endmodule

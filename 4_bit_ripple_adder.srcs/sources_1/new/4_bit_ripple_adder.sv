`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 22:54:40
// Design Name: 
// Module Name: 4_bit_ripple_adder
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


module four_bit_ripple_adder(
input [3:0] A,B,
input Cin,
output [3:0] S,
output Cout
    );
wire Cin2,Cin3,Cin4; 
 Fulladder adder1 (
 .cin(Cin),
 .a(A[0]),
 .b(B[0]),
 .sum(S[0]),
 .cout(Cin2)
 );
  Fulladder adder2 (
 .cin(Cin2),
 .a(A[1]),
 .b(B[1]),
 .sum(S[1]),
 .cout(Cin3)
 );
  Fulladder adder3 (
 .cin(Cin3),
 .a(A[2]),
 .b(B[2]),
 .sum(S[2]),
 .cout(Cin4)
 );
  Fulladder adder4 (
 .cin(Cin4),
 .a(A[3]),
 .b(B[3]),
 .sum(S[3]),
 .cout(Cout)
 );    
endmodule

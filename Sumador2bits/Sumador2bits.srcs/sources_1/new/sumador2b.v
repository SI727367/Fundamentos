`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 11:23:30
// Design Name: 
// Module Name: sumador2b
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


module sumador2b(
    B, 
    A,
    Cout,
    S
);

input [1:0] A;
input [1:0] B;
output [1:0] S;
output Cout;

wire carry;
wire Cy0;
wire Cin;

assign carry = Cy0;

/*Medio sumador*/
assign S[0] = A[0] ^ B[0];
assign Cy0 = A[0] & B[0];

/*Sumador Completo*/
assign S[1] = A[1] ^ B[1] ^ Cin;
assign Cout = (Cin & A[1]) | (Cin & B[1]) | (A[1] & B[1]);



endmodule

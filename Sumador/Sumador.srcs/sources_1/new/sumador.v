`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2021 11:42:06
// Design Name: 
// Module Name: sumador
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


module sumador(
    A,
    B,
    Suma,
    Carry
    );

  input A;
  input B;
  output Suma;
  output Carry;

  // assign Suma = (~A & B) | (A & ~B);
  assign Suma = A ^ B;
  assign Carry = A & B;

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 12:17:07
// Design Name: 
// Module Name: fullAdder
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
module fullAdder (
  Cin,
  A,
  B,
  S,
  Cout
  );
  
  input Cin;
  input A;
  input B;
  output S;
  output Cout;

  assign S = A ^ B ^ Cin;
  assign Cout = (B & A) | (Cin & A) | (Cin & B);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 12:19:30
// Design Name: 
// Module Name: halfAdder
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
module halfAdder(
  Cin,
  A,
  B,
  S,
  Co
  );
  input Cin;
  input A;
  input B;
  output S;
  output Co;

  assign S = A ^ B ^ Cin;
  assign Co = (Cin & A) | (Cin & B) | (A & B);
endmodule

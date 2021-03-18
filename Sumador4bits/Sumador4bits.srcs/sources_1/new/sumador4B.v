`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 12:10:36
// Design Name: 
// Module Name: sumador4B
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
module sumador4B(
    A,
    B,
    Cout,
    a,
    b,
    c,
    d,
    e,
    f,
    g
    );
    input [3:0] A;
    input [3:0] B;
    wire [3:0] S;
    output Cout;
    wire [3:0] carry;
    
    fullAdder SUM0(
        .Cin (0),
        .A (A[0]),
        .B (B[0]),
        .S (S[0]),
        .Cout (carry[0])
        );
    
    fullAdder SUM1(
        .Cin (carry[0]),
        .A (A[1]),
        .B (B[1]),
        .S (S[1]),
        .Cout (carry[1])
        );
    
    fullAdder SUM2(
        .Cin (carry[1]),
        .A (A[2]),
        .B (B[2]),
        .S (S[2]),
        .Cout (carry[2])
        );
        
    fullAdder SUM3(
        .Cin (carry[2]),
        .A (A[3]),
        .B (B[3]),
        .S (S[3]),
        .Cout (carry[3])
        );
        
      assign Cout = ~carry[3];
      
      wire Z = S[3];
      wire Y = S[2];
      wire X = S[1];
      wire W = S[0];

      output reg a;
      output reg b;
      output reg c;
      output reg d;
      output reg e;
      output reg f;
      output reg g;
      
      always @ * begin
      case ({Z ,Y, X, W})
      4'b0000: {a, b, c, d, e, f, g} = 7'b0000001;
      4'b0001: {a, b, c, d, e, f, g} = 7'b1001111;
      4'b0010: {a, b, c, d, e, f, g} = 7'b0010010;
      4'b0011: {a, b, c, d, e, f, g} = 7'b0000110;
      4'b0100: {a, b, c, d, e, f, g} = 7'b1001100;
      4'b0101: {a, b, c, d, e, f, g} = 7'b0100100;
      4'b0110: {a, b, c, d, e, f, g} = 7'b0100000;
      4'b0111: {a, b, c, d, e, f, g} = 7'b0001111;
      4'b1000: {a, b, c, d, e, f, g} = 7'b0000000;
      4'b1001: {a, b, c, d, e, f, g} = 7'b0000100;
      4'b1010: {a, b, c, d, e, f, g} = 7'b0001000;
      4'b1011: {a, b, c, d, e, f, g} = 7'b1100000;
      4'b1100: {a, b, c, d, e, f, g} = 7'b0110001;
      4'b1101: {a, b, c, d, e, f, g} = 7'b1000010;
      4'b1110: {a, b, c, d, e, f, g} = 7'b0110000;
      4'b1111: {a, b, c, d, e, f, g} = 7'b0111000;
      default: {a, b, c, d, e, f, g} = 7'b1111111;
    endcase
    end   
endmodule //sumador4bits
 
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
          if(reg_d0 == 9)
          begin
             reg_d0 <= 0;
             if (reg_d1 == 9)
                 begin
                    reg_d1 <= 0; 
                    if (reg_d2 == 9)
                        begin 
                            reg_d2 <= 0; 
                            if(reg_d3 == 9)
                                reg_d3 <= 0;
                            else
                                reg_d3 <= reg_d3 + 1;
                        end else
                            reg_d2 <= reg_d2 + 1;
                 end else
                     reg_d1 <= reg_d1 + 1; 
          end else
            reg_d0 <= reg_d0 + 1;
         end
end
    end   
endmodule //sumador4bits
 
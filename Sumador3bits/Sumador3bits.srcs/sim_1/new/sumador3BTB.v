`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 12:21:22
// Design Name: 
// Module Name: sumador3BTB
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
module sumador3BTB();
reg [2:0] A, B;
wire Cout;
wire [2:0] S;

integer i = 0;
integer j = 0;

sumador3B DUV (
    .A(A),
    .B(B),
    .Cout(Cout),
    .S(S)
    );

  initial begin
    A = 0;
    B = 0;

    #10
    for(i = 0; i < 8; i=i+1)begin
      for(j = 0; j < 8; j=j+1)begin
        #10
        A = j;
        B = i;
      end
    end

    #20
    $stop;
    end
endmodule //sumador2bitsTB

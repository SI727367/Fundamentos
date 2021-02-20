`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 11:40:39
// Design Name: 
// Module Name: mux2a1TB
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
module mux2a1TB( );
  reg A;
  reg B;
  reg C;
  wire Y;

  reg [1:0] x;
  reg [1:0] y;
  reg [1:0] z;

  mux2a1 DUV(
    .A (A),
    .B (B),
    .C (C),
    .Y (Y)
  );

  initial begin
    A = 0;
    B = 0;
    C = 0;

    for (z = 0; z < 2'b10; z = z + 1'b1) begin
      for (y = 0; y < 2'b10; y = y + 1'b1) begin
        for (x = 0; x < 2'b10; x = x + 1'b1) begin
          #10
          A = x;
          B = y;
          C = z;
        end //for x
      end //for y
    end //for z

    #50
    $stop;
  end
endmodule

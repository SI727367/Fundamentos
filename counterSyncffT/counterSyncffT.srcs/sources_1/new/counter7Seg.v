`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2021 12:03:57
// Design Name: 
// Module Name: counter7Seg
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


module counter7Seg
(
  input clk,
  input rst,
  input en,

  output a,
  output b,
  output c,
  output d,
  output e,
  output f,
  output g
);

  wire [3:0] counter;

  counterSyncffT CNTR(
    .clk (clk),
    .rst (rst),
    .en (en),
    .counter (counter)
  );

  bcd7segLUT BCD7SEG(
    .A (counter[0]),
    .B (counter[1]),
    .C (counter[2]),
    .D (counter[3]),

    .a (a),
    .b (b),
    .c (c),
    .d (d),
    .e (e),
    .f (f),
    .g (g)
  );
endmodule

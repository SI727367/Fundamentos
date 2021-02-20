`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/10/2021 07:58:09 PM
// Design Name:
// Module Name: Siete_POS
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


module Siete_POS(
      input W,
      input X,
      input Y,
      input Z,

      output a,
      output b,
      output c,
      output d,
      output e,
      output f,
      output g

      // output [6:0] 7seg
    );

        assign	a = (W|~Y|Z)& (~X|Y|~Z)& (X|Z)& (X|~Y)& (~W|Y)& (~W|~Z);
        assign	b = (W|X|Y)& (W|~X|~Y)& (~W|~X|Y)& (X|Z)& (W|Z);
        assign	c = (Y|~Z)& (~Y|Z)& (W|~X)& (W|Y)& (~X|Y);
        assign	d = (W|~X|~Z)& (X|Y|Z)& (~W|X|~Z)& (~W|~X|Z)& (W|~Y);
        assign	e = (X|Z)& (~W|X)& (~Y|~Z)& (~W|~Y);
        assign	f = (W|Y|~Z)&  (W|X)&  (X|~Z)&  (~Y|Z)& (~W|~Y);
        assign	g = (~Y|Z)&  (~W|Z)&  (W|Y|~Z)&  (~W|X)&  (~X|~Y);
        
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/10/2021 08:19:29 PM
// Design Name:
// Module Name: bin7segTB
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


module bin7segTB( );
      reg [3:0] counter;

      wire a;
      wire b;
      wire c;
      wire d;
      wire e;
      wire f;
      wire g;

      integer iterador;

    bin7seg DUV (
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

    initial begin
      counter = 5'h00;

      for(iterador = 0; iterador <= 15; iterador = iterador + 1) begin
          #10
          counter = counter + 1;
      end

      #50
      $stop;
    end
endmodule


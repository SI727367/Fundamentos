`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 07:37:32
// Design Name: 
// Module Name: Mult
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


module Mult
#(
    parameter NBITS = 4
)
(
    product,
    a,
    b
);
   
   
   input [NBITS-1:0]  a, b;
   output reg [(NBITS*2)-1:0] product;
   integer i;
   
   always @( a || b )
     begin
        product = 0;
        for(i=0; i<NBITS-1; i=i+1)
          if( a[i] == 1'b1 ) product = product + ( b << i );
     end
endmodule



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 08:35:09
// Design Name: 
// Module Name: MultTB
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


module MultTB();

localparam NBITS = 8;

reg [NBITS-1:0]  a, b;
wire [(NBITS*2)-1:0] product;
integer i = 0;
integer j = 0;

    Mult
    #(
        .NBITS (NBITS)
    ) DUT
    (
        .product (product),
        .a (a),
        .b (b)
    );
    
initial begin
    a = 0;
    b = 0;

    #10
    for(i = 0; i < 8; i=i+1)begin
      for(j = 0; j < 8; j=j+1)begin
        #10
        a = j;
        b = i;
      end
    end

    #20
    $stop;
    end
endmodule

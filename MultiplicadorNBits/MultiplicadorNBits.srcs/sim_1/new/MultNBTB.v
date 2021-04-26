`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2021 11:21:32
// Design Name: 
// Module Name: MultNBTB
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
module MultNBTB();

    localparam NBITS = 4;
    reg [NBITS-1:0] iX;
    reg [NBITS-1:0] iY;
    wire [NBITS*2-1:0] oS;
    integer i;
    integer j;

    MultNB
    #(
        .NBITS (NBITS)
    ) DUT
    (
        .iX (iX),
        .iY (iY),
        .oS (oS)
    );


  initial begin
    iX = 0;
    iY = 0;

    #10
    for(i = 0; i < 8; i=i+1)begin
      for(j = 0; j < 8; j=j+1)begin
        #10
        iX = j;
        iY = i;
      end
    end

    #20
    $stop;
    end
endmodule 

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2021 12:45:23
// Design Name: 
// Module Name: SumadorCTB
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


module SumadorCTB();
  integer counter;
  wire S;
  wire Cout;

  SumadorC DUV (
    .Cin (counter[2]),
    .A (counter[0]),
    .B (counter[1]),
    .S (S),
    .Cout (Cout)
  );

  initial begin
    for (counter = 0; counter < 8; counter = counter + 1) begin
      #10;
    end

    #10;
    $stop;
  end

endmodule

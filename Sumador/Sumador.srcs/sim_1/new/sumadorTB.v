`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2021 11:55:38
// Design Name: 
// Module Name: SumadorTB
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
module sumadorTB();   
reg A;
  reg B;

  wire Suma;
  wire Carry;

  integer counter;

  medioSumador DUV(
    .A(counter[0]),
    .B(counter[1]),
    .Suma(Suma),
    .Carry(Carry  )
  );

  initial begin
    // A = 0;
    // B = 0;
    //
    // #10
    // A = 0;
    // B = 1;
    //
    // #10
    // A = 1;
    // B = 0;
    //
    // #10
    // A = 1;
    // B = 1;

    for(counter = 0; counter < 4; counter = counter + 1) begin
      #10;
    end

    #10
    $stop;
  end // initial
endmodule
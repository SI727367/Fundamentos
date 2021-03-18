`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 11:45:38
// Design Name: 
// Module Name: ExamenDB
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


module ExamenDB();
reg [7:0] dataA;
reg [7:0] dataB;
reg [2:0] opcode;
wire [15:0]result;
integer i = 0;
integer j = 0;

Examen DUV(
    .dataA(dataA),
    .dataB(dataB),
    .opcode(opcode),
    .result(result)
    );
    
initial begin
    dataA = 0;
    dataB = 0;
    opcode = 'b110;

    #10
    for(i = 0; i < 16; i=i+1)begin
      for(j = 0; j < 16; j=j+1)begin
        #10
        dataA = j;
        dataB = i;
      end
    end
    #20
    $stop;
    end
endmodule



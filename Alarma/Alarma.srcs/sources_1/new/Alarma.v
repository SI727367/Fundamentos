`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2021 11:48:48
// Design Name: 
// Module Name: Alarma
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


module Alarma(
    input A,
    input P,
    input Co,
    input Ca,
    input G,
    input V,
    input Pa,
    output Bocina
    );

    wire or1;
    wire or2;
    wire and1;
    wire and2;
    wire and3;

    assign or1 = Co|Ca;
    assign or2 = G|V;

    assign and1 = A&P;
    assign and2 = A&or1;
    assign and3 = or2&A;

    assign Bocina = and1|and2 | and3 | Pa;
    
endmodule

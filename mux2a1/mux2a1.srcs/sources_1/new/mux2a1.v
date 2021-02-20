`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 11:21:00
// Design Name: 
// Module Name: mux2a1
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


module mux2a1(
    A,
    B,
    C,
    Y
    );
    
    input A;
    input B;
    input C;
    output Y;
    
    //assign Y = (A&~C)|(B&C);
    assign Y = C ? B : A;assign Y = C ? B : A;
endmodule

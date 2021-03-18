`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 12:17:19
// Design Name: 
// Module Name: latchSR
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
module latchSR
(
    S,
    R,
    Clk,
    Q
);
    input S;
    input R;
    input Clk;
    output reg Q;
    always @ * begin
        if (Clk == 1) begin
            if (R == 1)
                Q = 0;
            else if (S == 1)
                Q = 1;
            else
                Q = Q;
        end
        else
            Q = Q;
    end
endmodule



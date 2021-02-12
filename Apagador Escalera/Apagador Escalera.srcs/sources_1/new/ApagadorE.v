`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2021 14:10:45
// Design Name: 
// Module Name: ApagadorE
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


module ApagadorE(
    input Abajo,
    input Arriba,
    output Foco
    );
    
    assign Foco = Abajo^Arriba;
endmodule

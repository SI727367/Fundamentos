`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 07:11:44
// Design Name: 
// Module Name: MultNB
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


module MultNB
#(
    parameter NBITS = 4
)
(
    iX,
    iY,
    oS
);
    input [NBITS-1:0] iX;
    input [NBITS-1:0] iY;
    output [NBITS*2-1:0] oS;
    
    //reg [NBITS*2-1:0] matriz [0:NBITS-1][0:NBITS-1];
    wire [NBITS*NBITS:0] wS;
    wire [NBITS*NBITS:0] wCarry;
    
    
    
    assign wCarry[0] = 0;
    integer i = 0;
    integer j = 0;
    
    /*always @* 
    begin
        for (i = 0; i < NBITS; i = i + 1) 
            for (j = 0; j < NBITS; j = j + 1)
                matriz[i][j] = iX[i] & iY[j];
    end*/
    
    assign oS[0] = iX[0]&iY[0];
    genvar iterador;
    genvar jterador;
    
    for (iterador = 0; iterador < NBITS-1; iterador = iterador + 1) begin
        //Primer nivel
        if(iterador == 0)begin
            for (jterador = 0; jterador < NBITS-1; jterador = jterador + 1) begin
                fullAdder FA(
                  .Cin (wCarry[jterador]),
                  .A (iX[jterador+1]&iY[0]),
                  .B (iX[jterador]&iY[1]),
                  .S (wS[jterador]),
                  .Cout (wCarry[jterador+1])
                );
            end
            fullAdder FA(
                  .Cin (wCarry[jterador]),
                  .A (0),
                  .B (iX[NBITS-1]&iY[1]),
                  .S (wS[jterador]),
                  .Cout (wCarry[jterador+1])
                );  
            assign oS [1] = wS[0];
            assign wS[NBITS]  =  wCarry[NBITS];  
            
         end
         //Ultimo Nivel
         else if(iterador == NBITS-1) begin
            for (jterador = 0; jterador < NBITS; jterador = jterador + 1) begin
                fullAdder FA(
                  .Cin (wCarry[jterador]),
                  .A (wS[jterador+1]),
                  .B (iX[jterador]&iY[iterador+1]),
                  .S (oS[jterador]),
                  .Cout (wCarry[jterador+1])
                );
            end
            assign oS [NBITS*2 - 5] = wS[NBITS - 5];
            assign oS [NBITS*2 - 4] = wS[NBITS - 4];
            assign oS [NBITS*2 - 3] = wS[NBITS - 3];
            assign oS [NBITS*2 - 2] = wS[NBITS - 2];
            assign oS [NBITS*2 - 1] = wS[NBITS - 1];
         end
         // Niveles en medio
        else begin
            for (jterador = 0; jterador < NBITS; jterador = jterador + 1) begin
                fullAdder FA(
                  .Cin (wCarry[jterador]),
                  .A (wS[jterador+1]),
                  .B (iX[jterador]&iY[iterador+1]),
                  .S (oS[jterador]),
                  .Cout (wCarry[jterador+1])
                );
            end
            assign oS [iterador+1] = wS[0];
            assign wS[NBITS]  =  wCarry[NBITS];
        end
    end
endmodule
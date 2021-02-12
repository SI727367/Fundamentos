`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2021 12:18:49
// Design Name: 
// Module Name: TestTB
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


module ApagadorETB();
    reg Abajotb;
    reg Arribatb;
    wire Focotb;

    
    ApagadorE DUV
    (
        .Abajo (Abajotb),
        .Arriba (Arribatb),
        .Foco (Focotb)
    );
    
    initial begin
        Abajotb = 0;
        Arribatb = 0;
        
        #20
        Abajotb = 1;
        Arribatb = 0;
        
        #20
        Abajotb = 0;
        Arribatb = 1;
        
        #20
        Abajotb = 1;
        Arribatb = 0;
        
        #20
        Abajotb = 0;
        Arribatb = 1;
        
        #20
        Abajotb = 1;
        Arribatb = 1;
        
        #200
        $stop; 
    end
endmodule
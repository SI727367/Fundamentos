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


module gatesTB();
    reg Atb;
    reg Btb;
    wire or0tb;
    wire and0tb;
    wire not0tb;
    
    Test DUV
    (
        .A (Atb),
        .B (Btb),
        .or0 (or0tb),
        .and0 (and0tb),
        .not0 (not0tb)
    );
    
    initial begin
        Atb = 0;
        Btb = 0;
        
        #10
        Atb = 1;
        Btb = 0;
        
        #10
        Atb = 0;
        Btb = 1;
        
        #10
        Atb = 1;
        Btb = 1;
        
        #50
        $stop; 
    end
endmodule


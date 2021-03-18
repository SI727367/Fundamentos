`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 11:23:46
// Design Name: 
// Module Name: Examen
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
module Examen(
    dataA,
    dataB,
    opcode,
    result
    );
    input [7:0] dataA;
    input [7:0] dataB;
    input [2:0]opcode;
    output reg [15:0] result;
    
    always @ * begin
    case(opcode)
	'b000: result = dataA+dataB;  	//Suma
	'b001: result = dataA-dataB;  	//Resta
	'b010: result = dataA*dataB;	//Multiplicacion
	'b011: result = dataA&dataB;	//And
	'b100: result = dataA|dataB;	//Or
	'b101: result = ~(dataA&dataB);	//Nand
	'b110: result = ~(dataA|dataB);	//Nor
	'b111: result = dataA^dataB;	//Xor
	endcase
	end 
endmodule    

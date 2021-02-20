`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/10/2021 07:58:09 PM
// Design Name:
// Module Name: bin7seg
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


module bin7seg(
      input A,
      input B,
      input C,
      input D,

      output reg a,
      output reg b,
      output reg c,
      output reg d,
      output reg e,
      output reg f,
      output reg g

      // output [6:0] 7seg
    );

    // assign a= (A&~B&~C&~D) | (~A&~B&C&~D) | (A&B&~C&D) | (A&~B&C&D);
    // assign b = (A & (~B) & C & (~D)) | ((~A) & B & C & (~D)) | (A & B & (~C) & D) | ((~A) & (~B) & C & D) | ((~A) & B & C & D) | (A & B & C & D);
    // assign c = (~A&B&~C&~D)|(~A&~B&C&D)|(~A&B&C&D)|(A&B&C&D); ///Mateo
    // assign d=(A&~B&~C&~D)|(~A&~B&C&~D)|(A&B&C&~D)|(~A&B&~C&D)|(A&B&C&D);
    // assign e= (A&(~B)&(~C)&(~D))|(A&B&(~C)&(~D))|((~A)&(~B)&(C)&(~D))|(A&(~B)&C&(~D))|(A&B&C&(~D))|(A&(~B)&(~C)&D);
    // assign f = (A&(~B)&(~C)&(~D))|((~A)&B&(~C)&(~D))|(A&B&(~C)&(~D))|(A&B&C&(~D))|(A&(~B)&C&D);
    // assign g = (((~A & ~B) & ~C) & ~D) | (((A & ~B) & ~C) & ~D) | (((A & B) & C) & ~D) | (((~A & ~B) & C) & D); // Jaime

//    reg [6:0] seg7;
//    assign {a, b, c, d, e, f, g} = seg7;

//    assign a = seg7[6];
//    assign b = seg7[5];
//    assign c = seg7[4];
//    assign d = seg7[3];
//    assign e = seg7[2];
//    assign f = seg7[1];
//    assign g = seg7[0];

    
    
    always @ * begin
    case ({D, C, B, A})
      4'b0000: {a, b, c, d, e, f, g} = 7'b0000001;
      4'b0001: {a, b, c, d, e, f, g} = 7'b1001111;
      4'b0010: {a, b, c, d, e, f, g} = 7'b0010010;
      4'b0011: {a, b, c, d, e, f, g} = 7'b0000110;
      4'b0100: {a, b, c, d, e, f, g} = 7'b1001100;
      4'b0101: {a, b, c, d, e, f, g} = 7'b0100100;
      4'b0110: {a, b, c, d, e, f, g} = 7'b0100000;
      4'b0111: {a, b, c, d, e, f, g} = 7'b0001111;
      4'b1000: {a, b, c, d, e, f, g} = 7'b0000000;
      4'b1001: {a, b, c, d, e, f, g} = 7'b0000100;
      4'b1010: {a, b, c, d, e, f, g} = 7'b0001000;
      4'b1011: {a, b, c, d, e, f, g} = 7'b1100000;
      4'b1100: {a, b, c, d, e, f, g} = 7'b0110001;
      4'b1101: {a, b, c, d, e, f, g} = 7'b1000010;
      4'b1110: {a, b, c, d, e, f, g} = 7'b0110000;
      4'b1111: {a, b, c, d, e, f, g} = 7'b0111000;
      default: {a, b, c, d, e, f, g} = 7'b1111111;
    endcase
    end

endmodule
module SRNB
#(
    parameter NBITS = 64
)
(
    iOp, // ~add/sub
    iX,
    iY,
    oS,
    oCout,
    oOverflow
);

    input iOp;
    input [NBITS-1:0] iX;
    input [NBITS-1:0] iY;
    output [NBITS-1:0] oS;
    output oCout;
    output oOverflow;

    wire [NBITS-1:0] wComplemento1Y;
    wire [NBITS:0] wCarry;

    assign wCarry[0] = iOp;

    assign oCout = wCarry[NBITS];

    assign oOverflow = wCarry[NBITS] ^ wCarry[NBITS-1];

    genvar iterador;

    generate
        for (iterador = 0; iterador < NBITS; iterador = iterador + 1) begin
            assign wComplemento1Y[iterador] = iY[iterador] ^ iOp;

            fullAdder FA(
              .Cin (wCarry[iterador]),
              .A (iX[iterador]),
              .B (wComplemento1Y[iterador]),
              .S (oS[iterador]),
              .Cout (wCarry[iterador+1])
            );
        end
    endgenerate
endmodule

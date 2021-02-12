// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Feb 10 15:38:09 2021
// Host        : DESKTOP-REPUBLIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/OneDrive - ITESO/- Semestre
//               4/Fundamentos-de-Sistemas-Digitales-Vivado/Apagador Escalera/Apagador
//               Escalera.sim/sim_1/impl/timing/xsim/ApagadorETB_time_impl.v}
// Design      : ApagadorE
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "1d3c8e37" *) 
(* NotValidForBitStream *)
module ApagadorE
   (Abajo,
    Arriba,
    Foco);
  input Abajo;
  input Arriba;
  output Foco;

  wire Abajo;
  wire Abajo_IBUF;
  wire Arriba;
  wire Arriba_IBUF;
  wire Foco;
  wire Foco_OBUF;

initial begin
 $sdf_annotate("ApagadorETB_time_impl.sdf",,,,"tool_control");
end
  IBUF Abajo_IBUF_inst
       (.I(Abajo),
        .O(Abajo_IBUF));
  IBUF Arriba_IBUF_inst
       (.I(Arriba),
        .O(Arriba_IBUF));
  OBUF Foco_OBUF_inst
       (.I(Foco_OBUF),
        .O(Foco));
  LUT2 #(
    .INIT(4'h6)) 
    Foco_OBUF_inst_i_1
       (.I0(Arriba_IBUF),
        .I1(Abajo_IBUF),
        .O(Foco_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

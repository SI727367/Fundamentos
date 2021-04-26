`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Iteso
// Engineer: Diseño Digital Class
//////////////////////////////////////////////////////////////////////////////////
module counterSyncffT(
input clk,
input en,
output [3:0] counter
);

wire[3:0] wt;
wire [2:0] wAnd;

assign wAnd[0] = en & wt[0];
assign wAnd[1] = wAnd[0] & wt[1];
assign wAnd[2] = wAnd[1] & wt[2];

ffT F0(.clk(clk), .rst(1'b1), .t(en), .q(wt[0]));

ffT F1(.clk(clk), .rst(1'b1), .t(wAnd[0]), .q(wt[1]));

ffT F2(.clk(clk), .rst(1'b1), .t(wAnd[1]), .q(wt[2]));

ffT F3(.clk(clk), .rst(1'b1), .t(wAnd[2]), .q(wt[3]));

endmodule

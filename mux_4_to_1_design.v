`timescale 1ns / 1ps


module mux_4_to_1
(
  input [3:0] DIN,
  input [1:0] SEL,
  output DOUT
);

  // Selected inputs 
  assign DOUT = (DIN[0] & ~SEL[0] & ~SEL[1]) | (DIN[1] & SEL[0] & ~SEL[1]) | (DIN[2] & ~SEL[0] & SEL[1]) | (DIN[3] & SEL[0] & SEL[1]);
endmodule


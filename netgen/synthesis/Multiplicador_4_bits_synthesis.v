////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Multiplicador_4_bits_synthesis.v
// /___/   /\     Timestamp: Wed Feb 16 05:28:36 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Multiplicador_4_bits.ngc Multiplicador_4_bits_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: Multiplicador_4_bits.ngc
// Output file	: C:\Users\vener\Documents\Xilinx_Docs\TF_U10\netgen\synthesis\Multiplicador_4_bits_synthesis.v
// # of Modules	: 1
// Design Name	: Multiplicador_4_bits
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Multiplicador_4_bits (
  Cout, M, Q, P
);
  output Cout;
  input [3 : 0] M;
  input [3 : 0] Q;
  output [7 : 0] P;
  wire M_0_IBUF_0;
  wire M_1_IBUF_1;
  wire M_2_IBUF_2;
  wire M_3_IBUF_3;
  wire Q_0_IBUF_4;
  wire Q_1_IBUF_5;
  wire Q_2_IBUF_6;
  wire Q_3_IBUF_7;
  wire P_0_OBUF_8;
  wire P_1_OBUF_9;
  wire P_2_OBUF_10;
  wire P_3_OBUF_11;
  wire \S[0] ;
  wire \C[4] ;
  wire P_4_OBUF_14;
  wire \S[1] ;
  wire \S[5] ;
  wire P_5_OBUF_17;
  wire \C[8] ;
  wire \S[2] ;
  wire \S[6] ;
  wire \S[7] ;
  wire P_6_OBUF_22;
  wire P_7_OBUF_23;
  wire [2 : 2] \Bloque4/Sumador/S ;
  wire [1 : 1] \Bloque9/Sumador/S ;
  LUT2 #(
    .INIT ( 4'h8 ))
  \P<0>1  (
    .I0(M_0_IBUF_0),
    .I1(Q_0_IBUF_4),
    .O(P_0_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \Bloque1/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_0_IBUF_0),
    .I1(Q_1_IBUF_5),
    .I2(M_1_IBUF_1),
    .I3(Q_0_IBUF_4),
    .O(P_1_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \Bloque7/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_2_IBUF_2),
    .I1(Q_2_IBUF_6),
    .I2(\C[4] ),
    .I3(\S[2] ),
    .O(\S[5] )
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \Bloque10/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_1_IBUF_1),
    .I1(Q_3_IBUF_7),
    .I2(\Bloque9/Sumador/S [1]),
    .I3(\S[5] ),
    .O(P_4_OBUF_14)
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \Bloque12/Sumador/Carry1  (
    .I0(\C[8] ),
    .I1(\S[7] ),
    .I2(M_3_IBUF_3),
    .I3(Q_3_IBUF_7),
    .O(P_7_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \Bloque12/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_3_IBUF_3),
    .I1(Q_3_IBUF_7),
    .I2(\C[8] ),
    .I3(\S[7] ),
    .O(P_6_OBUF_22)
  );
  LUT6 #(
    .INIT ( 64'hFE80F880E0808080 ))
  \Bloque11/Sumador/Carry1  (
    .I0(\Bloque9/Sumador/S [1]),
    .I1(\S[5] ),
    .I2(\S[6] ),
    .I3(Q_3_IBUF_7),
    .I4(M_1_IBUF_1),
    .I5(M_2_IBUF_2),
    .O(\C[8] )
  );
  LUT6 #(
    .INIT ( 64'h95959A6A9A6A6A6A ))
  \Bloque11/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(\S[6] ),
    .I1(M_2_IBUF_2),
    .I2(Q_3_IBUF_7),
    .I3(M_1_IBUF_1),
    .I4(\Bloque9/Sumador/S [1]),
    .I5(\S[5] ),
    .O(P_5_OBUF_17)
  );
  LUT5 #(
    .INIT ( 32'hF7088888 ))
  \Bloque2/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_1_IBUF_1),
    .I1(Q_1_IBUF_5),
    .I2(M_0_IBUF_0),
    .I3(M_2_IBUF_2),
    .I4(Q_0_IBUF_4),
    .O(\S[0] )
  );
  LUT5 #(
    .INIT ( 32'hA8808080 ))
  \Bloque6/Sumador/Carry1  (
    .I0(Q_2_IBUF_6),
    .I1(M_1_IBUF_1),
    .I2(\S[1] ),
    .I3(M_0_IBUF_0),
    .I4(\S[0] ),
    .O(\C[4] )
  );
  LUT6 #(
    .INIT ( 64'h8008088080808080 ))
  \Bloque9/Sumador/Semisumador1/Carry1  (
    .I0(M_0_IBUF_0),
    .I1(Q_3_IBUF_7),
    .I2(\S[1] ),
    .I3(M_1_IBUF_1),
    .I4(\S[0] ),
    .I5(Q_2_IBUF_6),
    .O(\Bloque9/Sumador/S [1])
  );
  LUT6 #(
    .INIT ( 64'h69965A5A6666AAAA ))
  \Bloque9/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(\S[1] ),
    .I1(M_1_IBUF_1),
    .I2(Q_3_IBUF_7),
    .I3(\S[0] ),
    .I4(Q_2_IBUF_6),
    .I5(M_0_IBUF_0),
    .O(P_3_OBUF_11)
  );
  LUT6 #(
    .INIT ( 64'hFE80F880E0808080 ))
  \Bloque8/Sumador/Carry1  (
    .I0(\S[2] ),
    .I1(\C[4] ),
    .I2(\Bloque4/Sumador/S [2]),
    .I3(Q_2_IBUF_6),
    .I4(M_2_IBUF_2),
    .I5(M_3_IBUF_3),
    .O(\S[7] )
  );
  LUT6 #(
    .INIT ( 64'h95959A6A9A6A6A6A ))
  \Bloque8/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(\Bloque4/Sumador/S [2]),
    .I1(M_3_IBUF_3),
    .I2(Q_2_IBUF_6),
    .I3(M_2_IBUF_2),
    .I4(\C[4] ),
    .I5(\S[2] ),
    .O(\S[6] )
  );
  IBUF   M_3_IBUF (
    .I(M[3]),
    .O(M_3_IBUF_3)
  );
  IBUF   M_2_IBUF (
    .I(M[2]),
    .O(M_2_IBUF_2)
  );
  IBUF   M_1_IBUF (
    .I(M[1]),
    .O(M_1_IBUF_1)
  );
  IBUF   M_0_IBUF (
    .I(M[0]),
    .O(M_0_IBUF_0)
  );
  IBUF   Q_3_IBUF (
    .I(Q[3]),
    .O(Q_3_IBUF_7)
  );
  IBUF   Q_2_IBUF (
    .I(Q[2]),
    .O(Q_2_IBUF_6)
  );
  IBUF   Q_1_IBUF (
    .I(Q[1]),
    .O(Q_1_IBUF_5)
  );
  IBUF   Q_0_IBUF (
    .I(Q[0]),
    .O(Q_0_IBUF_4)
  );
  OBUF   P_7_OBUF (
    .I(P_7_OBUF_23),
    .O(P[7])
  );
  OBUF   P_6_OBUF (
    .I(P_6_OBUF_22),
    .O(P[6])
  );
  OBUF   P_5_OBUF (
    .I(P_5_OBUF_17),
    .O(P[5])
  );
  OBUF   P_4_OBUF (
    .I(P_4_OBUF_14),
    .O(P[4])
  );
  OBUF   P_3_OBUF (
    .I(P_3_OBUF_11),
    .O(P[3])
  );
  OBUF   P_2_OBUF (
    .I(P_2_OBUF_10),
    .O(P[2])
  );
  OBUF   P_1_OBUF (
    .I(P_1_OBUF_9),
    .O(P[1])
  );
  OBUF   P_0_OBUF (
    .I(P_0_OBUF_8),
    .O(P[0])
  );
  LUT6 #(
    .INIT ( 64'hD2D8787888888888 ))
  \Bloque3/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(Q_0_IBUF_4),
    .I1(M_3_IBUF_3),
    .I2(M_2_IBUF_2),
    .I3(M_0_IBUF_0),
    .I4(M_1_IBUF_1),
    .I5(Q_1_IBUF_5),
    .O(\S[1] )
  );
  LUT6 #(
    .INIT ( 64'h8080808080000000 ))
  \Bloque4/Sumador/Semisumador2/Carry1  (
    .I0(Q_0_IBUF_4),
    .I1(Q_1_IBUF_5),
    .I2(M_3_IBUF_3),
    .I3(M_1_IBUF_1),
    .I4(M_0_IBUF_0),
    .I5(M_2_IBUF_2),
    .O(\Bloque4/Sumador/S [2])
  );
  LUT6 #(
    .INIT ( 64'h2028080888888888 ))
  \Bloque4/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(Q_1_IBUF_5),
    .I1(M_3_IBUF_3),
    .I2(M_2_IBUF_2),
    .I3(M_0_IBUF_0),
    .I4(M_1_IBUF_1),
    .I5(Q_0_IBUF_4),
    .O(\S[2] )
  );
  LUT6 #(
    .INIT ( 64'h07F87878F7088888 ))
  \Bloque5/Sumador/Semisumador2/Mxor_Suma_xo<0>1  (
    .I0(M_1_IBUF_1),
    .I1(Q_1_IBUF_5),
    .I2(M_0_IBUF_0),
    .I3(M_2_IBUF_2),
    .I4(Q_0_IBUF_4),
    .I5(Q_2_IBUF_6),
    .O(P_2_OBUF_10)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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


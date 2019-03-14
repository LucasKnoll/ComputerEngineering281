module regfile(DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0, RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, LD_DATA, WR, CLRN, Clock);
input RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, WR, CLRN, Clock;
input[3:0] LD_DATA;
output DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0;
wire [3:0] DATAP, DATAQ;
wire [3:0] VALUE0, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, VALUE6, VALUE7;

	Decoder3to8 my_decoder(.EN(WR), .W2(0), .W1(WA1), .W0(WA0), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3), .Y4(), .Y5(), .Y6(), .Y7());
	
	reg4b my_reg0(.IN(LD_DATA), .LOAD(Y0), .Clock(Clock), .OUT(VALUE0), .CLRN(CLRN));
	reg4b my_reg1(.IN(LD_DATA), .LOAD(Y1), .Clock(Clock), .OUT(VALUE1), .CLRN(CLRN));
	reg4b my_reg2(.IN(LD_DATA), .LOAD(Y2), .Clock(Clock), .OUT(VALUE2), .CLRN(CLRN));
	reg4b my_reg3(.IN(LD_DATA), .LOAD(Y3), .Clock(Clock), .OUT(VALUE3), .CLRN(CLRN));
	reg4b my_reg4(.IN(LD_DATA), .LOAD(Y4), .Clock(Clock), .OUT(VALUE4), .CLRN(CLRN));
	reg4b my_reg5(.IN(LD_DATA), .LOAD(Y5), .Clock(Clock), .OUT(VALUE5), .CLRN(CLRN));
	reg4b my_reg6(.IN(LD_DATA), .LOAD(Y6), .Clock(Clock), .OUT(VALUE6), .CLRN(CLRN));
	reg4b my_reg7(.IN(LD_DATA), .LOAD(Y7), .Clock(Clock), .OUT(VALUE7), .CLRN(CLRN));
	
	
	Mux8_4b my_muxP0(.S2(RP2), .S1(RP1), .S0(RP0), .W0(VALUE0[0]), .W1(VALUE1[0]), .W2(VALUE2[0]), .W3(VALUE3[0]), .W4(VALUE4[0]), .W5(VALUE5[0]), .W6(VALUE6[0]), .W7(VALUE7[0]), .F(DATAP[0]));
	Mux8_4b my_muxP1(.S2(RP2), .S1(RP1), .S0(RP0), .W0(VALUE0[1]), .W1(VALUE1[1]), .W2(VALUE2[1]), .W3(VALUE3[1]), .W4(VALUE4[1]), .W5(VALUE5[1]), .W6(VALUE6[1]), .W7(VALUE7[1]), .F(DATAP[1]));
	Mux8_4b my_muxP2(.S2(RP2), .S1(RP1), .S0(RP0), .W0(VALUE0[2]), .W1(VALUE1[2]), .W2(VALUE2[2]), .W3(VALUE3[2]), .W4(VALUE4[2]), .W5(VALUE5[2]), .W6(VALUE6[2]), .W7(VALUE7[2]), .F(DATAP[2]));
	Mux8_4b my_muxP3(.S2(RP2), .S1(RP1), .S0(RP0), .W0(VALUE0[3]), .W1(VALUE1[3]), .W2(VALUE2[3]), .W3(VALUE3[3]), .W4(VALUE4[3]), .W5(VALUE5[3]), .W6(VALUE6[3]), .W7(VALUE7[3]), .F(DATAP[3]));
	
	
	Mux8_4b my_muxQ0(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(VALUE0[0]), .W1(VALUE1[0]), .W2(VALUE2[0]), .W3(VALUE3[0]), .W4(VALUE4[0]), .W5(VALUE5[0]), .W6(VALUE6[0]), .W7(VALUE7[0]), .F(DATAQ[0]));
	Mux8_4b my_muxQ1(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(VALUE0[1]), .W1(VALUE1[1]), .W2(VALUE2[1]), .W3(VALUE3[1]), .W4(VALUE4[1]), .W5(VALUE5[1]), .W6(VALUE6[1]), .W7(VALUE7[1]), .F(DATAQ[1]));
	Mux8_4b my_muxQ2(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(VALUE0[2]), .W1(VALUE1[2]), .W2(VALUE2[2]), .W3(VALUE3[2]), .W4(VALUE4[2]), .W5(VALUE5[2]), .W6(VALUE6[2]), .W7(VALUE7[2]), .F(DATAQ[2]));
	Mux8_4b my_muxQ3(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(VALUE0[3]), .W1(VALUE1[3]), .W2(VALUE2[3]), .W3(VALUE3[3]), .W4(VALUE4[3]), .W5(VALUE5[3]), .W6(VALUE6[3]), .W7(VALUE7[3]), .F(DATAQ[3]));
	
	
	assign DATAP0 = DATAP[0];
	assign DATAP1 = DATAP[1];
	assign DATAP2 = DATAP[2];
	assign DATAP3 = DATAP[3];

	
	assign DATAQ0 = DATAQ[0];
	assign DATAQ1 = DATAQ[1];
	assign DATAQ2 = DATAQ[2];
	assign DATAQ3 = DATAQ[3];
	
endmodule
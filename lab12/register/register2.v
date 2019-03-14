module register2(IN, LOAD, CLK, OUT, PRESET_N, CLEAR_N);
	input IN, LOAD, CLK, PRESET_N, CLEAR_N;
	output OUT;
	assign D = LOAD ? IN : OUT;
	DFF mydff(.D(D), .CLK(CLK), .PRN(PRESET_N), .CLRN(CLEAR_N), .Q(OUT));
endmodule

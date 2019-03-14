module full_adder (Cin, x, y, S, Cout);
	
	input Cin, x, y;
	output Cout, S;

	
	assign S = (x ^ y ^ Cin);
	assign Cout = (x&y)|(x&Cin)|(y&Cin);
	
endmodule

module full_adder (x, y, Cin, S, Cout);
	
	input  x, y, Cin;
	output Cout, S;

	
	assign S = (x ^ y ^ Cin);
	assign Cout = (x&y)|(x&Cin)|(y&Cin);
	
endmodule

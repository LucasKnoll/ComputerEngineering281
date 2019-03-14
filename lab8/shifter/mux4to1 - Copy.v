module mux4to1(s1, s0, W0, W1, W2, W3, f);

	input W0, W1, W2, W3, s1, s0;
	output f;

	assign f = (~s1&~s0&W3)|(~s1&s0&W2)|(s1&~s0&W1)|(s1&s0&W0);

endmodule

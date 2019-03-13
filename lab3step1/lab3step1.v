module lab3step1 (A,C,G,W);
		input C,G,W;
		output A;
		
		not(Cn,C);
		not(Gn,G);
		not(Wn,W);
		nor(Z,Cn,G,Wn);
		nor(X,C,Gn,W);
		nor(A,X,Z);
		
		
endmodule

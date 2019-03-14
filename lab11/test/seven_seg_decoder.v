module seven_seg_decoder(x, z_out);
		input [3:0] x;
		output reg [0:6] z_out;
		

		
		always@(x)
				case(x)
				4'd0000 : z_out = 7'b0000001;
				4'd0001 : z_out = 7'b1001111;
				4'd0010 : z_out = 7'b0001000;
				4'd0011 : z_out = 7'b1100000;
				4'd0100 : z_out = 7'b1001100;
				4'd0101 : z_out = 7'b0100100;
				4'd0110 : z_out = 7'b0110000;
				4'd0111 : z_out = 7'b0111000;
				4'd1000 : z_out = 7'b0000000;
				4'd1001 : z_out = 7'b0000100;
				4'd1010 : z_out = 7'b0010010;
				4'd1011 : z_out = 7'b0000110;
				4'd1100 : z_out = 7'b0110001;
				4'd1101 : z_out = 7'b1000010;
				4'd1110 : z_out = 7'b0100000;
				4'd1111 : z_out = 7'b0001111;
				endcase
				
				   
endmodule
module tb_and32;
	reg[31:0] A,B;
	wire[31:0] C;
	
	and32 test(C,A,B);
	initial begin
		A = 32'b11100011;
		B = 32'b00000011;
		#40;
		$monitor("%8h", C);
	end
endmodule
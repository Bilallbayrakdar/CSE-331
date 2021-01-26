module tb_32_mux_2_1();

	reg[31:0] A,B;
	wire[31:0] res;
	reg s;
	mux_32_2_1 mx(A,B,s,res);
	initial begin
		A = 32'b0000;
		B = 32'b1111;
		s = 1'b1;
		#100;
		$monitor("%32b",res);
	
	end

endmodule
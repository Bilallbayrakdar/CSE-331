module tb_shifter_2();

reg[31:0] A;
wire[31:0] res;

shifter_2 sh(A,res);

	initial begin
		A = 32'b0011;
		#40;
		$monitor("%32b => %32b",A,res);
	end
endmodule

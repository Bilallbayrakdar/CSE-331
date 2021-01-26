module tb_is_zero();
	reg[31:0] A;
	wire res;
	is_zero iz(A,res);
	
	initial begin
		A = 32'b00000000000000000000000000000000;
		#10;
		$monitor("A= %32b || res: %b",A,res);
	end
endmodule
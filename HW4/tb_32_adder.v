module tb_adder_32();

	reg[31:0] A,B;
	wire c_out;
	wire[31:0] res;
	
	adder_32 add32(A, B, c_out, res);
	
	initial begin
		
		A = 32'b1111000011110000;
		B = 32'b0000111100001111;
		#60;
		$monitor("%32b + %32b = %32b",A,B, res);
	end


endmodule
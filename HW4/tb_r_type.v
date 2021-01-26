module tb_r_type();
	
	reg[31:0] a;
	wire[1:0] res;
	r_type r(a,res);
	
	initial begin
		a = 32'b10011001100110011001100110011001;
		#10;
		$monitor("out:%32b res: %2b",a,res);
	
	end

endmodule
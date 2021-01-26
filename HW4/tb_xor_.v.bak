module tb_xor_();

	reg a,b;
	wire res;
	
	xor_ x1(res,a,b);
	initial begin
	
		a = 1'b0;
		b = 1'b1;
		#10;
		$monitor("res: %1b",res);
		
	end
	
endmodule
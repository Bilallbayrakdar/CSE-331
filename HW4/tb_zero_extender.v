module tb_zero_extender_32();
	reg[15:0] a;
	wire[31:0] res;
	
	zero_extender_32 ze(a,res);
	
	initial begin
	
		a = 15'b11111111111;
		#10;
		$monitor("%32b",res);
	
	end
endmodule
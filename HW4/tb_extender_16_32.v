module tb_extender_16_32();
	
	reg[15:0] num;
	wire[31:0] res;
	
	extender_16_32 ex(res,num);
	initial begin
		num = 16'b1000000000000000;
		//sign = 1'b0;
		#30;
		$monitor("%16b => %32b",num,res);
	end
	
endmodule
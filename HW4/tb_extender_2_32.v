module tb_extender_2_32();

	reg[1:0] num;
	wire[31:0] res;
	
	extender_2_32 ext(res,num);
	
	initial begin
		num = 2'b11;
		#10;
		$monitor("res: %32b",res);
	end

endmodule
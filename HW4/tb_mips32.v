module tb_mips32();
	
	reg clk;
	//reg[13:0] pc;
	mips32 cpu(clk);
	
	initial begin
		clk = 1'b0;
		//$monitor("pc: %14b",pc);
	end

	always #10 clk = ~clk;

endmodule
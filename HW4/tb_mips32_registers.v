module tb_mips32_registers();
	
	reg clk, regWrite1, regWrite2;
	reg[13:0] rr1,rr2,wr1,wr2;
	reg[31:0] wd1,wd2;
	wire[31:0] c1,c2;
	
	mips32_registers registers(clk,rr1,rr2, wr1, wr2, regWrite1, regWrite2, wd1, wd2, c1, c2);
	
	initial begin
		$readmemb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/registers.txt", registers.registers);
		
		clk = 1'b1;
		regWrite1 = 1'b1;
		regWrite2 = 1'b1;
		
		rr1 = 14'b00000000000000;
		rr2 = 14'b00000000000001;
		
		wr1 = 14'b00000000000010;
		wr2 = 14'b00000000000011;
		
		wd1 = 32'b11111111000000001111111100000000;
		wd2 = 32'b00000000111111110000000011111111;
		
		$monitor("rs: %32b\nrt: %32b",c1,c2);
	end
	
	always #10 clk = ~clk;

endmodule
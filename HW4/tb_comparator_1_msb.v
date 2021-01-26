module tb_comparator_1_msb();
	
	reg a,b;
	wire big,eq,sm;
	
	comparator_1_lsb c1(a,b,big,eq,sm);
	
	initial begin
		a = 1'b1;
		b = 1'b1;
		#10;
		$monitor("big: %1b eq: %1b sm: %1b",big,eq,sm);
	end
	
endmodule
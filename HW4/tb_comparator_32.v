module tb_comparator_32();
	
	reg[31:0] a,b;
	wire big, eq, sm;
	
	comparator_32 c0(a,b,big,eq,sm);
	
	initial begin
	b = 32'b1111;
	a = 32'b1111;
	#40;
	$monitor("big: %1b | eq: %1b  | sm: %1b",big,eq,sm);
	end


endmodule
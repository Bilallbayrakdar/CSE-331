module tb_comparator_1();
	reg a,b;
	reg s_b, s_sm;
	wire big, eq, sm;
	
	comparator_1 c0(a,b,s_b,s_sm, big, eq,sm);
	
	initial begin
	
	a 		= 1'b1;
	b 		= 1'b0;
	s_b 	= 1'b0;
	s_sm 	= 1'b1;
	#10;
	$monitor("big:%1b | eq:%1b |sm:%1b ",big,eq,sm);
	
	end
	
endmodule
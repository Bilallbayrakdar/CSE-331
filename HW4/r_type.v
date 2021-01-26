module r_type(alu_out,res);

	input[31:0] alu_out;
	output[31:0] res;
	wire not_eq,not_sm,big,eq,sm;
	
	wire[1:0] tmp_res;
	
	//comparator_32 cmp(alu_out,32'b0,big,eq,sm);
	
	and(sm,alu_out[31],1);
	is_zero z0(alu_out,eq);
	not(not_eq,eq);
	not(not_sm,sm);
	and(big,not_eq,not_sm);
	
	or(tmp_res[1], big,sm);
	or(tmp_res[0],big,eq);
	
	extender_2_32 ext(res,tmp_res);
	
endmodule
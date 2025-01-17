module comparator_1(a,b,p_b,p_sm, big,eq,sm);

	input a,b;
	input p_b,p_sm;
	output big,eq,sm;
	
	wire a_not,b_not,eq_tmp_1,eq_tmp_2,b_tmp_1,b_tmp_2,s_tmp_1,s_tmp_2;
	wire p_b_not, p_sm_not;
	
	not (p_b_not,p_b);
	not (p_sm_not,p_sm);
	
	not(a_not,a);
	not(b_not,b);
	
	and(b_tmp_1,a,b_not);
	or(b_tmp_2,p_b,b_tmp_1);
	and(big, p_sm_not,b_tmp_2);
	
	
	and(s_tmp_1,b,a_not);
	or(s_tmp_2,p_sm,s_tmp_1);
	and(sm,p_b_not,s_tmp_2);
	
	
	or(eq_tmp_1,big,sm);
	not(eq_tmp_2,eq_tmp_1);
	and(eq,eq_tmp_2,p_b_not,p_sm_not);

endmodule
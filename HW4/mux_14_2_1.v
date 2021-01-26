module mux_14_2_1(a, b, s, res);

	input[13:0] a,b;
	input s;
	output[13:0] res;
	wire s_not;
	wire[13:0] a1, a2;
	
	and(a2[0], b[0], s);
	and(a2[1], b[1], s);
	and(a2[2], b[2], s);
	and(a2[3], b[3], s);
	and(a2[4], b[4], s);
	and(a2[5], b[5], s);
	and(a2[6], b[6], s);
	and(a2[7], b[7], s);
	and(a2[8], b[8], s);
	and(a2[9], b[9], s);
	and(a2[10], b[10], s);
	and(a2[11], b[11], s);
	and(a2[12], b[12], s);
	and(a2[13], b[13], s);
	
	not(s_not,s);
	
	and(a1[0], a[0], s_not);
	and(a1[1], a[1], s_not);
	and(a1[2], a[2], s_not);
	and(a1[3], a[3], s_not);
	and(a1[4], a[4], s_not);
	and(a1[5], a[5], s_not);
	and(a1[6], a[6], s_not);
	and(a1[7], a[7], s_not);
	and(a1[8], a[8], s_not);
	and(a1[9], a[9], s_not);
	and(a1[10], a[10], s_not);
	and(a1[11], a[11], s_not);
	and(a1[12], a[12], s_not);
	and(a1[13], a[13], s_not);
	
	or(res[0],  a1[0], a2[0]);
	or(res[1],  a1[1], a2[1]);
	or(res[2],  a1[2], a2[2]);
	or(res[3],  a1[3], a2[3]);
	or(res[4],  a1[4], a2[4]);
	or(res[5],  a1[5], a2[5]);
	or(res[6],  a1[6], a2[6]);
	or(res[7],  a1[7], a2[7]);
	or(res[8],  a1[8], a2[8]);
	or(res[9],  a1[9], a2[9]);
	or(res[10], a1[10], a2[10]);
	or(res[11], a1[11], a2[11]);
	or(res[12], a1[12], a2[12]);
	or(res[13], a1[13], a2[13]);
	
endmodule
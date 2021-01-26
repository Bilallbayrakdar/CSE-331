module mux_5_2_1(a, b, s, res);

	input[4:0] a,b;
	input s;
	output[4:0] res;
	wire s_not;
	wire[4:0] a1, a2;
	
	and(a2[0], b[0], s);
	and(a2[1], b[1], s);
	and(a2[2], b[2], s);
	and(a2[3], b[3], s);
	and(a2[4], b[4], s);
	
	not(s_not,s);
	
	and(a1[0], a[0], s_not);
	and(a1[1], a[1], s_not);
	and(a1[2], a[2], s_not);
	and(a1[3], a[3], s_not);
	and(a1[4], a[4], s_not);
	
	or(res[0],  a1[0], a2[0]);
	or(res[1],  a1[1], a2[1]);
	or(res[2],  a1[2], a2[2]);
	or(res[3],  a1[3], a2[3]);
	or(res[4],  a1[4], a2[4]);
	
endmodule
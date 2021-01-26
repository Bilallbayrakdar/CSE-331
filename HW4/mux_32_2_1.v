module mux_32_2_1(a, b, s, res);

	input[31:0] a,b;
	input s;
	output[31:0] res;
	wire s_not;
	wire[31:0] a1, a2;
	
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
	and(a2[14], b[14], s);
	and(a2[15], b[15], s);
	and(a2[16], b[16], s);
	and(a2[17], b[17], s);
	and(a2[18], b[18], s);
	and(a2[19], b[19], s);
	and(a2[20], b[20], s);
	and(a2[20], b[20], s);
	and(a2[21], b[21], s);
	and(a2[22], b[22], s);
	and(a2[23], b[23], s);
	and(a2[24], b[24], s);
	and(a2[25], b[25], s);
	and(a2[26], b[26], s);
	and(a2[27], b[27], s);
	and(a2[28], b[28], s);
	and(a2[29], b[29], s);
	and(a2[30], b[30], s);
	and(a2[31], b[31], s);
	
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
	and(a1[14], a[14], s_not);
	and(a1[15], a[15], s_not);
	and(a1[16], a[16], s_not);
	and(a1[17], a[17], s_not);
	and(a1[18], a[18], s_not);
	and(a1[19], a[19], s_not);
	and(a1[20], a[20], s_not);
	and(a1[20], a[20], s_not);
	and(a1[21], a[21], s_not);
	and(a1[22], a[22], s_not);
	and(a1[23], a[23], s_not);
	and(a1[24], a[24], s_not);
	and(a1[25], a[25], s_not);
	and(a1[26], a[26], s_not);
	and(a1[27], a[27], s_not);
	and(a1[28], a[28], s_not);
	and(a1[29], a[29], s_not);
	and(a1[30], a[30], s_not);
	and(a1[31], a[31], s_not);
	
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
	or(res[14], a1[14], a2[14]);
	or(res[15], a1[15], a2[15]);
	or(res[16], a1[16], a2[16]);
	or(res[17], a1[17], a2[17]);
	or(res[18], a1[18], a2[18]);
	or(res[19], a1[19], a2[19]);
	or(res[20], a1[20], a2[20]);
	or(res[20], a1[20], a2[20]);
	or(res[21], a1[21], a2[21]);
	or(res[22], a1[22], a2[22]);
	or(res[23], a1[23], a2[23]);
	or(res[24], a1[24], a2[24]);
	or(res[25], a1[25], a2[25]);
	or(res[26], a1[26], a2[26]);
	or(res[27], a1[27], a2[27]);
	or(res[28], a1[28], a2[28]);
	or(res[29], a1[29], a2[29]);
	or(res[30], a1[30], a2[30]);
	or(res[31], a1[31], a2[31]);
	
endmodule
module comparator_32(a,b,big,eq,sm);

	input[31:0] a,b;
	output big, eq, sm;
	wire[30:0] b_tmp, e_tmp, s_tmp;
	
	comparator_1_msb 	c31(a[31],b[31], b_tmp[30], e_tmp[30], s_tmp[30]);
	comparator_1 		c30(a[30],b[30], b_tmp[30], s_tmp[30], b_tmp[29], e_tmp[29], s_tmp[29]);
	comparator_1 		c29(a[29],b[29], b_tmp[29], s_tmp[29], b_tmp[28], e_tmp[28], s_tmp[28]);
	comparator_1 		c28(a[28],b[28], b_tmp[28], s_tmp[28], b_tmp[27], e_tmp[27], s_tmp[27]);
	comparator_1 		c27(a[27],b[27], b_tmp[27], s_tmp[27], b_tmp[26], e_tmp[26], s_tmp[26]);
	comparator_1 		c26(a[26],b[26], b_tmp[26], s_tmp[26], b_tmp[25], e_tmp[25], s_tmp[25]);
	comparator_1 		c25(a[25],b[25], b_tmp[25], s_tmp[25], b_tmp[24], e_tmp[24], s_tmp[24]);
	comparator_1 		c24(a[24],b[24], b_tmp[24], s_tmp[24], b_tmp[23], e_tmp[23], s_tmp[23]);
	comparator_1 		c23(a[23],b[23], b_tmp[23], s_tmp[23], b_tmp[22], e_tmp[22], s_tmp[22]);
	comparator_1 		c22(a[22],b[22], b_tmp[22], s_tmp[22], b_tmp[21], e_tmp[21], s_tmp[21]);
	comparator_1 		c21(a[21],b[21], b_tmp[21], s_tmp[21], b_tmp[20], e_tmp[20], s_tmp[20]);
	comparator_1 		c20(a[20],b[20], b_tmp[20], s_tmp[20], b_tmp[19], e_tmp[19], s_tmp[19]);
	comparator_1 		c19(a[19],b[19], b_tmp[19], s_tmp[19], b_tmp[18], e_tmp[18], s_tmp[18]);
	comparator_1 		c18(a[18],b[18], b_tmp[18], s_tmp[18], b_tmp[17], e_tmp[17], s_tmp[17]);
	comparator_1 		c17(a[17],b[17], b_tmp[17], s_tmp[17], b_tmp[16], e_tmp[16], s_tmp[16]);
	comparator_1 		c16(a[16],b[16], b_tmp[16], s_tmp[16], b_tmp[15], e_tmp[15], s_tmp[15]);
	comparator_1 		c15(a[15],b[15], b_tmp[15], s_tmp[15], b_tmp[14], e_tmp[14], s_tmp[14]);
	comparator_1 		c14(a[14],b[14], b_tmp[14], s_tmp[14], b_tmp[13], e_tmp[13], s_tmp[13]);
	comparator_1 		c13(a[13],b[13], b_tmp[13], s_tmp[13], b_tmp[12], e_tmp[12], s_tmp[12]);
	comparator_1 		c12(a[12],b[12], b_tmp[12], s_tmp[12], b_tmp[11], e_tmp[11], s_tmp[11]);
	comparator_1 		c11(a[11],b[11], b_tmp[11], s_tmp[11], b_tmp[10], e_tmp[10], s_tmp[10]);
	comparator_1 		c10(a[10],b[10], b_tmp[10], s_tmp[10], b_tmp[9], e_tmp[9], s_tmp[9]);
	comparator_1 		c9(a[9],b[9], b_tmp[9], s_tmp[9], b_tmp[8], e_tmp[8], s_tmp[8]);
	comparator_1 		c8(a[8],b[8], b_tmp[8], s_tmp[8], b_tmp[7], e_tmp[7], s_tmp[7]);
	comparator_1 		c7(a[7],b[7], b_tmp[7], s_tmp[7], b_tmp[6], e_tmp[6], s_tmp[6]);
	comparator_1 		c6(a[6],b[6], b_tmp[6], s_tmp[6], b_tmp[5], e_tmp[5], s_tmp[5]);
	comparator_1 		c5(a[5],b[5], b_tmp[5], s_tmp[5], b_tmp[4], e_tmp[4], s_tmp[4]);
	comparator_1 		c4(a[4],b[4], b_tmp[4], s_tmp[4], b_tmp[3], e_tmp[3], s_tmp[3]);
	comparator_1 		c3(a[3],b[3], b_tmp[3], s_tmp[3], b_tmp[2], e_tmp[2], s_tmp[2]);
	comparator_1 		c2(a[2],b[2], b_tmp[2], s_tmp[2], b_tmp[1], e_tmp[1], s_tmp[1]);
	comparator_1 		c1(a[1],b[1], b_tmp[1], s_tmp[1], b_tmp[0], e_tmp[0], s_tmp[0]);
	comparator_1 		c0(a[0],b[0], b_tmp[0], s_tmp[0], big, eq, sm);

endmodule
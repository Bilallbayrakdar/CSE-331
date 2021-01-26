module is_zero(a,res);
	input[31:0] a;
	output res;
	wire[31:0] tmp1,tmp2;
	
	or(tmp1[0], a[0],0);
	or(tmp1[1], a[1],0);
	or(tmp1[2], a[2],0);
	or(tmp1[3], a[3],0);
	or(tmp1[4], a[4],0);
	or(tmp1[5], a[5],0);
	or(tmp1[6], a[6],0);
	or(tmp1[7], a[7],0);
	or(tmp1[8], a[8],0);
	or(tmp1[9], a[9],0);
	or(tmp1[10], a[10],0);
	or(tmp1[11], a[11],0);
	or(tmp1[12], a[12],0);
	or(tmp1[13], a[13],0);
	or(tmp1[14], a[14],0);
	or(tmp1[15], a[15],0);
	or(tmp1[16], a[16],0);
	or(tmp1[17], a[17],0);
	or(tmp1[18], a[18],0);
	or(tmp1[19], a[19],0);
	or(tmp1[20], a[20],0);
	or(tmp1[21], a[21],0);
	or(tmp1[22], a[22],0);
	or(tmp1[23], a[23],0);
	or(tmp1[24], a[24],0);
	or(tmp1[25], a[25],0);
	or(tmp1[26], a[26],0);
	or(tmp1[27], a[27],0);
	or(tmp1[28], a[28],0);
	or(tmp1[29], a[29],0);
	or(tmp1[30], a[30],0);
	or(tmp1[31], a[31],0);
	
	
	not(tmp2[0],  tmp1[0]);
	not(tmp2[1],  tmp1[1]);
	not(tmp2[2],  tmp1[2]);
	not(tmp2[3],  tmp1[3]);
	not(tmp2[4],  tmp1[4]);
	not(tmp2[5],  tmp1[5]);
	not(tmp2[6],  tmp1[6]);
	not(tmp2[7],  tmp1[7]);
	not(tmp2[8],  tmp1[8]);
	not(tmp2[9],  tmp1[9]);
	not(tmp2[10], tmp1[10]);
	not(tmp2[11], tmp1[11]);
	not(tmp2[12], tmp1[12]);
	not(tmp2[13], tmp1[13]);
	not(tmp2[14], tmp1[14]);
	not(tmp2[15], tmp1[15]);
	not(tmp2[16], tmp1[16]);
	not(tmp2[17], tmp1[17]);
	not(tmp2[18], tmp1[18]);
	not(tmp2[19], tmp1[19]);
	not(tmp2[20], tmp1[20]);
	not(tmp2[21], tmp1[21]);
	not(tmp2[22], tmp1[22]);
	not(tmp2[23], tmp1[23]);
	not(tmp2[24], tmp1[24]);
	not(tmp2[25], tmp1[25]);
	not(tmp2[26], tmp1[26]);
	not(tmp2[27], tmp1[27]);
	not(tmp2[28], tmp1[28]);
	not(tmp2[29], tmp1[29]);
	not(tmp2[30], tmp1[30]);
	not(tmp2[31], tmp1[31]);
	
	and(res,tmp2[0],tmp2[1],tmp2[2],tmp2[3],tmp2[4],tmp2[5],tmp2[6],tmp2[7],tmp2[8],tmp2[9],tmp2[10],tmp2[11],tmp2[12],tmp2[13],tmp2[14],tmp2[15],tmp2[16],tmp2[17],tmp2[18],tmp2[19],tmp2[20],tmp2[21],tmp2[22],tmp2[23],tmp2[24],tmp2[25],tmp2[26],tmp2[27],tmp2[28],tmp2[29],tmp2[30],tmp2[31]);
endmodule
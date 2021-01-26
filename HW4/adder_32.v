module adder_32(a, b, c_out, res);

	input[31:0] a, b;
	wire[30:0] c;
	output[31:0] res;
	output c_out;
	
	half_adder a0( a[0], b[0],  res[0], c[0]);
	full_adder a1( a[1], b[1],  c[0],  res[1],  c[1]);
	full_adder a2( a[2], b[2],  c[1],  res[2],  c[2]);
	full_adder a3( a[3], b[3],  c[2],  res[3],  c[3]);
	full_adder a4( a[4], b[4],  c[3],  res[4],  c[4]);
	full_adder a5( a[5], b[5],  c[4],  res[5],  c[5]);
	full_adder a6( a[6], b[6],  c[5],  res[6],  c[6]);
	full_adder a7( a[7], b[7],  c[6],  res[7],  c[7]);
	full_adder a8( a[8], b[8],  c[7],  res[8],  c[8]);
	full_adder a9( a[9], b[9],  c[8],  res[9],  c[9]);
	full_adder a10(a[10], b[10], c[9],  res[10], c[10]);
	full_adder a11(a[11], b[11], c[10], res[11], c[11]);
	full_adder a12(a[12], b[12], c[11], res[12], c[12]);
	full_adder a13(a[13], b[13], c[12], res[13], c[13]);
	full_adder a14(a[14], b[14], c[13], res[14], c[14]);
	full_adder a15(a[15], b[15], c[14], res[15], c[15]);
	full_adder a16(a[16], b[16], c[15], res[16], c[16]);
	full_adder a17(a[17], b[17], c[16], res[17], c[17]);
	full_adder a18(a[18], b[18], c[17], res[18], c[18]);
	full_adder a19(a[19], b[19], c[18], res[19], c[19]);
	full_adder a20(a[20], b[20], c[19], res[20], c[20]);
	full_adder a21(a[21], b[21], c[20], res[21], c[21]);
	full_adder a22(a[22], b[22], c[21], res[22], c[22]);
	full_adder a23(a[23], b[23], c[22], res[23], c[23]);
	full_adder a24(a[24], b[24], c[23], res[24], c[24]);
	full_adder a25(a[25], b[25], c[24], res[25], c[25]);
	full_adder a26(a[26], b[26], c[25], res[26], c[26]);
	full_adder a27(a[27], b[27], c[26], res[27], c[27]);
	full_adder a28(a[28], b[28], c[27], res[28], c[28]);
	full_adder a29(a[29], b[29], c[28], res[29], c[29]);
	full_adder a30(a[30], b[30], c[29], res[30], c[30]);
	full_adder a31(a[31], b[31], c[30], res[31], c_out);
												
endmodule
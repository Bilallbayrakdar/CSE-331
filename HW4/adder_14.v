module adder_14(a, b, c_out, res);

	input[13:0] a, b;
	wire[12:0] c;
	output[13:0] res;
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
	full_adder a31(a[13], b[13], c[12], res[13], c_out);
												
endmodule
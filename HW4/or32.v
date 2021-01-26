module or32(res, a, b);

output [31:0] res;
input [31:0] a, b;

	or a0(res[0], a[0], b[0]);
	or a1(res[1], a[1], b[1]);
	or a2(res[2], a[2], b[2]);
	or a3(res[3], a[3], b[3]);
	or a4(res[4], a[4], b[4]);
	or a5(res[5], a[5], b[5]);
	or a6(res[6], a[6], b[6]);
	or a7(res[7], a[7], b[7]);
	or a8(res[8], a[8], b[8]);
	or a9(res[9], a[9], b[9]);
	or a10(res[10], a[10], b[10]);
	or a11(res[11], a[11], b[11]);
	or a12(res[12], a[12], b[12]);
	or a13(res[13], a[13], b[13]);
	or a14(res[14], a[14], b[14]);
	or a15(res[15], a[15], b[15]);
	or a16(res[16], a[16], b[16]);
	or a17(res[17], a[17], b[17]);
	or a18(res[18], a[18], b[18]);
	or a19(res[19], a[19], b[19]);
	or a20(res[20], a[20], b[20]);
	or a21(res[21], a[21], b[21]);
	or a22(res[22], a[22], b[22]);
	or a23(res[23], a[23], b[23]);
	or a24(res[24], a[24], b[24]);
	or a25(res[25], a[25], b[25]);
	or a26(res[26], a[26], b[26]);
	or a27(res[27], a[27], b[27]);
	or a28(res[28], a[28], b[28]);
	or a29(res[29], a[29], b[29]);
	or a30(res[30], a[30], b[30]);
	or a31(res[31], a[31], b[31]);

endmodule
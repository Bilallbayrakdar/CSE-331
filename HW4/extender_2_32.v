module extender_2_32(res, num);

output [31:0] res;
input [1:0] num;

	and a0(res[0], num[0],2'b1);
	and a1(res[1], num[1],2'b1);
	not a2(res[2], 1'b1);
	not a3(res[3], 1'b1);
	not a4(res[4], 1'b1);
	not a5(res[5], 1'b1);
	not a6(res[6], 1'b1);
	not a7(res[7], 1'b1);
	not a8(res[8], 1'b1);
	not a9(res[9], 1'b1);
	not a10(res[10], 1'b1);
	not a11(res[11], 1'b1);
	not a12(res[12], 1'b1);
	not a13(res[13], 1'b1);
	not a14(res[14], 1'b1);
	not a15(res[15], 1'b1);
	not a16(res[16], 1'b1);
	not a17(res[17], 1'b1);
	not a18(res[18], 1'b1);
	not a19(res[19], 1'b1);
	not a20(res[20], 1'b1);
	not a21(res[21], 1'b1);
	not a22(res[22], 1'b1);
	not a23(res[23], 1'b1);
	not a24(res[24], 1'b1);
	not a25(res[25], 1'b1);
	not a26(res[26], 1'b1);
	not a27(res[27], 1'b1);
	not a28(res[28], 1'b1);
	not a29(res[29], 1'b1);
	not a30(res[30], 1'b1);
	not a31(res[31], 1'b1);

endmodule
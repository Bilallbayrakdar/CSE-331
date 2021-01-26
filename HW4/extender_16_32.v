module extender_16_32(res, num);

output [31:0] res;
input [15:0] num;

	and a0(res[0], num[0],1'b1);
	and a1(res[1], num[1],1'b1);
	and a2(res[2], num[2],1'b1);
	and a3(res[3], num[3],1'b1);
	and a4(res[4], num[4],1'b1);
	and a5(res[5], num[5],1'b1);
	and a6(res[6], num[6],1'b1);
	and a7(res[7], num[7],1'b1);
	and a8(res[8], num[8],1'b1);
	and a9(res[9], num[9],1'b1);
	and a10(res[10], num[10],1'b1);
	and a11(res[11], num[11],1'b1);
	and a12(res[12], num[12],1'b1);
	and a13(res[13], num[13],1'b1);
	and a14(res[14], num[14],1'b1);
	and a15(res[15], num[15],1'b1);
	and a16(res[16], num[15], num[15]);
	and a17(res[17], num[15], num[15]);
	and a18(res[18], num[15], num[15]);
	and a19(res[19], num[15], num[15]);
	and a20(res[20], num[15], num[15]);
	and a21(res[21], num[15], num[15]);
	and a22(res[22], num[15], num[15]);
	and a23(res[23], num[15], num[15]);
	and a24(res[24], num[15], num[15]);
	and a25(res[25], num[15], num[15]);
	and a26(res[26], num[15], num[15]);
	and a27(res[27], num[15], num[15]);
	and a28(res[28], num[15], num[15]);
	and a29(res[29], num[15], num[15]);
	and a30(res[30], num[15], num[15]);
	and a31(res[31], num[15], num[15]);

endmodule
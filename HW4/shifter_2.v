module shifter_2(a, res);

input[31:0] a;
output[31:0] res;

assign res[0] = 1'b0;
assign res[1] = 1'b0;
assign res[2] = a[0];
assign res[3] = a[1];
assign res[4] = a[2];
assign res[5] = a[3];
assign res[6] = a[4];
assign res[7] = a[5];
assign res[8] = a[6];
assign res[9] = a[7];
assign res[10] = a[8];
assign res[11] = a[9];
assign res[12] = a[10];
assign res[13] = a[11];
assign res[14] = a[12];
assign res[15] = a[13];
assign res[16] = a[14];
assign res[17] = a[15];
assign res[18] = a[16];
assign res[19] = a[17];
assign res[20] = a[18];
assign res[21] = a[19];
assign res[22] = a[20];
assign res[23] = a[21];
assign res[24] = a[22];
assign res[25] = a[23];
assign res[26] = a[24];
assign res[27] = a[25];
assign res[28] = a[26];
assign res[29] = a[27];
assign res[30] = a[28];
assign res[31] = a[29];
endmodule			 	
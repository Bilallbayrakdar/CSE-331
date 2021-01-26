module shifter_2_14(a, res);

input[13:0] a;
output[13:0] res;

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
endmodule			 	
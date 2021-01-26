module alu_32(res, cout, z, a, b, op);
input [31:0] a, b;
input [2:0] op;
output [31:0] res;
output cout, z;
wire [30:0] tc;
wire res_or;
wire [7:0] or1;
wire [1:0] or2;

	alu_1 alu0(res[0], tc[0], a[0], b[0], op[2], op);
	alu_1 alu1(res[1], tc[1], a[1], b[1], tc[0], op);
	alu_1 alu2(res[2], tc[2], a[2], b[2], tc[1], op);
	alu_1 alu3(res[3], tc[3], a[3], b[3], tc[2], op);
	
	alu_1 alu4(res[4], tc[4], a[4], b[4], tc[3], op);
	alu_1 alu5(res[5], tc[5], a[5], b[5], tc[4], op);
	alu_1 alu6(res[6], tc[6], a[6], b[6], tc[5], op);
	alu_1 alu7(res[7], tc[7], a[7], b[7], tc[6], op);
	
	alu_1 alu8(res[8], tc[8], a[8], b[8], tc[7], op);
	alu_1 alu9(res[9], tc[9], a[9], b[9], tc[8], op);
	alu_1 alu10(res[10], tc[10], a[10], b[10], tc[9], op);
	alu_1 alu11(res[11], tc[11], a[11], b[11], tc[10],op);
	
	alu_1 alu12(res[12], tc[12], a[12], b[12], tc[11], op);
	alu_1 alu13(res[13], tc[13], a[13], b[13], tc[12], op);
	alu_1 alu14(res[14], tc[14], a[14], b[14], tc[13], op);
	alu_1 alu15(res[15], tc[15], a[15], b[15], tc[14], op);
	
	alu_1 alu16(res[16], tc[16], a[16], b[16], tc[15], op);
	alu_1 alu17(res[17], tc[17], a[17], b[17], tc[16], op);
	alu_1 alu18(res[18], tc[18], a[18], b[18], tc[17], op);
	alu_1 alu19(res[19], tc[19], a[19], b[19], tc[18], op);
	
	alu_1 alu20(res[20], tc[20], a[20], b[20], tc[19], op);
	alu_1 alu21(res[21], tc[21], a[21], b[21], tc[20], op);
	alu_1 alu22(res[22], tc[22], a[22], b[22], tc[21], op);
	alu_1 alu23(res[23], tc[23], a[23], b[23], tc[22], op);
	
	alu_1 alu24(res[24], tc[24], a[24], b[24], tc[23], op);
	alu_1 alu25(res[25], tc[25], a[25], b[25], tc[24], op);
	alu_1 alu26(res[26], tc[26], a[26], b[26], tc[25], op);
	alu_1 alu27(res[27], tc[27], a[27], b[27], tc[26], op);
	
	alu_1 alu28(res[28], tc[28], a[28], b[28], tc[27], op);
	alu_1 alu29(res[29], tc[29], a[29], b[29], tc[28], op);
	alu_1 alu30(res[30], tc[30], a[30], b[30], tc[29], op);
	alu_1_msb alu31(res[31], cout, a[31], b[31], tc[30], op);
	
	or (or1[0], res[0],  res[1],  res[2],  res[3]);
	or (or1[1], res[4],  res[5],  res[6],  res[7]);
	or (or1[2], res[8],  res[9],  res[10], res[11]);
	or (or1[3], res[12], res[13], res[14], res[15]);
	or (or1[4], res[16], res[17], res[18], res[19]);
	or (or1[5], res[20], res[21], res[22], res[23]);
	or (or1[6], res[24], res[25], res[26], res[27]);
	or (or1[7], res[28], res[29], res[30], res[31]);
	
	or (or2[0], or1[0], or1[1], or1[2], or1[3]);
	or (or2[1], or1[4], or1[5], or1[6], or1[7]);
	
	or (res_or, or2[0], or2[1]);
	not (z, res_or);
	
	//always@* begin
	//
	//	$display("a: %32b",a);
	//	$display("b: %32b",b);
	//	$display("res: %32b",res);
	//
	//end
	
endmodule
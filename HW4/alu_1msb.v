module alu_1_msb(res, cout, a, b, cin, op);
input a, b, cin;
input [2:0] op;
output res, cout;							// result of the ALU <=res | carry out <= cout | to check (A<B) <= set
wire v;												// detect overflow
wire xr, ao, aa, an1, co, ca, an2,xor_r;			//	handle combinational ALU
wire naa, nca;										// handle combinational ALU
	
	//Combinational implementation of the 1 bit ALU from book
	xor_ x1(xr, b, op[2]);
	or (ao, xr, a);
	and (aa, xr, a);
	not (naa, aa);
	and (an1, naa, ao);
	or (co, an1, cin);
	and (ca, an1, cin);
	not (nca, ca);
	and (an2, co, nca);	
	or (cout, aa, ca);
	xor_ x4(xor_r,b,a);
	
	xor_ x2(v, cin, cout);
	//xor_ x3(set, v, an2);
	
	mux_4_1 m1(res, aa,ao,an2,xor_r, op[1:0]);

endmodule
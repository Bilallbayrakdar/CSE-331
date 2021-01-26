module alu_1(res, cout, a, b, cin, op);
input a, b, cin;
input [2:0] op;
output res, cout;									// result of the ALU <=res 
wire xr, ao, aa, an1, co, ca, an2,xor_r;			//	handle combinational ALU
wire naa, nca;										// handle combinational ALU

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
	xor_ x2(xor_r, b,a);
	
	mux_4_1 m1(res, aa, ao, an2, xor_r, op[1:0]);

endmodule
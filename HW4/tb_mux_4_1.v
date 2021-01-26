module tb_mux_4_1;

reg A,B,C,D;
reg[1:0] sl;
wire res;	
	
	mux_4_1 x_test(res,A,B,C,D,sl);
	initial begin
		A = 1'b0;
		B = 1'b1;
		C = 1'b1;
		D = 1'b1;
		sl = 2'b01;
		#40;
		$monitor("%1b",res);
	end
endmodule
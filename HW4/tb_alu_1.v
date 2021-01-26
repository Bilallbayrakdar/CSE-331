module tb_alu_1;

reg A,B,cin;
wire res,c_out,less;
reg[2:0] op;

alu_1 alu(res,c_out,A,B,cin,op);

	initial begin
		A = 1'b1;
		B = 1'b0;
		op = 3'b111;
		cin = 1'b0;
		#40;
		$monitor("%b |%3b| %b = %b",A,B,op,res);
	end
endmodule
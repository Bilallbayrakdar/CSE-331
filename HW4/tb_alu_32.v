module tb_alu_32();

	reg [31:0] a, b;
	wire [31:0] x;
	reg [2:0] op;
	wire c0,z0;
	
	alu_32 a0(x, c0, z0, a, b, op);

	initial begin
		a = 32'b00000000000000000000000000000101;
		b = 32'b00000000000000000000000000001010;
		//b = 32'b00001111000011110000111100001111;
		op = 3'b000;
		#50;
		$monitor("%3b\n%32b\n%32b\n= %32b", op, a, b, x);
		
		//op = op = 3'b111;
		//$monitor("%3b\n%32b\n%32b\n= %32b", op, a, b, x);
		//#50;
	end


// 000 and
// 001 or
// 010 add
// 110 subt
// 111 less

endmodule
module tb_pc_handler();

	reg[31:0] adr,pc,rs;
	wire[31:0] res;
	reg br,bne,z,jmp,jr;
	
	
	pc_handler hnd(adr, pc, rs, br,bne,z,jmp,jr, res);

	initial begin
	adr = 32'b00000000000000000000000000001100;
	pc  = 32'b11110000111100000000000000000000;
	rs  = 32'b00000000000000001111111111111111;
	br  = 1'b1; 
	bne = 1'b0;
	z   = 1'b1;
	jmp = 1'b0;
	jr  = 1'b0;
	$monitor("jr: %1b jmp: %1b | %32b",jr,jmp,res);
	#40;
	end

	//Test Cases
	//
	//Case #1
	//
	// js=0 bs =0 => That means pc_next = pc+4
	//	passed
	//
	///Case #2 
	// js=1 bs=0 => There is a jump
	//
	// adr = 0000000000000000000000001100
	// pc =  1100000001111000000000001100
	// 
	// adr<< 2[31:4] 	= 	00000000000000000000000000110000
	// pc[31:28] 		= 	1111 
	// res 				=	11110000000000000000000000110000
	//
	// Case #3
	// js=0 bs=1 => There is a successful branch
	//
	// adr <<2 		= 00000000000000000000000000110000
	// pc  + 4 		= 11110000111100000000000000000100
	// res pc+adr 	= 11110000111100000000000000110100
endmodule
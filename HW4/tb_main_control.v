module tb_main_control();
	reg[5:0] opcode;
	wire Jal,Imm,Jmp,RegDest,Branch, Bneq, MemRead, MemtoReg, MemWrite,ALUSrc,RegWrite,RegWrite2,Lui;
	wire[1:0] ALUOp;
	main_control mc(opcode,Jal,Imm,Jmp,RegDest,Branch, Bneq, MemRead, MemtoReg,ALUOp, MemWrite,ALUSrc,RegWrite,RegWrite2,Lui);
	initial begin
		opcode = 6'b001101;
		#40;
		$monitor("opcode:%6b\nJal: 		%1b	Imm: 		%1b		\nJmp: 		%1b	 RegDest: 	%1b 	Branch: 	%1b\nBneq:		%1b 	MemRead:	%1b	MemtoReg:	%1b\nALUOp:	%2b	MemWrite:	%1b	ALUSrc:	%1b	\nRegWrite:	%1b	RegWrite2:	%1b	Lui:	%1b",opcode,Jal,Imm,Jmp,RegDest,Branch, Bneq, MemRead, MemtoReg,ALUOp, MemWrite,ALUSrc,RegWrite,RegWrite2,Lui);
	end
	
endmodule

	//6'b000000 r_type	
	//6'b100011 lw			
	//6'b101011 sw			
	//6'b000100 beq
	//6'b000101 bne
	//6'b000010 j
	//6'b000011 jal
	//6'b001000 jr
	//6'b001101 ori
	//6'b001111 lui
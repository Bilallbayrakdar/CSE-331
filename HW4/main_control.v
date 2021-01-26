module main_control(opcode, Jal,Imm,Jmp,RegDest,Branch, Bneq, MemRead, MemtoReg,ALUOp, MemWrite,ALUSrc,RegWrite,RegWrite2,Lui);

	input[5:0] opcode;
	output Jal,Imm,Jmp,RegDest,Branch, Bneq, MemRead, MemtoReg, MemWrite,ALUSrc,RegWrite,RegWrite2,Lui;
	output[1:0]ALUOp;
	wire[5:0] op_not;
	wire r_type,lw,sw,beq,bne,j,jal,jr,ori,lui;
	
	not(op_not[0],opcode[0]);
	not(op_not[1],opcode[1]);
	not(op_not[2],opcode[2]);
	not(op_not[3],opcode[3]);
	not(op_not[4],opcode[4]);
	not(op_not[5],opcode[5]);
	
	// 00 0000 addn subn andn orn jr || xorn -> not implemented in ALU
	and(r_type,op_not[5],op_not[4],op_not[3],op_not[2],op_not[1],op_not[0]);
	//10 0011
	and(lw,opcode[5],op_not[4],op_not[3],op_not[2],opcode[1],opcode[0]);
	//10 1011
	and(sw,opcode[5],op_not[4],opcode[3],op_not[2],opcode[1],opcode[0] );
	//00 0100
	and(beq,op_not[5],op_not[4],op_not[3],opcode[2],op_not[1],op_not[0]);
	//00 0101
	and(bne,op_not[5],op_not[4],op_not[3],opcode[2],op_not[1],opcode[0]);
	//00 0010
	and(j,op_not[5],op_not[4],op_not[3],op_not[2],opcode[1],op_not[0]);
	//00 0011
	and(jal,op_not[5],op_not[4],op_not[3],op_not[2],opcode[1],opcode[0]);
	//00 1101
	and(ori,op_not[5],op_not[4],opcode[3],opcode[2],op_not[1],opcode[0]);
	//00 1111
	and(lui,op_not[5],op_not[4],opcode[3],opcode[2],opcode[1],opcode[0]);
	
	and(Jal,jal,1'b1);
	or(Imm,ori,lui);
	or(Jmp,j,jal);
	and(RegDest,r_type,1'b1);
	or(Branch,beq,bne);
	and(Bneq,bne,1'b1);
	and(MemRead,lw,1'b1);
	and(MemtoReg,lw,1'b1);
	or(ALUOp[1],r_type,ori);
	or(ALUOp[0],beq,bne,ori);
	and(MemWrite,sw,1'b1);
	or(ALUSrc,lw,sw,ori);
	or(RegWrite,r_type,lw,lui,ori);
	or(RegWrite2,jal,r_type);
	and(Lui,lui,1'b1);
	
endmodule
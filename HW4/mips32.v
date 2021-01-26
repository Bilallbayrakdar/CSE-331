module mips32(clk);

	input clk;
	wire[13:0] pc;
	wire[31:0] instruction;
	
	wire[31:0] ALUres, rOut, rs, rt, readMemData, writeData1, writeData2, b, extImm, zextImm, zeshImm, wriImm, pc_8,writeData1_tmp,extVal,extImm_16,extImm_26;
	wire[13:0] pc_8_14; //
	wire[2:0] ALUctr;
	wire[1:0] ALUop;
	
	wire[4:0] writeReg1, writeReg2;
	
	wire Jal, Imm, Jmp, RegDest, Branch, Bneq, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite1, RegWrite2, RegWrite2f, Lui;
	wire cout,z, aluWr,Jr,tmp;
	
	not(Jr, aluWr);
	
	reg[13:0] nextPc;
	wire[13:0] nextPcWire;
	
	wire[13:0] j_refined, b_refined, next_pc; //
	wire[13:0] b_tmp, res_tmp, j_tmp; // 
	wire beq, bq_tmp, mx3_sel; // 
	
	initial begin
		nextPc = 14'b0;
	end
	
	program_counter pc_cnt(clk,nextPc,pc,instruction);
	
	extender_16_32 ex1(extImm_16,instruction[15:0]);
	extender_26_32 ex2(extImm_26,instruction[25:0]);
	
	mux_32_2_1 mx0(extImm_16,extImm_26,Jmp,extImm);
	
	zero_extender_32 zex1(zextImm,instruction[15:0]);
	
	mux_32_2_1 mx4(extImm,zextImm,Imm,extVal); // burası yazılacak
	
	main_control m_ctr(instruction[31:26],Jal, Imm, Jmp, RegDest, Branch, Bneq, MemRead, MemtoReg,  ALUop, MemWrite, ALUSrc, RegWrite1, RegWrite2, Lui);
	alu_controller alu_ctr(ALUop,instruction[5:0],ALUctr,aluWr);
	
	mux_32_2_1 mx1(rt,extVal,ALUSrc,b);
	
	alu_32 alu(ALUres, tmp, z, rs, b, ALUctr);
	r_type r(ALUres, rOut);
	
	and(RegWrite2f,RegWrite2,aluWr);
	
	mips32_registers regs(clk,instruction[25:21], instruction[20:16], writeReg1, writeReg2, RegWrite1, RegWrite2f, writeData1, writeData2, rs, rt);
	
	mips32_mem mem(clk,MemWrite, MemRead, ALUres[17:0], rt ,readMemData);
	
	mux_5_2_1 mx2(instruction[20:16],instruction[25:21],RegDest,writeReg1);
	mux_5_2_1 mx3(instruction[15:11],5'b11111,Jal,writeReg2);
	
	
	zero_shifter_16 zesh(zeshImm,instruction[15:0]);
	
	mux_32_2_1 mx5(ALUres,readMemData,MemtoReg,writeData1_tmp);
	
	mux_32_2_1 mx6(writeData1_tmp,zeshImm,Lui,writeData1);
	
	adder_14 add1(pc,14'b00000000001000,tmp,pc_8_14);
	zero_extender_14_32 zex0(pc_8,pc_8_14);
	
	mux_32_2_1 mx7(rOut,pc_8,Jal,writeData2); 
		
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	xor_ xr(bq_tmp,z,Bneq); 
	and(beq, bq_tmp,Branch);
	
	shifter_2_14 shf(extImm[13:0], b_tmp);
	assign j_refined[13:10] = pc[13:10];
	assign j_refined[10:0] = b_tmp[10:0];				// Address for jump operations
	
	adder_14 a0(pc, 14'b00000000000100,tmp,next_pc);		// PC+4
	
	adder_14 a1(b_tmp,next_pc,tmp,b_refined);			// Address for branch operations
	
	mux_14_2_1 bmx1(next_pc, b_refined, beq, res_tmp);	// To handle branch instructions
	mux_14_2_1 bmx2(j_refined, rs[13:0], Jr, j_tmp);		// To hanlde jump instructions
		
	or(mx3_sel, Jmp, Jr);
	
	mux_14_2_1 bmx3(res_tmp, j_tmp, mx3_sel, nextPcWire);				// To get address of next instruction
	
	always @(negedge clk) begin
		nextPc = nextPcWire;
		$display("instruction: %32b",instruction);
		//$display("ALUctr: %3b",ALUctr);
		//$display("rs: %32b",rs);
		//$display("b: %32b",b);
		//$display("nextPc: %14b",nextPc);
	end
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
endmodule
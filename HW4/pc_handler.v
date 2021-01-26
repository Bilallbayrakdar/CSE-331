module pc_handler(address, pc_val, rs_cnt, branch, bneq, zero, jmp, jr, res);
	input branch,bneq,jmp,jr,zero;
	input[13:0] pc_val;
	input[13:0] address,rs_cnt; // rs_cnt => rs in content i
	output[13:0] res;
	//reg[13:0] res;
	//output mx3_sel;
	wire[13:0] j_refined, b_refined, next_pc; //
	wire[13:0] b_tmp, res_tmp, j_tmp; // 
	wire beq, bq_tmp, tmp, mx3_sel; // 
	
	xor_ xr(bq_tmp,zero,bneq); 
	and(beq, bq_tmp,branch);
	
	shifter_2_14 shf(address, b_tmp);
	assign j_refined[13:10] = pc_val[13:10];
	assign j_refined[10:0] = b_tmp[10:0];				// Address for jump operations
	
	adder_14 a0(pc_val, 14'b00000000000100,tmp,next_pc);		// PC+4
	
	adder_14 a1(b_tmp,next_pc,tmp,b_refined);			// Address for branch operations
	
	mux_14_2_1 mx1(next_pc, b_refined, beq, res_tmp);	// To handle branch instructions
	mux_14_2_1 mx2(j_refined, rs_cnt, jr, j_tmp);		// To hanlde jump instructions
		
	or(mx3_sel, jmp, jr);
	
	mux_14_2_1 mx3(res_tmp, j_tmp, mx3_sel, res);				// To get address of next instruction
	
endmodule


//# js: 1 bs: 0 | 11110000111100000000000000010000
module alu_controller(ALUop, funct, ALUctr,regwr);

	input[1:0] ALUop;
	input[5:0] funct;
	output[2:0] ALUctr; 
	output regwr;
	
	wire[5:0] func_not;
	wire tmp_2,tmp_1,tmp_0,tmp_0_2,xor_t,tmp_0_3;
	wire wr,wr2;
	wire al_t1, al_t2,lui,lui_not,wrd,wrd_not;
	wire ctr_2,ctr_1;
	
	not(func_not[0],funct[0]);
	not(func_not[1],funct[1]);
	not(func_not[2],funct[2]);
	not(func_not[3],funct[3]);
	not(func_not[4],funct[4]);
	not(func_not[5],funct[5]);
	
	and(lui,ALUop[0],ALUop[1]);
	not(lui_not,lui);
	
	or(wrd,ALUop[0],ALUop[1]);
	not(wrd_not,wrd);
	//b100110
	
	and(tmp_2, ALUop[1],funct[1]);
	or(ctr_2, tmp_2, ALUop[0]);
	and(ALUctr[2],ctr_2,lui_not,wrd);
	
	and(xor_t,funct[1],funct[2]);
	
	not(al_t1,ALUop[1]);
	not(al_t2,funct[2]);
	or(tmp_1,al_t1,al_t2);
	or(ctr_1,tmp_1,xor_t);
	and(ALUctr[1],ctr_1,lui_not);
	
	or(tmp_0_2,funct[3],funct[0]);
	and(tmp_0,tmp_0_2,ALUop[1]);
	
	or(tmp_0_3,tmp_0,xor_t,lui);
	and(ALUctr[0],tmp_0_3,wrd);
	
	and(wr, func_not[0],func_not[1],funct[3],func_not[2],func_not[4],func_not[5]);
	
	not(regwr,wr);
	
endmodule
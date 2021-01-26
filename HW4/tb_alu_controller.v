module tb_alu_controller();
	
	reg[1:0] ALU;
	reg[5:0] func;
	wire[2:0] res;
	wire regWr;
	alu_controller alu(ALU,func,res,regWr);
	
	initial begin
		
		ALU = 2'b10;
		func = 6'b111111;
		#10;
		$monitor("aluop[1]: %1b |funct[2]: %1b\nALUctr: %3b | regWr: %1b",ALU[1],func[2],res,regWr);
		
	
	end

endmodule

// ALU = 2'b10 r_type
//	func = 6'b100110; xor
// ALUctr: 100  not defined

// ALU = 2'b10 r_type
// func = 6'b001000; jr
// ALUctr: 000  and
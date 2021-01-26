module program_counter(clk,next,pc,res);

	input clk;
	input[13:0] next;
	
	output[31:0] res;
	output[13:0] pc;
	
	reg[13:0] nextPc;
	reg[31:0] current;
	reg[31:0] instruction_set[16383:0];

	//reg[13:0] z;
	
	assign res = current;
	assign pc = nextPc;
	
	initial begin
		$readmemb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/instructions.txt",instruction_set);
		//current[31:24] = instruction_set[14'b0];
		//current[23:16] = instruction_set[14'b1];
		//current[15:8] = instruction_set[14'b10];
		//current[7:0] = instruction_set[14'b11];
		//nextPc = 14'b0;
	end
	
	
	always @(negedge clk) begin
		nextPc = next;
		current[31:24] = instruction_set[next];
		current[23:16] = instruction_set[next+1];
		current[15:8] = instruction_set[next+2];
		current[7:0] = instruction_set[next+3];
		
		//$display("in pc: %14b",next);
		//$display("in pc: %32b",current);
	end
endmodule
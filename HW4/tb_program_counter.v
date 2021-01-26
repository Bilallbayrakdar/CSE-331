module tb_program_counter();

reg clk;
reg[13:0] next;

wire[31:0] inst;
wire[13:0] pc;

program_counter pc1(clk,next,pc,inst);

	initial begin
		$readmemb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/instructions.txt", pc1.instruction_set);
		clk = 1'b1;
		next = 14'b00000000001000;
		$monitor("next: %14b | inst: %32b ",next,inst);
	end

	always #10 clk = ~clk;

endmodule
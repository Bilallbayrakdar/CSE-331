module register_file
(read_data_1, read_data_2, write_data_1, write_data_2, read_reg_1, read_reg_2, write_reg_1, write_reg_2, signal_reg_write_1, signal_reg_write_2, clk);

	output [31:0] read_data_1, read_data_2;
	input [31:0] write_data_1, write_data_2;
	input [4:0] read_reg_1, read_reg_2, write_reg_1, write_reg_2;
	input signal_reg_write_1, signal_reg_write_2 ,clk;
	wire [31:0] cache;
	
	reg [31:0] registers [31:0];
	
	assign read_data_1 = registers[read_reg_1];
	assign read_data_2 = registers[read_reg_2];
	
	always @(negedge clk)
	begin
		if (1'b1 == signal_reg_write_1
		 && 1'b0 == signal_reg_write_2
		 && 5'b0 != write_reg_1
		 && 5'b11111 != write_reg_1)
		begin
			registers[write_reg_1] <= write_data_1;
			$writememb("/C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/registers.mem", registers);
		end
		else if (1'b0 == signal_reg_write_1
		 && 1'b1 == signal_reg_write_2
		 && 5'b0 != write_reg_2
		 && 5'b11111 != write_reg_2)
		begin
			registers[write_reg_2] <= write_data_2;
			$writememb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/registers.mem", registers);
		end
		else if (1'b1 == signal_reg_write_1
		 && 1'b1 == signal_reg_write_2
		 && 5'b0 != write_reg_1
		 && 5'b11111 != write_reg_1
		 && 5'b0 != write_reg_2
		 && 5'b11111 != write_reg_2)
		begin
			registers[write_reg_1] <= write_data_1;
			registers[write_reg_2] <= write_data_2;
			$writememb("/home/myndos/Projects/organization/hw3/simulation/modelsim/registers.mem", registers);
		end
	end
	
endmodule
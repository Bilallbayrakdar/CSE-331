module mips32_mem(clk,memWrite, memRead, address, writeData,readData);
	input clk;
	input memWrite, memRead;
	input[17:0] address;
	input[31:0] writeData;
	output[31:0] readData;
	
	reg[31:0] data;
	
	reg[31:0] memory[262144:0];
	
	assign readData = data;
		
	initial begin
		$readmemb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/data.txt", memory);
	end
	
	always @(address) begin
		if(memRead == 1) begin
			data = memory[address];
			//$display("readMem: %32b | address: %18b",data,address);
		end
	end
	always @(writeData) begin
		if(memWrite == 1) begin
			//$display("writeMem: %32b  address: %18b",writeData,address);
			memory[address] =  writeData;
		end
		$writememb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/data.txt", memory);
	end
	
endmodule
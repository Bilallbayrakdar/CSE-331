module mips32_registers(clk,readReg1, readReg2, writeReg1, writeReg2, regWrite1, regWrite2, writeData1, writeData2, readData1, readData2);
	input clk,regWrite1, regWrite2;
	input[4:0] readReg1,readReg2, writeReg1, writeReg2 ;
	input[31:0] writeData1, writeData2;
	output[31:0] readData1, readData2;
	
	reg[31:0] registers[31:0];
	reg[31:0] read1, read2;
		
		assign readData1 = read1;
		assign readData2 = read2;
	
	initial begin
		$readmemb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/registers.txt", registers);
	end
	
	always @(readReg1,readReg2) begin
		read1 = registers[readReg1];
		read2 = registers[readReg2];
		//$display("readReg1: %5b |read1: %32b",readReg1,read1);
		//$display("readReg2: %5b |read2: %32b",readReg2,read2);
	end
	
	always @(writeData1) begin
		
		//$display("address:%5b | content:%32b",readReg2,registers[readReg2]);
		if(regWrite1 == 1) begin
			//$display("writeReg1: %5b |write1: %32b",writeReg1,writeData1);
			registers[writeReg1] = writeData1;
			$writememb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/registers.txt", registers);
		end
	end
	always @(writeData2) begin
		if(regWrite2 == 1) begin
			//$display("writeReg2: %5b |write2: %32b",writeReg2,writeData2);
			registers[writeReg2] = writeData2;
			$writememb("C:/Users/int.bilal.bayrakdar/Desktop/assignment4/simulation/modelsim/memory/registers.txt", registers);
		end
	end

endmodule
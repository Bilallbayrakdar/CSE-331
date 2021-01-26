module adder_18_tb;
 // Inputs
 reg [17:0] input1;
 reg [17:0] input2;
 // Outputs
 wire [17:0] answer;

 // Instantiate the Unit Under Test (UUT)
 adder_18 uut (
  .input1(input1), 
  .input2(input2), 
  .answer(answer)
 );

 initial begin
  // Initialize Inputs
  input1 = 1209;
  input2 = 4565;
  #100;
  // Add stimulus here
 end
      
endmodule
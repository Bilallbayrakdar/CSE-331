module adder_18(input1,input2,answer);

input [17:0] input1,input2;
output [17:0] answer;
   
wire  carry_out;
wire [17:0] carry;

wire c_in[16:0];

half_adder h_0  (input1[0],input2[0],answer[0],c_in[0]);
full_adder f_1  (input1[1],input2[1],c_in[0],answer[1],c_in[1]);
full_adder f_2  (input1[2],input2[2],c_in[1],answer[2],c_in[2]);
full_adder f_3  (input1[3],input2[3],c_in[2],answer[3],c_in[3]);
full_adder f_4  (input1[4],input2[4],c_in[3],answer[4],c_in[4]);
full_adder f_5  (input1[5],input2[5],c_in[4],answer[5],c_in[5]);
full_adder f_6  (input1[6],input2[6],c_in[5],answer[6],c_in[6]);
full_adder f_7  (input1[7],input2[7],c_in[6],answer[7],c_in[7]);
full_adder f_8  (input1[8],input2[8],c_in[7],answer[8],c_in[8]);
full_adder f_9  (input1[9],input2[9],c_in[8],answer[9],c_in[9]);
full_adder f_10 (input1[10],input2[10], c_in[9] ,answer[10],c_in[10]);
full_adder f_11 (input1[11],input2[11], c_in[10],answer[11],c_in[11]);
full_adder f_12 (input1[12],input2[12], c_in[11],answer[12],c_in[12]);
full_adder f_13 (input1[13],input2[13], c_in[12],answer[13],c_in[13]);
full_adder f_14 (input1[14],input2[14], c_in[13],answer[14],c_in[14]);
full_adder f_15 (input1[15],input2[15], c_in[14],answer[15],c_in[15]);
full_adder f_16 (input1[16],input2[16], c_in[15],answer[16],c_in[16]);
full_adder f_17 (input1[17],input2[17], c_in[16],answer[17],carry_out);

endmodule
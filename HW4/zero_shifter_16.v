module zero_shifter_16(res,a);

	input[15:0] a;
	output[31:0] res;

	not(res[0],1'b1);
   not(res[1],1'b1);
   not(res[2],1'b1);
   not(res[3],1'b1);
   not(res[4],1'b1);
   not(res[5],1'b1);
   not(res[6],1'b1);
   not(res[7],1'b1);
   not(res[8],1'b1);
   not(res[9],1'b1);
   not(res[10],1'b1);
   not(res[11],1'b1);
   not(res[12],1'b1);
   not(res[13],1'b1);
   not(res[14],1'b1);
   not(res[15],1'b1);
   and(res[16],a[0] ,1'b1); 
   and(res[17],a[1] ,1'b1); 
   and(res[18],a[2] ,1'b1); 
   and(res[19],a[3] ,1'b1); 
   and(res[20],a[4] ,1'b1); 
   and(res[21],a[5] ,1'b1); 
   and(res[22],a[6] ,1'b1); 
   and(res[23],a[7] ,1'b1); 
   and(res[24],a[8] ,1'b1); 
   and(res[25],a[9] ,1'b1); 
   and(res[26],a[10],1'b1); 
   and(res[27],a[11],1'b1); 
   and(res[28],a[12],1'b1); 
   and(res[29],a[13],1'b1); 
   and(res[30],a[14],1'b1); 
   and(res[31],a[15],1'b1);	

endmodule
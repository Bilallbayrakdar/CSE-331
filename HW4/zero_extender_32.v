module zero_extender_32(res,a);

	input[15:0] a;
	output[31:0] res;
	
	and(res[0] ,a[0] ,1'b1);
	and(res[1] ,a[1] ,1'b1);
	and(res[2] ,a[2] ,1'b1);
	and(res[3] ,a[3] ,1'b1);
	and(res[4] ,a[4] ,1'b1);
	and(res[5] ,a[5] ,1'b1);
	and(res[6] ,a[6] ,1'b1);
	and(res[7] ,a[7] ,1'b1);
	and(res[8] ,a[8] ,1'b1);
	and(res[9] ,a[9] ,1'b1);
	and(res[10],a[10],1'b1);
	and(res[11],a[11],1'b1);
	and(res[12],a[12],1'b1);
	and(res[13],a[13],1'b1);
	and(res[14],a[14],1'b1);
	and(res[15],a[15],1'b1);
	not(res[16],1'b1); 	
	not(res[17],1'b1); 
	not(res[18],1'b1); 
	not(res[19],1'b1); 
	not(res[20],1'b1); 
	not(res[21],1'b1); 
	not(res[22],1'b1); 
	not(res[23],1'b1); 
	not(res[24],1'b1); 
	not(res[25],1'b1); 
	not(res[26],1'b1); 
	not(res[27],1'b1); 
	not(res[28],1'b1); 
	not(res[29],1'b1); 
	not(res[30],1'b1); 
	not(res[31],1'b1);	

endmodule
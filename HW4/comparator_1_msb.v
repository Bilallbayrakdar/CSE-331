module comparator_1_msb(a,b,big,eq,sm);

input a,b;
output big,eq,sm;

wire a_not,b_not,eq_tmp ;

not(a_not,a);
not(b_not,b);
and(big,a,b_not);
and(sm,b,a_not);

or(eq_tmp,big,sm);

not(eq,eq_tmp);



endmodule


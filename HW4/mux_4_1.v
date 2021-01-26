module mux_4_1(res, a, b, c, d, sl);
input a, b, c, d;
input [1:0] sl;
output res;
wire [1:0] n_sl;
wire [3:0] temp;

	not (n_sl[1], sl[1]);
	not (n_sl[0], sl[0]);
	
	and (temp[0], a, n_sl[1], n_sl[0]);
	and (temp[1], b, n_sl[1], sl[0]);
	and (temp[2], c, sl[1], n_sl[0]);
	and (temp[3], d, sl[1], sl[0]);
	
	or (res, temp[3], temp[2], temp[1], temp[0]);

endmodule
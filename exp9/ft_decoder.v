module ft_decoder(a,b,c,d,e,f);
input a,b,c,d;
output e,f;

assign e = (a|b);
assign f = (c|d);

endmodule
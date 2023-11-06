module tf_decoder(a,b,c,d,e,f);
input a,b;
output c,d,e,f;

assign c = (~a)&(~b);
assign d = (~a)&(b);
assign e = (a)&(~b);
assign f = (a)&(b);

endmodule

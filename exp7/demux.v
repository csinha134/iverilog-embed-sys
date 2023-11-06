module demux(s1,s2,i,a,b,c,d);
input s1,s2,i;
output a,b,c,d;

assign a=(~s1)&(~s2)&i;
assign b=(~s1)&(s2)&i;
assign c=(s1)&(~s2)&i;
assign d=(s1)&(s2)&i;

endmodule
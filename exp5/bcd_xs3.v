module bcd_xs3(w,x,y,z,a,b,c,d);
input a,b,c,d;
output w,x,y,z;

assign w = a | ( b & c) | ( b & d);
assign x = (~b & c) | ( ~b & d) | (b & ~c & ~d);
assign y = (c & d) | ( ~c & ~d);
assign z = (~d);

endmodule
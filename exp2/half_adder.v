module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
xor my_xor(sum,a,b);
and my_and(carry,a,b);
endmodule

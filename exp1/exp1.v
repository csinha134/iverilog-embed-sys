module gates;
reg a,b;
wire and_g,or_g,not_g,nor_g,nand_g,xor_g,xnor_g;
and my_and(and_g,a,b);
or my_or(or_g,a,b);
not(not_g,a);
nand(nand_g,a,b);
nor(nor_g,a,b);
xor(xor_g,a,b);
xnor(xnor_g,a,b);
always@(a or b)begin
    $display("A: %d B: %d AND: %d OR: %d NOT: %d NAND: %d NOR: %b XOR: %b XNOR: %b",a,b,and_g,or_g,not_g,nand_g,nor_g,xor_g,xnor_g);
end


initial begin
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    $finish;
end
endmodule

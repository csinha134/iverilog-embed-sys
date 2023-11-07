module jk_ff(clk,j,k,q);

input clk,j,k;
output q;
reg q_copy;

always@(posedge clk)begin
    if(!j & !k)
    q_copy<=q;
    else if(!j&k)
    q_copy<=0;
    else if(j&!k)
    q_copy<=1;
    else
    q_copy<=(~q);
end
assign q=q_copy;
endmodule
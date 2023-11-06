module dff(clk,d,q,rst);
input d,rst,clk;
output q;
reg q_copy;
always@(posedge clk or negedge rst)begin
    if(!rst)
    q_copy<=0;
    else 
    q_copy<=d;
end
assign q=q_copy;
endmodule
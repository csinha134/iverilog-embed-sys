module counter(clk,rst,count);
input clk,rst;
output[3:0] count;
reg[3:0] count_up;
always@(posedge clk or posedge rst)begin
    if(rst)
    count_up<=4'd0;
    else
    count_up<=count_up+4'd1;
end
assign count=count_up;
endmodule

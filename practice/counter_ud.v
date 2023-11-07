module counter_ud(clk,rst,var,count);
input clk,rst,var;
output [3:0] count;
reg[3:0] count_ud;

always@(posedge clk or posedge rst)begin
    if(rst)
    count_ud<=4'h0;
    else if (~var)
    count_ud<=count_ud+4'h1;
    else 
    count_ud<=count_ud-4'h1;
end
assign count = count_ud;
endmodule
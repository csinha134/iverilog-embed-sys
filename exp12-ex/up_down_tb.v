module up_down_tb;
reg clk,rst,var;
wire [3:0] count;

up_down mycounter(clk,rst,var,count);
integer i;
initial begin
    clk=0;
    for(i=0;i<10;i++)
    #10 clk=~clk;
end

initial begin
    $display("clk\trst\tcount");
    $monitor("%d\t%d\t%d",clk,rst,count);
    rst=1;
    var=0;
    #20;
    rst=0;
    #20;var=1;
end
endmodule
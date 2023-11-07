module counter_tb;
integer a;
reg clk,rst;
wire[3:0]count;
counter mycount(clk,rst,count);

initial begin
    clk=0;
    for(a=0;a<10;a++)
        #10 clk=~clk;
end

initial begin
    $display("clk\treset\tcounter");
    $monitor("%d\t%d\t%d",clk,rst,count); 
    rst=1;
    #20
    rst=0;
end
endmodule

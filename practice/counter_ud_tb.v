module counter_ud_tb;
reg clk,rst,var;
wire[3:0] count;

counter_ud mycounter(clk,rst,var,count);

integer a;

initial begin 
    clk=0;
    for(a=0;a<10;a++)
    #10 clk=~clk;
end

initial begin
    $display("CLK\tRST\tCOUNT");
    $monitor("%d\t%d\t%d",clk,rst,count);
    rst=1;
    var=0;
    #20;
    rst=0;
    #20;var=1;
end
endmodule
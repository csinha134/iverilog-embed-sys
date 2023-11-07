module dff_tb;
reg rst,clk,d;
wire q;

dff myflipflop(clk,d,q,rst);

always #10 clk=~clk;

initial begin
$display("reset\tclk\tD\tq");
$monitor("%d\t%d\t%d\t%d",rst,clk,d,q);


integer i;

clk=0;d=0;rst=0;
#5 rst=1;
repeat(6) begin
    d=$urandom_range(0,1);
    #5;
end
rst=0;
repeat(6) begin
    d=$urandom_range(0,1);
    #5;
end
$finish;
end
endmodule

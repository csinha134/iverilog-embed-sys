module jk_ff_tb;
reg clk,j,k;
wire q;

jk_ff myflipflop(clk,j,k,q);

integer a;
initial begin
    clk=0;
    for(a=0;a<10;a++)
    #5 clk=~clk;
end

initial begin

    $display("CLK\tJ\tK\tQ");
    $monitor("%d\t%d\t%d\t%d",clk,j,k,q);

    j=0;k=0;
    #10
    j=0;k=1;
    #10
    j=1;k=0;
    #10
    j=1;k=1;
    #10
    $finish;
end

endmodule
module jk_tb;
reg j,k,clk;
wire q;

jk myflipflop(j,k,clk,q);


    integer a;
initial begin
    
    for(a=0;a<10;a++)
    #10 clk=~clk;
end

initial begin
    $display("J\tK\tCLK\tQ");
    $monitor("%d\t%d\t%d\t%d",j,k,clk,q);
    clk=1;
    j=0;k=0;
    #10;
    j=1;k=1;
    #10;
    j=1;k=0;
    #10;
    j=0;k=1;
end
endmodule


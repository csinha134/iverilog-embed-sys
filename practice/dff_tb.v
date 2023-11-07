module dff_tb;
reg clk,rst,d;
wire q;

dff myflipflop(clk,rst,d,q);

always #10 clk=~clk;

initial begin 
    $display("CLK\tRST\tD\tq");
    $monitor("%d\t%d\t%d\t%d",clk,rst,d,q);

    clk=0;rst=0;d=0;
    #5;
    rst=1;
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
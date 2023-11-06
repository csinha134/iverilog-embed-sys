module demux_tb;
reg s1,s2,i;
wire a,b,c,d;

demux dm(s1,s2,i,a,b,c,d);

always@(s1 or s2 or i)begin
    $display("s1 = %d s2 = %d i = %d a=%d b = %d c=%d d=%d",s1,s2,i,a,b,c,d);
end

initial begin
    i=1;
    s1=0;s2=0;
    #10
    s1=0;s2=1;
    #10
    s1=1;s2=0;
    #10
    s1=1;s2=1;
    $finish;
end

endmodule
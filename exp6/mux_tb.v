module mux_tb;
reg s1,s2,a,b,c,d;
wire y;

mux mymux(s1,s2,a,b,c,d,y);

always@(s1 or s2 or a or b or c or d)begin 
    $display("S1 = %d S2 = %d A = %d B = %d C = %d D = %d y=%d",s1,s2,a,b,c,d,y);
end

initial begin
    a=1;b=1;c=1;d=1;
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
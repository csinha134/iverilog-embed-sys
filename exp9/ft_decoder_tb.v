module ft_decoder_tb;
reg a,b,c,d;
wire e,f;

ft_decoder mydecoder(a,b,c,d,e,f);

always@(a or b or c or d)begin
    $display("A: %b B: %b C: %b D: %b O1: %b O2: %b",a,b,c,d,e,f);
end

initial begin 
    a=0;b=0;c=0;d=0;
    #10
    d=1;
    #10
    a=0;b=0;c=1;d=0;
    #10
    d=1;
    #10
    a=0;b=1;c=1;d=0;
    #10
    d=1;
    $finish;
end

endmodule
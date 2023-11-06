module tf_decoder_tb;
reg a ,b ;
wire c,d,e,f;

tf_decoder mydecoder(a,b,c,d,e,f);

always@(a or b)begin
    $monitor("A=%d B=%d O1=%d O2=%d O3=%d O4=%d",a,b,c,d,e,f);
end

initial begin

    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    $finish;

end
endmodule
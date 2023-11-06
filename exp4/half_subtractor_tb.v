module half_subtractor_tb;
reg a,b;
wire diff,borrow;

half_subtractor mysubtractor(a,b,diff,borrow);

always@(a or b)begin
    $display("A = %d B=%d Diff= %d Borrow = %d",a,b,diff,borrow);
end

initial begin
    a=0;
    b=0;
    #10
    a=0;
    b=1;
    #10
    a=1;
    b=0;
    #10
    a=1;
    b=1;
    $finish;
end


endmodule
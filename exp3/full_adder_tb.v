module full_adder_tb;

reg a,b,c;
wire sum,carry;

full_adder myfulladder(a,b,c,sum,carry);

always@(a or b or c)begin
    $display("A = %d B = %d C = %d Sum=%d Carry=%d",a,b,c,sum,carry);
end

initial begin
    a=0;
    b=0;
    c=0;
    #10
    a=0;
    b=0;
    c=1;
    #10
    a=0;
    b=1;
    c=0;
    #10
    a=0;
    b=1;
    c=1;
    #10;
    a=1;
    b=0;
    c=0;
    #10
    a=1;
    b=0;
    c=1;
    #10
    a=1;
    b=1;
    c=0;
    #10
    a=1;
    b=1;
    c=1;
    $finish;
end
endmodule
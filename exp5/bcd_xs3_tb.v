module bcd_xs3_tb;
reg a,b,c,d;
wire w,x,y,z;
bcd_xs3 myconverter(w,x,y,z,a,b,c,d);

always@(a or b or c or d)begin
    $display("A = %d B = %d C= %d D = %d W= %d X= %d Y=%d Z=%d",a,b,c,d,w,x,y,z);
end

initial begin
    a=0;b=0;c=0;d=0;
    #10
    a=0;b=0;c=0;d=1;
    #10
    a=0;b=0;c=1;d=0;
    #10
    a=0;b=0;c=1;d=1;
    #10
    a=0;b=1;c=0;d=0;
    #10
    a=0;b=1;c=0;d=1;
    #10
    a=1;b=0;c=0;d=0;
    #10
    a=1;b=0;c=0;d=1;
    $finish;

end
endmodule
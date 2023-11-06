module half_adder_tb;
  reg a, b;
  wire sum, carry;
  
  // Instantiate the half_adder module
  half_adder myhalfadder(a, b, sum, carry);
  
  always @(a or b) begin
    $display("Sum=%d Carry=%d", sum, carry);
  end

  initial begin
    a = 0;
    b = 0;
    #10
    a = 0;
    b = 1;
    #10
    a = 1;
    b = 0;
    #10
    a = 1;
    b = 1;
    $finish;
  end
endmodule

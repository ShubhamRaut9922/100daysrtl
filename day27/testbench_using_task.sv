module tb;
  bit [3:0] a;
  bit [3:0] b;
  bit [3:0] y;
  task add();
    y= a+b;
    $display ("addition : %0d", y);
  endtask
  initial begin
    a=3;
    b=2;
    add();
    $display ("addition : %0d", y);
  end
endmodule

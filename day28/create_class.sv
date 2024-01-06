class shubham;
  int unsigned data1;
  int unsigned data2;
endclass
module tb;
  shubham R;
  initial begin
    R = new();
    R.data1= 45;
    R.data2= 78;
    #1;
    $display("data1:%0d,data2:%0d",R.data1,R.data2);
  end
endmodule

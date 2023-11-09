module mux_tb ();
  reg [0:7] I0;
  reg [0:7] I1;
  reg S;
  wire [0:7]out;
  mux_2x1 M1(.*);
    initial begin
      for (int i=0; i<10; i++) begin
      I0 = $urandom_range(0,8'hff);
      I1 = $urandom_range(0,8'hff);
      S = $random%2;
      #20;
    end
    end
    initial begin
      $dumpfile("mux_tb.vcd");
      $dumpvars(0,mux_tb);
    end
  initial begin 
    $monitor("time=%0d,I0=%b,I1=%b,S=%b,out=%b",$time,I0,I1,S,out);
  end
  endmodule

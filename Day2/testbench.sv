module day2_tb();
reg clk;
reg reset;
reg din;
wire q1;
wire q_syncrst;
wire q_asyncrst;
day2 d2 (clk,reset,din,q1,q_syncrst,q_asyncrst);
always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end
  initial begin
    reset = 1'b1;
    din = 1'b0;
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    din = 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    reset = 1'b1;
    @(posedge clk);
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    @(posedge clk);
    $finish();
  end
  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
  

endmodule

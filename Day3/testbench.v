module tb();
reg sig;
reg clk;
wire out;
wire sig_delay;
Day3 d3(.sig(sig),.clk(clk),.out(out),.sig_delay(sig_delay));
always #5 clk = ~clk;
initial
begin
clk <= 0;
sig <= 0;
#15 sig <= 1;
#20 sig <= 0;
#15 sig <= 1;
#10 sig <= 0;
#20 $finish;
end
endmodule

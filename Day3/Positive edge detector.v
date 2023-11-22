module Day3(sig,clk,out,sig_delay);
input sig;
input clk;
output out;
 output reg sig_delay;
always @(posedge clk)
begin
sig_delay <= sig;
end
assign out = sig & ~sig_delay;
endmodule

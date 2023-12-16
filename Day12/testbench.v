module testbench();
reg clk,init;
wire[7:0] count;
ring_counter c1(clk,init,count);
initial clk=0;
always #10 clk=~clk;
initial
begin
init=1;
#50 init=0;
end
endmodule

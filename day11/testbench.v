module testbench();
reg clock;
wire [0:2] light;
cyclic_lamp LAMP(clock,light);
always #5 clock=~clock;
initial
begin
clock=1'b0;
#100 $finish;
end
initial
begin
$dumpfile("cyclic.vcd");
$dumpvars(0,testbench);
end
endmodule

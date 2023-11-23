module test_counter();
reg mode;
reg clr;
reg ld;
reg clk;
reg [0:7] d_in;
wire [0:7] count;
up_down_counter d1(mode,clr,ld,d_in,clk,count);
initial begin
clk=1'b0; repeat(30) #3 clk=~clk;
end
initial begin clr=1'b1; #7 clr=1'b0; #35 clr=1'b1;
end
initial begin 
#12 ld=1'b1; #5 ld=1'b0;
end
initial begin
#5 mode=1'b1; #24 mode=1'b0;
end
initial begin 
d_in=8'b10101010; #14 d_in=8'b00001000; #2 d_in=8'b10001111;
end

initial begin
$dumpfile("up_down_counter.vcd");
$dumpvars (0,test_counter);
$monitor ("$time,count = %d,clr =%b,mode =%b,d_in = %d",mode,clr,ld,d_in,clk,count);
#200 $finish;
end

endmodule

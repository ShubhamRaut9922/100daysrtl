module test();
reg a,b,c;
wire sum,cout;
full_adder FA(sum,cout,a,b,c);
initial
begin
$monitor ($time,"a=%b,b=%b,c=%b,sum=%b,cout=%b",a,b,c,sum,cout);
#10 a=0; b=0; c=1;
#10 b=1;
#10 a=1;
#10 a=0; b=0; c=0;
#15 $finish;
end
endmodule

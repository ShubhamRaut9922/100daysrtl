module test();
reg [2:0] in;
wire [2:0]out;
binary_gray_converter b1(in,out);
initial
in=3'b000;
initial
begin
#5 in=3'b010;
#5 in=3'b101;
#10 $finish;
end
endmodule

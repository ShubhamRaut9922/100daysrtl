module binary_gray_converter(in,out);
input [2:0] in;
output [2:0] out;
assign out=(in^(in>>1));
endmodule

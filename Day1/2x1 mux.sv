module mux_2x1 (I0,I1,S,out);
  input[0:7] I0;
  input[0:7] I1;
  input S;
  output [0:7]out;
  assign out=S?I1:I0;
  endmodule

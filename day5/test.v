module test();
reg [2:0] opcode;
reg [7:0] operand1;
reg [7:0] operand2;
wire [15:0] result;
wire flagC;
wire flagZ;
reg [2:0]count= 3'd0;
alu uuu(
opcode,
operand1,
operand2,
result,
flagC,
flagZ
 );
 initial begin
 opcode = 3'b0;
 operand1 = 8'b0;
 operand2 = 8'b0;
 #100;
 
 operand1=8'hAA;
 operand2=8'h55;
 for (count=0; count<8; count=count+1)
 opcode = count;
 #20;
 end

 


endmodule

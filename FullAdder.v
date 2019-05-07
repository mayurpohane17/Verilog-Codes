Verilog Code:
module FullAdder(A,B,C,S,Carry);
input A,B,C;
output S,Carry;

assign S=A^B^C;

assign Carry=(A&B)|(A&C)|(B&C);

endmodule

Test bench:
module Main_tb;
reg A;
reg B;
reg C;
wire S;
wire Carry;

FullAdder uut (.A(A),.B(B),.C(C),.S(S),.Carry(Carry));

initial begin
$dumpfile("test.vcd");
    $dumpvars(0,Main_tb);
$monitor(A,B,C,S,Carry);
    A=1'b0;B=1'b0;C=1'b0;
    #5
    A=1'b0;B=1'b1;C=1'b1;
    #5
    A=1'b1;B=1'b0;C=1'b1;
    #5
    A=1'b1;B=1'b1;C=1'b0;


$finish;

end

endmodule

Verilog:
module FullSubtractor(A,B,C,Borrow,Diff);
input A,B,C;
output Borrow,Diff;
assign Diff= A ^ B ^ C;
assign Borrow=(( ~A)& (B ^ C)) | (B & C);

endmodule

Testbench:
module Main_tb;
reg A;
reg B;
reg C;
wire Borrow;
wire Diff;

FullSubtractor uut (.A(A),.B(B),.C(C),.Borrow(Borrow),.Diff(Diff));

initial begin
$dumpfile("test.vcd");
    $dumpvars(0,Main_tb);
$monitor(A,B,C,Borrow,Diff);
    A=1'b0;B=1'b0;C=1'b0;
    #5
    A=1'b0;B=1'b1;C=1'b0;
    #5
    A=1'b1;B=1'b0;C=1'b0;
    #5
    A=1'b1;B=1'b1;C=1'b0;


$finish;

end

endmodule

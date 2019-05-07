Verilog
module HalfSubtractor(A,B,Borrow,Diff);

input A,B;
output Borrow,Diff;

assign Diff=A^B;
assign Borrow=~A&B;

endmodule

Testbench:
module Main_tb;
reg A;
reg B;
wire Borrow;
wire Diff;

HalfSubtractor uut (.A(A),.B(B),.Borrow(Borrow),.Diff(Diff));

initial begin
$dumpfile("test.vcd");
    $dumpvars(0,Main_tb);

 $monitor(A,B,Borrow,Diff);
    A=1'b0;B=1'b0;
    #5
    A=1'b0;B=1'b1;
    #5
    A=1'b1;B=1'b1;

$finish;

end

endmodule

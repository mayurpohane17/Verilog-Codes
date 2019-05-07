Verilog Code:
module HalfAdder(A,B,S,C);

input A,B;
output S,C;

assign S=A^B;
assign C=A&B;

endmodule

Testbench:-
module Main_tb;
reg A;
reg B;
wire S;
wire C;

HalfAdder uut (.A(A),.B(B),.S(S),.C(C));

initial begin
$dumpfile("test.vcd");
    $dumpvars(0,Main_tb);
 $monitor(A,B,S,C);
    A=1'b0;B=1'b0;
    #5
    A=1'b0;B=1'b1;
    #5
    A=1'b1;B=1'b0;
    #5
    A=1'b1;B=1'b1;

$finish;

end

endmodule

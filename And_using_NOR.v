Verilog Code:-
module NOR2gate(A,B,Z);

input A,B;
output Z;

assign Z=~(A|B);

endmodule

module AND2gate(A,B,Z);

input A,B;
output Z;
wire t1,t2;

NOR2gate N1 (.A(A),.B(A),.Z(t1));
NOR2gate N2 (.A(B),.B(B),.Z(t2));
NOR2gate N3 (.A(t1),.B(t2),.Z(Z));

endmodule

Testbench:-

module Main_tb;
reg A;
reg B;
wire Z;

AND2gate uut (.A(A),.B(B),.Z(Z));

initial begin
$dumpfile("test.vcd");
    $dumpvars(0,Main_tb);

$monitor(A,B,Z);

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

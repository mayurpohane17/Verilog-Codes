Verilog Code:-
module NAND2gate(A,B,Z);
input A,B;
output Z;
assign Z=~(A&B);
endmodule

module AND2gate(A,B,Z);

input A,B;
output Z;
wire t1;
NAND2gate N1 (.A(A),.B(B),.Z(t1));
NAND2gate N2 (.A(t1),.B(t1),.Z(Z));

endmodule

Testbench Code:-
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



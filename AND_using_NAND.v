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

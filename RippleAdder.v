Verilog:-
module FullAdder(A,B,C,S,Carry);
input A,B,C;
output S,Carry;

assign S=A^B^C;
assign Carry=(A&B)|(A&C)|(B&C);

endmodule

module Main(A,B,Cin,Sum,Cout);
input[3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire c1,c2,c3;

FullAdder FA1 (A[0],B[0],Cin,Sum[0],c1);
FullAdder FA2 (A[1],B[1],c1,Sum[1],c2);
FullAdder FA3 (A[2],B[2],c2,Sum[2],c3);
FullAdder FA4 (A[3],B[3],c3,Sum[3],Cout);

endmodule

Testbench:-

module Main_tb; 
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
Main uut (.Sum(Sum),.Cout(Cout),.A(A),.B(B),.Cin(Cin));
initial begin
$dumpfile("test.vcd");
$dumpvars(0,Main_tb);

$monitor(Sum,Cout,A,B,Cin);
    A=4'b0000;B=4'b0000;Cin=1'b0;
    #5
A=4'b0100;B=4'b0010;Cin=1'b1;
    
end    
endmodule


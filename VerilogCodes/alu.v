module alu(a,b,func,out);
parameter n=1;
input [n:0]a;
input [n:0]b;
input [3:0]func;
output reg [n:0]out;
always@(func,a,b)
//begin
case (func)
	0: out=a+b;
	1: out=a-b;
	2: out=a&b;
	3: out=a*b;
	4: out=a/b;
	5: out=a%b;
	6: out=a*b;
	7: out= a<<1;  //shift left
	8: out=a>>1; //shift right
	9: out=out+1;//increment
	10:out=out-1//decrement
	default: $display("INVALID INPUT");

endcase
endmodule

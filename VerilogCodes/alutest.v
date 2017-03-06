module alutest;
parameter n=1;
reg [n:0]a;
reg [n:0]b;
reg[3:0]func;
wire [n:0]out;
parameter simtime=1000;
alu aa(a,b,func,out);
always@(a or b or func)
begin 
	$display("function=%d,input is (%b,%b) output is %b",func,a,b,out);
end
initial #simtime $finish;
initial
begin
	a=2'b11;b=2'b00;func=1;
	#23;
	a=2'b10;b=2'b11;func=0;
	#43
	a=1010;b=1010;func=7;
	#46
	a=1010,b=1010,func=8;
end
endmodule

module half;
reg a,b;
wire sum,carry;
halfadder add(a,b,sum,carry);
always@(sum or carry)
begin 
	$display("time=%d:%b+%b=%b,carry=%b\n",$time,a,b,sum,carry);
end
initial
begin
	a=0;b=1;
	#4
	a=0;b=0;
	#4
	a=1;b=1;
	#4
	a=1;b=0;
end
endmodule

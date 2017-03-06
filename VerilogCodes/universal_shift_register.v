module universal(input ls,clk,rs,input mode[1:0],input [n:0]inp,output reg [n:0]out);

always@(posedge clk) begin
	case(mode)
		0:out<=out;
		1:out<={rs,out[n:1]}//shift right
		2:out<={out[n-1:0],rs}//shift right
		3:out<=inp//load the input
	endcase
end
endmodule

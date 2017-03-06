module fulladder(input a,input b,input c1,output s,output c2);

xor(w,a,b);
and(x,a,b);

xor(s,w,c1);
and(z,w,c1);
or(c2,z,x);
endmodule

module carrylook(input [3:0] a,b, input cin, output [3:0] s,output cout,groupprop,groupgen);
wire [3:0]carry, p, g;
p=a^b;
g=a&b;
c[0]=g[0]|(p[0]&c[in]);
c[1]=g[1]|(p[1]&g[0])|(p[1] &p[0]&cin);
c[2]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&cin);
c[3]=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&g[0]);
cout=c3;
s=p^c;
groupprop=p[3] & p[2] & p[1] & p[0];
groupgen=p[3] | (p[3] & p[2]) | (p[3] & p[2] & p[1]) | (p[3] & p[2] & p[1] & p[0]);
endmodule


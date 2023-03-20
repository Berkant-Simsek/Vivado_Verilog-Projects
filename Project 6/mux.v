module mux (i1,i2,x,out1);
input x;
input [7:0]i1,i2;
output [7:0]out1;

assign out1=(x) ? i1:i2 ;
endmodule

module mux2 (in1,in2,in3,in4,x,y,out2);
input [7:0]in1;
input [7:0]in2;
input [7:0]in3;
input [7:0]in4;
input x,y;
output [7:0]out2;
wire [7:0]w1,w2;

mux u1(in1,in2,y,w2);
mux u2(in3,in4,y,w1);
mux u3(w1,w2,x,out2);
endmodule

module mux3 (f1,f2,f3,f4,f5,f6,f7,f8,x,y,z,t,out3);
input [7:0]f1,f2,f3,f4,f5,f6,f7,f8;
input x,y,z,t;
output [15:0]out3;
wire [7:0]w1,w2;

mux2 u4(f1,f2,f3,f4,x,y,w1);
mux2 u5(f5,f6,f7,f8,z,t,w2);
assign out3=w1*w2;
endmodule

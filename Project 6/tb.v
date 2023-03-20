module tb;
reg [7:0] a1,a2,a3,a4,a5,a6,a7,a8;
reg x,y,z,t;
wire [15:0]final;
wire [7:0]final1;
wire [7:0]final2;

mux3 u9(.f1(a1),.f2(a2),.f3(a3),.f4(a4),.f5(a5),.f6(a6),.f7(a7),.f8(a8),.x(x),.y(y),.z(z),.t(t),.out3(final));
mux2 u10(.in1(a1),.in2(a2),.in3(a3),.in4(a4),.x(x),.y(y),.out2(final1));
mux2 u11(.in1(a5),.in2(a6),.in3(a7),.in4(a8),.x(z),.y(t),.out2(final2));
initial begin
a1=8'ha5;
a2=8'hb8;
a3=8'hc7;
a4=8'hd2;
a5=8'ha5;
a6=8'hb8;
a7=8'hc7;
a8=8'hd2;

x=1'b0;
y=1'b0;
z=1'b1;
t=1'b0;
end
endmodule

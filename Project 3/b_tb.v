
module b_tb;

reg x0,y0,x1,y1,x2,y2,c0;
wire z0,z1,z2,c3;
wire [3:0]sum;

b UUT(.x0(x0),.y0(y0),.x1(x1),.y1(y1),.x2(x2),.y2(y2),.c0(c0),.z0(z0),.z1(z1),.z2(z2),.c3(c3),.sum(sum));

initial begin
c0=1'b0;
x0=1'b1;
x1=1'b0;
x2=1'b1;
y0=1'b1;
y1=1'b1;
y2=1'b0;
#100; 
end 

endmodule

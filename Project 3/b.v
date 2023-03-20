
module b(x0,y0,x1,y1,x2,y2,c0,c3,z0,z1,z2,sum);

input x0,y0,x1,y1,x2,y2,c0;
output z0,z1,z2,c3;
wire c1,c2;
output [3:0] sum;

a bir(x0,y0,c0,c1,z0);
a iki(x1,y1,c1,c2,z1);
a uc(x2,y2,c2,c3,z2);

assign sum = {c3,z2,z1,z0};

endmodule

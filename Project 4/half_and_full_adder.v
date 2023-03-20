module ans(num1,num2,sum);

input[3:0] num1,num2;
output[4:0] sum;

wire[4:0] car,out;

half_adder h1(num1[0],num2[0],out[0],car[0]);
full_adder f1(num1[1],num2[1],car[0],out[1],car[1]);
full_adder f2(num1[2],num2[2],car[1],out[2],car[2]);
full_adder f3(num1[3],num2[3],car[2],out[3],car[3]);

assign sum[4]=car[3];
assign sum=out;

endmodule

module full_adder(a,b,cin,sum, cout);

input a,b,cin;
output sum, cout;
wire x,y,z;

half_adder  h1(a,b,x,y);
half_adder  h2(x,cin,sum,z);
assign cout= y|z;

endmodule


module half_adder( a,b, sum, cout );

input a,b;
output sum,  cout;

assign sum= a^b;
assign cout= a & b;

endmodule

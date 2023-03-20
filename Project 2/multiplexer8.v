`timescale 1ns / 1ps

module multiplexer8(in1, in2, in3, in4, in5, in6, in7, in8, x, y, z, o);

input [7:0] in1, in2, in3, in4, in5, in6, in7, in8;
input x, y, z;
output[7:0] o;
wire [7:0] w1,w2;

multiplexer4 mux1(in1,in2,in3,in4,y,z,w1);
multiplexer4 mux2(in5,in6,in7,in8,y,z,w2);

multiplexer2 mux3(w1,w2,x,o);

endmodule

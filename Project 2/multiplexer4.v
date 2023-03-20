`timescale 1ns / 1ps
module multiplexer4(f1,f2,f3,f4,s1,s2,xout);

input[7:0] f1,f2,f3,f4;
input s1,s2;
output[7:0] xout;

wire [7:0] w1,w2;

multiplexer2 mux1(f1,f22,s1,w1);
multiplexer2 mux2(f3,f4,s1,w2);
multiplexer2 mux3(w1,w2,s1,xout);


endmodule

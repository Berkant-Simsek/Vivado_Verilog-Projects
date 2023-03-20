`timescale 1ns / 1ps

module d_latch(d,c,q,qn);

input[3:0] d;
input c;
output reg[3:0] q;
output reg[3:0] qn;

always @ (d or c)
if(c) {q,qn} <= {d,~d};

endmodule

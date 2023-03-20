`timescale 1ns / 1ps
module multiplexer2(a, b, c, out);


input [7:0] a, b;
input c;
output [7:0] out;

assign out=(c)?b:a;

endmodule

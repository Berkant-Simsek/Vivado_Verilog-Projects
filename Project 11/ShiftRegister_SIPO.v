`timescale 1ns / 1ps
module fs(x,clk,q);

input x,clk;
output reg [0:3] q;

initial q = 4'b0000;

always @ (posedge clk)
begin
q <= q >> 1;
q[0] <= x;
end
endmodule

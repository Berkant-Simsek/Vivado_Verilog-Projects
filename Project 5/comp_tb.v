`timescale 1ns / 1ps

module comp_tb();

reg [7:0] x, y, z,q;
wire [7:0] sml,lrg;

comp UUT (.x(x), .y(y), .z(z), .q(q), .smallest(sml), .largest(lrg));

initial begin
x = 8'hA4;
y = 8'h2C;
z = 8'h6F;
q = 8'hF1;
#100;
end
endmodule

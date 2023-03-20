`timescale 1ns / 1ps
module full_adder_tb();

reg[3:0] a,b;
wire[4:0] sum;

ans UUT(a,b,sum);

initial begin
a=4'b0101;
b=4'b1001;
#100
a=4'b1110;
b=4'b1010;
end

endmodule

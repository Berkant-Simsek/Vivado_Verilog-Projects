`timescale 1ns / 1ps

module fs_tb();
reg x,clk;
wire[0:3] q;

fs UUT(x,clk,q);

initial begin
clk = 1'b1;
x = 1'b1;
forever
#100 clk = ~clk;
end

endmodule

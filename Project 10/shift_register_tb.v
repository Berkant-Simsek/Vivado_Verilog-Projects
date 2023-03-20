`timescale 1ns / 1ps

module shift_register_tb();

reg Clk;
reg [3:0]Parallel_In;
wire load1;

shift_register UUT(Clk, Parallel_In,load1);

initial begin
Clk = 1'b0;
Parallel_In = 4'hA;
end

always #10 Clk = ~Clk;

always #40 Parallel_In = ~Parallel_In;

endmodule

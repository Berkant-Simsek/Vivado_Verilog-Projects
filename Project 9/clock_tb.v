`timescale 1ns / 1ps

module pulse_generator_tb;

reg clock;
wire Fout;

pulse_generator UUT(.clk(clock), .out_clk(Fout));

initial begin
clock = 1;
forever
#1 clock = ~clock;
end

endmodule

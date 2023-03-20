`timescale 1ns / 1ps

module shift_register(Clk, Parallel_In,load1);
input Clk;
input [3:0]Parallel_In;
reg Serial_Out;
reg [3:0]tmp;
reg [3:0]tmp1=4'b0000;
output load1;

always @(posedge Clk) begin
tmp <= Parallel_In;
Serial_Out <= tmp[3];
tmp <= {tmp[2:0],1'b0};
end

always @(posedge Clk) begin
tmp1 = {tmp1[2:0], Serial_Out};
end

assign load1 = tmp1;

endmodule

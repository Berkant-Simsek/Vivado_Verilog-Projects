`timescale 1ns / 1ps

module d_latch_tb();

reg[3:0] d;
reg c;
wire[3:0] q;
wire[3:0] qn;

d_latch UUT(d,c,q,qn);

initial begin
c=1'b0;
d=4'hA;
#10;
c=1'b0;
d=4'h0;
#10;
c=1'b0;
d=4'hF;
#10;
c=1'b1;
d=4'h0;
#10;
c=1'b1;
d=4'h5;
#10;
c=1'b1;
d=4'h0;
#10;
c=1'b1;
d=4'hA;
#10;
c=1'b1;
d=4'h5;
#10;
c=1'b1;
d=4'h0;
#10;
end

endmodule

`timescale 1ns / 1ps

module multiplexer8tb();

reg [7:0] in1t, in2t, in3t, in4t, in5t, in6t, in7t, in8t;
wire[7:0] ot;  
reg xt,yt,zt;

multiplexer8 UUT(.in1(in1t),.in2(in2t),.in3(in3t),.in4(in4t),.in5(in5t),.in6(in6t),.in7(in7t),.in8(in8t),.x(xt),.y(yt),.z(zt),.o(ot));

initial begin
in1t = 8'hAA;
in2t = 8'hBA;
in3t = 8'hBB;
in4t = 8'hCB;
in5t = 8'hCC;
in6t = 8'hDC;
in7t = 8'hDD;
in8t = 8'hFF;

xt = 1'b1;
yt = 1'b0;
zt = 1'b0;
#100;
end
endmodule

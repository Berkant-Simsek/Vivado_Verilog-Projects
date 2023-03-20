`timescale 1ns / 1ps

module lab1(
    num1, num2, ans
    );
    
    input [7:0] num1;
    input [7:0] num2;
    output [1:0] ans;
    wire [1:0] a;
    wire [5:0] b;
    wire [3:0] c;
    
    assign a=num1[6:5];
    assign b=num2[3:0];
    assign c={3{a}};
    assign ans=c/b;
    
endmodule

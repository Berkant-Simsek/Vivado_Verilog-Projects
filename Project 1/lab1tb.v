`timescale 1ns / 1ps

module lab1tb(

    );
    
    reg [7:0] num1tb;
    reg [7:0] num2tb;
    
    wire [1:0] anstb;
    
    lab1 UUT (.num1(num1tb), .num2(num2tb), .ans(anstb));
    
    initial begin
    
    num1tb= 8'b11011011;
    num2tb= 8'b10101110;
    #100;
    
    end

endmodule

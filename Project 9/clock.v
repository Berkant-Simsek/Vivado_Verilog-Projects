module pulse_generator( clk ,out_clk  );

output reg out_clk ;

input clk ;
wire clk ;

reg [2:0] m = 3'd0;

initial ;

always @ (negedge (clk)) begin
 if (m==5)
  m <= 0;
 else  
  m <= m + 1;
  
  
  
end

always @ (m==0) begin
 if (m==1)
  out_clk <= 0;
 else
  out_clk <= 1;
    
end
  

endmodule

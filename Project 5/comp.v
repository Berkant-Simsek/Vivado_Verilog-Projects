`timescale 1ns / 1ps

module comp(input signed [7:0] x,y,z,q,
                 output reg signed [7:0] smallest, largest);
 always @ (x,y,z,q) begin
 
 begin
 if(q<x  && q<y && q<z)
 smallest = q;
 if(x<y && x<z && x<q)
 smallest = x;
 if(y<x && y<z && y<q)
  smallest = y;
 if(z<x && z<y && z<q)
   smallest = z; 
 end
 begin
 if(x>y && x>z && x>q)
 largest = x;
 if(y>x && y>z && y>q)
 largest = y;
 if(z>x && z>y && z>q)
 largest = z;
 if(q>x && q>y && q>z)
 largest = x;
end 
end
endmodule

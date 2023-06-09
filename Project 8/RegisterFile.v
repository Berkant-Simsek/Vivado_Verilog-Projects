`timescale 1ns / 1ps

module RegisterFile(
input[2:0] RS,
input[2:0] RT,
input[2:0] RD,
input[15:0] WriteData,
output[15:0] ReadRS,
output[15:0] ReadRT,
input RegWrite,
input Clock);

reg [15:0] Registers[7:0];

always @(posedge Clock)
begin  

if(RegWrite)
begin
Registers[RD] <= WriteData;
end

end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];
endmodule

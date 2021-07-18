`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 17:20:35
// Design Name: 
// Module Name: Design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Design(
    input clock,
    input Reset,
    output [3:0]q
    );
    reg [3:0] q;
    wire clk,res;
initial begin
q<=4'h0;
end
always@(posedge clock)begin
if(Reset)
q<=4'h0;
else
q<=q+4'h1;
end    
    
endmodule

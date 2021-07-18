`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 17:42:06
// Design Name: 
// Module Name: source
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


module source(
    input clock,
    input Down,
    input Reset,

    output [3:0]q
    );
    wire clk,down,res;
    reg [3:0]q;
    initial begin
    q<=4'h0;
    end
    
    always@(posedge clock)begin
    if(Reset) q<=4'h0; 
    else if(Down) q<=q-4'h1;
    else  q<=q+4'h1;
    end
endmodule

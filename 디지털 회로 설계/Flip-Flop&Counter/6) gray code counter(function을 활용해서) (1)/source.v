`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 18:03:14
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
    input Reset,
    input clock,
    output [3:0]q
    );
    wire res,clk;
    reg [3:0]q;
    initial begin
    q<=4'h0;
    end
    function [3:0]gray;
    input[3:0] in;
    case(in)
    4'b0000 : gray =4'b0001;
    4'b0001 : gray =4'b0011;
    4'b0011 : gray =4'b0010;
    4'b0010 : gray =4'b0110;
    4'b0110 : gray =4'b0111;
    4'b0111 : gray =4'b0101;
    4'b0101 : gray =4'b0100;
    4'b0100 : gray =4'b1100;
    4'b1100 : gray =4'b1101;
    4'b1101 : gray =4'b1111;
    4'b1111 : gray =4'b1110;
    4'b1110 : gray =4'b1010;
    4'b1010 : gray =4'b1011;
    4'b1011 : gray =4'b1001;
    4'b1001 : gray =4'b1000;
    4'b1000 : gray =4'b0000;
    
      endcase
    endfunction
    always@(posedge clock)begin
    if(Reset) q<= 4'h0;
    else q<=gray(q);
    end
endmodule

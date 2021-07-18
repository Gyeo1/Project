`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:19:52
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
    input D,
    output reg q
    );
    wire clc,d;
    initial begin
    q<=1'b0;
    end
    
    always@(posedge clock)begin
    q<=D;
    end
    
endmodule

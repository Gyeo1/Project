`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:47:25
// Design Name: 
// Module Name: Testbench
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


module Testbench(
    output reg clk,
    output reg s,
    output reg r
    );
    initial begin
    clk=0;
    r=0;
    s=0;
    #150
    r=1;
    #150
    r=0;
    s=1;
    #150
    r=1;
    s=1;
    
    end
    always#(50) begin
    clk=~clk;
    end
endmodule

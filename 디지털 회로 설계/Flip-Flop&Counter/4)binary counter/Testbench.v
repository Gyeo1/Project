`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 17:20:35
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
    output reg res
    );
    initial begin
    clk=0;
    res =0;
    #400
    res=1;
    #100
    res=0;
    #100
    res =1;
    #100
    res =0;
    end
    always#(25) begin
    clk=~clk;
    end
    
    
endmodule

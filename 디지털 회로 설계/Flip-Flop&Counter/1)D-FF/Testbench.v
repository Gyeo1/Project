`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:19:52
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
    output reg d
    );

    
    initial begin
    clk=0;
    d=0;
    end
    /*
    #150
    d=1;
    #150
    d=0;
    #150
    d=1;
    end
    */
    always#(70) begin
    d=~d;
    end
    always#(50) begin
    clk=~clk;
    end
    
endmodule

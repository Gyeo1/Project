`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:55:14
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
    output reg j,
    output reg k,
    output reg clk
    );
   
    
    initial begin
    j=0;
    k=0;
    clk=0;
    #150
    j=1;
    #150
    j=0;
    k=1;
    #150
    j=1;
    k=1;
    end
   
    always#(30)begin
    clk=~clk;
    end
    /*
    always#(50)begin
    j=~j;
    end
    always#(40)begin
    k=~k;
    end
    
    */
    
endmodule

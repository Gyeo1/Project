`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/28 16:14:31
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

    );
    reg clk,reset,bnum;
    wire smile_moore,smile_mealy;
    parameter clk_period = 10;
    moore_snail     moore_snail_uut(clk,reset,bnum,smile_moore);
    mealy_snail     mealy_snail_uut(clk,reset,bnum,smile_mealy);
    initial begin
    reset=1;
    #13
    reset =0;
    end
    
    always begin clk = 1; forever #(clk_period/2) clk = ~clk; end

    
    initial begin
 bnum = 0;   #3; 
 bnum = 0;   #clk_period; 
 bnum = 1;   #clk_period; 
 bnum = 0;   #clk_period; 
 bnum = 0;   #clk_period; 
 bnum = 0;   #clk_period; 
 bnum = 1;   #clk_period; 
 bnum = 1;   #clk_period; 
 bnum = 0;   #clk_period; 
 bnum = 1;   #clk_period;  // Smile 
 bnum = 1;   #clk_period; 
 bnum = 0;   #clk_period; 
 bnum = 1;   #clk_period;  // Smile 
 bnum = 0;  
    end
endmodule

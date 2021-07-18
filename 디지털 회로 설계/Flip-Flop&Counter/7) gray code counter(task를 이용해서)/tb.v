`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 20:48:08
// Design Name: 
// Module Name: tb
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


module tb(
    output reg clk,
    output reg res
    );
  
      initial begin
      clk=0;
      res =0;
      
      #100
      res=1;
      #100
      res=0;
      end
   always#(25) begin
   clk=~clk;
   end
endmodule

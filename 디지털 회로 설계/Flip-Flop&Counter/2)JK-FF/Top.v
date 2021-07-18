`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:55:14
// Design Name: 
// Module Name: Top
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


module Top(
output q
    );
    wire J,K,clock;
   
   
   
    Design U0(
      J,
      K,
      clock,
      q
      );
    
    Testbench U1(    
    J,   
    K,
    clock
    );
    
  
    
endmodule

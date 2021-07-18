`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:19:52
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

output Q
    );
    
   wire clock,D;
   
Design U0(
      clock,
      D,
      Q
      );
   Testbench U1(
   clock,
   D
   );
   

   
   
    
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:47:25
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
output Q,
output Q_bar
    );
 
  wire clock,Set,Reset;
   
   Design U0(
   clock,
   Set,
   Reset,
  
   Q,
   Q_bar
   );
   
   Testbench U1(
    clock,
    Set,
    Reset
   );
endmodule

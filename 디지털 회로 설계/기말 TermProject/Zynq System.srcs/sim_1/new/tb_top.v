`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/01 14:22:18
// Design Name: 
// Module Name: tb_top
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


module tb_top(

    );
    
     reg resetn;
       reg clk;
           
       LogicSignalOut U0(
         clk,
         resetn,
         logic_out,
         common_digit
       );
       
          
       initial begin
          resetn = 1;
          clk = 0;
          #1000 resetn = 0;
          #1000 resetn = 1;
       end
       
       always
          #100 clk = ~clk;   
endmodule
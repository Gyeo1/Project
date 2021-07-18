`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 17:42:06
// Design Name: 
// Module Name: Top_tb
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


module Top_tb(
output [3:0]Q
    );
    wire clock,Down,Reset;
    source U0(
    clock,
    Down,
    Reset,
    Q
    );
    
    Testbench U1(
    clock,
    Down,
    Reset
    );
    
endmodule

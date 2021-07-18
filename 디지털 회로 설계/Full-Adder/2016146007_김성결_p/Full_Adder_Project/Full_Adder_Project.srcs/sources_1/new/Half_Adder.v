`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/14 14:47:00
// Design Name: 
// Module Name: Half_Adder
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


module Half_Adder(
    input input1,
    input input2,
    output Sum,
    output Cout
    );
   xor(Sum,input1,input2);
   and(Cout,input1,input2);
endmodule

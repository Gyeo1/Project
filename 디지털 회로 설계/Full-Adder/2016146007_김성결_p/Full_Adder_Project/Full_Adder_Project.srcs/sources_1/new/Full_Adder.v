`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/14 15:24:24
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input input1,
    input input2,
    input Cin,
    output Sumout,
    output Cout
    );
   
   wire sum1,carry1,carry2;
   
   Half_Adder HA1(input1,input2,sum1,carry1);
   Half_Adder HA2(Cin,sum1,Sumout,carry2);
   //or(Cout,carry1,carry2);
   assign Cout = carry1|carry2;
endmodule

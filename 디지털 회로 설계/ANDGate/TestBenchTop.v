`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/06 14:56:06
// Design Name: 
// Module Name: TestBench_And
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


module TestBench_And(
    output output1
    );
    wire input1 ,input2;

    
     AndGate U0(
       input1,
       input2,
       output1
       );
        AndGate_t U1(
           input1,
           input2
          );
       
      
endmodule

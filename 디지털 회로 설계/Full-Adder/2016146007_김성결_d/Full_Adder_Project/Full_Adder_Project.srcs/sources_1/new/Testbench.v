`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/14 14:47:00
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
    output reg output1,
    output reg output2,
    output reg Cin
    );
    wire Sum,Cout;
   
    //시작은 0부터 시작 
    initial begin
    output1=0;
    output2 =0;
    Cin=0;
    #100;
    end
    
    
    always #(400) begin
    Cin =~Cin;
    end
    
    always #(200) begin
    output1 = ~output1;
    end
    
    always #(100) begin
    output2=~output2;
    end
   /* initial begin
    output2 =0;
    #200 output2=1;
    #200 output2=0;
    #200 output2=1;
    end
*/
endmodule

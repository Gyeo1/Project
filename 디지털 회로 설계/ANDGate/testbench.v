`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/06 14:56:06
// Design Name: 
// Module Name: AndGate_t
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


module AndGate_t(
    output reg output1,
    output reg output2
    );
    //reg output1 , output2;
    initial begin
     output1 = 0;
     #100 output1 =1;
     #100 output1 =0;
     #100 output1 = 1;
    end
     initial begin
        output2 = 0;
        #200 output2 =1;
        #200 output2 =0;
        #200 output2 = 1;
       end
endmodule

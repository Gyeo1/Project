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
   // behavior
    reg tempSum;
    reg tempCout;  
    always@ *//(모든 입력)//(input1,input2)
    begin
        if((input1 ==0)&&(input2==0))
       begin
        tempSum=0 ; tempCout = 0;//Sum=0 ; Cout = 0;
        end
        else if ((input1 ==1)&&(input2==0)) 
        begin
        tempSum=1 ; tempCout = 0;//Sum=1 ; Cout = 0;
        end
        else if ((input1 ==0)&&(input2==1)) 
        begin
        tempSum=1 ; tempCout = 0;// Sum=1 ; Cout = 0;
        end
        else if ((input1 ==1)&&(input2==1)) 
        begin
         tempSum=0 ; tempCout = 1;//Sum=1 ; Cout = 1;
        end
    end
    assign Sum = tempSum;
    assign Cout = tempCout;
endmodule

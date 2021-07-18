`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 20:48:08
// Design Name: 
// Module Name: source
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


module source(

    
    input clock,
    input Reset,
    output [3:0]q
    
    );
    wire clk,res;
     
    task Graycode;  
    input [3:0] Din;
    output [3:0] Dout;
    if(Reset)  
    Dout<=4'b0;
    else
    case(Din)
         4'b0000 : Dout =4'b0001;
         4'b0001 : Dout =4'b0011;
         4'b0011 : Dout =4'b0010;
         4'b0010 : Dout =4'b0110;   
         4'b0110 : Dout =4'b0111;    
         4'b0111 : Dout =4'b0101;
         4'b0101 : Dout =4'b0100;
         4'b0100 : Dout =4'b1100;
         4'b1100 : Dout =4'b1101;
         4'b1101 : Dout =4'b1111;
         4'b1111 : Dout =4'b1110;
         4'b1110 : Dout =4'b1010;
         4'b1010 : Dout =4'b1011;
         4'b1011 : Dout =4'b1001;
         4'b1001 : Dout =4'b1000;
         4'b1000 : Dout =4'b0000;     
endcase
    endtask

   reg [3:0]q;
    initial begin
    q<=4'b0;
    end
      
   always@(posedge clock)begin
   Graycode(q,q);
   end
   
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/28 16:48:43
// Design Name: 
// Module Name: mealy_snail
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


module mealy_snail(
    input clk,
    input reset,
    input bnum,
    output reg smile
    );
    reg [1:0] state,nextstate;
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    
    parameter delay = 1;
    
   always@(posedge reset, posedge clk) begin
   if(reset) #delay state<=S0;
   else state <= nextstate;
   end  
   
always@(*) begin
case(state)
    S0: begin if(bnum) nextstate<=S1;
              else      nextstate<=S0;
              #delay smile<=1'b0;
        end
    S1: begin if(bnum) #delay nextstate<=S2;
               else #delay  nextstate<=S0;
               #delay smile<=1'b0;
        end
        
    S2:begin if(bnum) #delay nextstate<=S2;
              else #delay nextstate<=S3;
              #delay smile<=1'b0;
        end
        
    S3:begin if(bnum) #delay smile<=1'b1;
             else   #delay  smile<=1'b0;
             if(bnum)   #delay nextstate<=S1;
             else   #delay nextstate<=S0;
             end
  
    default: begin 
        #delay  smile<=1'b0;
        #delay  nextstate<=S0;
        end
endcase
end
endmodule

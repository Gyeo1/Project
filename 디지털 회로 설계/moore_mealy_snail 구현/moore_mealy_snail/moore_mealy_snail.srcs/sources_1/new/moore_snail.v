`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/28 16:14:31
// Design Name: 
// Module Name: moore_snail
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


module moore_snail(
    input clk,
    input reset,
    input bnum,
    output reg smile
    );
    reg[2:0]state, nextstate;
    parameter S0= 3'b000;
    parameter S1= 3'b001;
    parameter S2= 3'b010;
    parameter S3= 3'b011;
    parameter S4= 3'b100;
    
    parameter delay = 1;
    
    always@(posedge reset, posedge clk) begin
    if(reset) # delay state<=S0;
    else #delay state<=nextstate;
    end
    
    always@(*)
    begin
        case (state)
        S0: if (bnum) #delay nextstate<=S1;
                       else    #delay nextstate<=S0;
        S1: if (bnum) #delay nextstate<=S2;
                       else    #delay nextstate<=S0;
        S2: if (bnum) #delay nextstate<=S2;
                       else    #delay nextstate<=S3;
        S3:if (bnum) #delay nextstate<=S4;
                      else    #delay nextstate<=S0;
        S4:if (bnum) #delay nextstate<=S2;
                      else    #delay nextstate<=S3;
        default: #delay nextstate<=S0;
        
        endcase
        end
    
    always@(*) begin
    if(state==S4)  smile <=1'b1;
    else     smile<=1'b0;
    
    end
    
    
    
    
    
    
    
    
    
endmodule

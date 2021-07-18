`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:47:25
// Design Name: 
// Module Name: Design
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


module Design(
    input clock,
    input Set,
    input Reset,
    output reg q,
    output reg q_bar
    );
    wire clk,s,r;
    initial begin
    q<=1'b0;
    q_bar <= 1'b1;
    end
    always@(posedge clock)begin
    case({Set,Reset})
    {1'b0, 1'b0}: begin q=q; q_bar =q_bar; end
    {1'b0, 1'b1}: begin q=0; q_bar =1;end
    {1'b1, 1'b0}: begin q=1; q_bar =0; end
    {1'b1, 1'b1}: begin q=1'bx; q_bar =1'bx; end    
    endcase
    
    end
endmodule

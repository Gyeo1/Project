`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 15:55:14
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
    input J,
    input K,
    input clock,
    output reg q
    );
    wire j,k,clock;
    
    initial begin
    q=1'b0;
    end
    
    always@(posedge clock)begin
    case({J,K})
    {1'b0 , 1'b0}: begin q<=q; end
    {1'b0 , 1'b1}: begin q<=0; end
    {1'b1 , 1'b0}: begin q<=1; end
    {1'b1 , 1'b1}: begin q<=~q; end
    endcase
    end
    
endmodule

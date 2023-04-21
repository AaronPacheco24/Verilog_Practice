`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 11:10:02 PM
// Design Name: 
// Module Name: simple_register
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


module simple_register
    #(parameter  N =4)
    (
    input clk,
    input [N-1:0] I,
    output [N-1:0] Q
    );
    reg [N-1:0] Q_reg,Q_next; 
    
    always @ (posedge clk)
    begin
        Q_reg<=Q_next;
    end
    
    always @ (I)
    begin
        Q_next = I;
    end
    
    assign A = Q_reg;
    
endmodule

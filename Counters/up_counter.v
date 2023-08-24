`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2023 05:32:55 PM
// Design Name: 
// Module Name: up_counter
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


module up_counter
    #(parameter BITS = 4)
    (
    input clk,
    input reset_n,
    output [BITS-1:0] Q
    );
    reg [BITS-1:0] Q_Reg,Q_Next;
    always @ (posedge clk, negedge reset_n)
    begin
        if (~reset_n)
            Q_Reg<= 'b0;
        else
            Q_Reg<=Q_Next;
    end
    always @ (Q_Reg)
    begin
        Q_Next = Q_Reg +1;
    end
    assign Q = Q_Reg;
endmodule

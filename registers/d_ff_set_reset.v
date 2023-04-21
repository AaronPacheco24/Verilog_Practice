`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 11:48:23 PM
// Design Name: 
// Module Name: d_ff_set_reset
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


module d_ff_set_reset(
    input clk,
    input D,
    input reset_n,
    input set_n,
    output Q
    );
    reg Q_reg, Q_next;
    always @ (negedge clk, negedge reset_n)
    begin
    Q_reg <=Q_reg;
    if (!reset_n)
        Q_reg<=1'b0;
    else
        Q_reg<= Q_next;
    end
    
    always @ (D, set_n)
    begin
    Q_next= Q_reg;
        if (!set_n)
            Q_next = 1'b1;
         else
            Q_next = D;
    end
    
endmodule

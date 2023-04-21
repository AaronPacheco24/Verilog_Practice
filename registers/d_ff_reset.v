`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 04:07:13 PM
// Design Name: 
// Module Name: d_ff_reset
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


module d_ff_reset(
    input clk,
    input d,
    input reset_n, // asynch
    input clear_b, //synch clear
    output  q
    );
    reg q_reg, q_next;
    always @ (negedge clk, negedge reset_n)
    begin
        if (!reset_n)
            q_reg <= 1'b0;
        else    
            q_reg<=q_next;
    end
    always @ (d,clear_b)
    begin
    q_next = q_reg;
        if(!clear_b)
            q_next =1'b0;
        else
            q_next = d;
    end
    assign q = q_reg;
    
    
endmodule

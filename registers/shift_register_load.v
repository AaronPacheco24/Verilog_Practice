`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 11:29:44 PM
// Design Name: 
// Module Name: shift_register_load
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


module shift_register_load
    #(parameter N=4)
    (
    input clk,
    input SI,
    input [N-1:0] I,
    input load,
    input reset_n,
    output [N-1:0]Q,
    output SO
    );
    reg [N-1:0] Q_reg, Q_next;
    
    always @ (posedge clk,negedge reset_n)
    begin
        if (!reset_n)
            Q_reg<=Q_next;
        else
            Q_reg<= Q_next;
    end
    
    //next state logic
    always @ (SI, Q_reg)
    begin
        if (load)
            Q_next = I;
         else
            Q_next = {SI, Q_reg[N-1:1]};
    end
    
    assign SO = Q_reg[0];
    assign Q = Q_reg;
    
endmodule

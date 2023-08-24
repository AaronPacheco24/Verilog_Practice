`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2023 05:28:14 PM
// Design Name: 
// Module Name: BCD_Counter
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


module BCD_Counter
    (
    input clk,
    input reset_n,
    input enable,
    output done,
    output [3:0] Q
    );
    reg [3:0] Q_reg, Q_next;
    always @ (posedge clk, negedge reset_n)
    begin
        if (~reset_n)
            Q_reg<= 'b0;
        else if (enable)
            Q_reg<= Q_next;
        else
            Q_reg<=Q_reg;
    end
    //next state
    assign done = Q_reg==9;
    always @ (*)
        Q_next = done?'b0:Q_reg+1;
     //output logic
     assign  Q = Q_reg;
endmodule

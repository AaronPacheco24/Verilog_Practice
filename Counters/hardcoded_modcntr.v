`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 08:23:41 PM
// Design Name: 
// Module Name: hardcoded_modcntr
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


module hardcoded_modcntr
    #(parameter BITS = 4) 
    (
    input clk,
    input reset_n,
    input enable,
    output [BITS - 1:0]Q
    );
    reg [BITS -1:0] Q_reg, Q_next;
    wire done;
    always @ (posedge clk, negedge reset_n)
    begin
        if (~reset_n)
            Q_reg = 'b0;
        else if(enable)
            Q_reg<=Q_next;
        else
            Q_reg = Q_reg;
    end
    //next state logic
    assign done = Q_reg ==7;
    always @ (*)
    begin
        Q_next = done? 'b0: Q_reg+1;
 
    end
    //output logic
    assign Q = Q_reg;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2023 11:00:21 AM
// Design Name: 
// Module Name: moore_011_detector
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


module moore_011_detector
    (
    input clk,
    input x,
    input reset_n,
    output y
    );
    reg [1:0] state_reg,state_next;
    //state reg
    always @ (posedge clk, negedge clk)
    begin
        if ( ~reset_n)
            state_reg <='b0;
         else
            state_reg <= state_next;
    end
    //next state logic
    always @ (*)
    begin
        state_next[1] = ( state_reg[1] ^ state_reg[0] ) & x;
        state_next[0] = (state_reg[1] & ~state_reg[0] ) | ~x;
    end
    //output logic
    assign y = state_reg[1] & state_reg[0];
endmodule
